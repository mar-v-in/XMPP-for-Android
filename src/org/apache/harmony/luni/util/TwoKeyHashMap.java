/*
 *  Licensed to the Apache Software Foundation (ASF) under one or more
 *  contributor license agreements.  See the NOTICE file distributed with
 *  this work for additional information regarding copyright ownership.
 *  The ASF licenses this file to You under the Apache License, Version 2.0
 *  (the "License"); you may not use this file except in compliance with
 *  the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

package org.apache.harmony.luni.util;

import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/**
 * 
 * Reductive hash with two keys
 * 
 */
public class TwoKeyHashMap<E, K, V> extends AbstractMap<String, V> {

	/**
	 * Entry implementation for the TwoKeyHashMap class
	 * 
	 */
	public static class Entry<E, K, V> implements Map.Entry<String, V> {
		int hash;
		E key1;
		K key2;
		V value;
		Entry<E, K, V> next;

		public Entry(int hash, E key1, K key2, V value, Entry<E, K, V> next) {
			this.hash = hash;
			this.key1 = key1;
			this.key2 = key2;
			this.value = value;
			this.next = next;
		}

		@Override
		public boolean equals(Object obj) {
			if (!(obj instanceof Entry)) {
				return false;
			}

			final Entry<?, ?, ?> e = (Entry<?, ?, ?>) obj;
			final Object getKey1 = e.getKey1();
			final Object getKey2 = e.getKey2();
			final Object getValue = e.getValue();
			if ((key1 == null && getKey1 != null)
					|| (key2 == null && getKey2 != null)
					|| (value == null && getValue != null)
					|| !key1.equals(e.getKey1()) || !key2.equals(e.getKey2())
					|| !value.equals(getValue)) {
				return false;
			}
			return true;
		}

		@Override
		public String getKey() {
			return key1.toString() + key2.toString();
		}

		public E getKey1() {
			return key1;
		}

		public K getKey2() {
			return key2;
		}

		@Override
		public V getValue() {
			return value;
		}

		@Override
		public int hashCode() {
			final int hash1 = (key1 == null ? 0 : key1.hashCode());
			final int hash2 = (key2 == null ? 0 : key2.hashCode());
			return (hash1 + hash2) ^ (value == null ? 0 : value.hashCode());
		}

		@Override
		public V setValue(V value) {
			final V oldValue = this.value;
			this.value = value;
			return oldValue;
		}

	}

	// Iterates Entries inside the Map
	class EntryIteratorImpl implements Iterator<Map.Entry<String, V>> {
		private int startModCount;
		private boolean found;
		private int curr = -1;
		private int returned_index = -1;
		private Entry<E, K, V> curr_entry;
		private Entry<E, K, V> returned_entry;

		EntryIteratorImpl() {
			startModCount = modCount;
		}

		@Override
		public boolean hasNext() {
			if (found) {
				return true;
			}
			if (curr_entry != null) {
				curr_entry = curr_entry.next;
			}
			if (curr_entry == null) {
				for (curr++; curr < arr.length && arr[curr] == null; curr++) {
				}

				if (curr < arr.length) {
					curr_entry = arr[curr];
				}
			}
			return found = (curr_entry != null);
		}

		@Override
		public Map.Entry<String, V> next() {
			if (modCount != startModCount) {
				throw new ConcurrentModificationException();
			}
			if (!hasNext()) {
				throw new NoSuchElementException();
			}

			found = false;
			returned_index = curr;
			returned_entry = curr_entry;
			return curr_entry;
		}

		@Override
		public void remove() {
			if (returned_index == -1) {
				throw new IllegalStateException();
			}

			if (modCount != startModCount) {
				throw new ConcurrentModificationException();
			}

			Entry<E, K, V> p = null;
			Entry<E, K, V> e = arr[returned_index];
			while (e != returned_entry) {
				p = e;
				e = e.next;
			}
			if (p != null) {
				p.next = returned_entry.next;
			} else {
				arr[returned_index] = returned_entry.next;
			}
			size--;
			modCount++;
			startModCount++;
			returned_index = -1;
		}
	}

	class EntrySetImpl extends AbstractSet<Map.Entry<String, V>> {
		@Override
		public void clear() {
			TwoKeyHashMap.this.clear();
		}

		@Override
		public boolean contains(Object obj) {
			if (!(obj instanceof Entry)) {
				return false;
			}

			final Entry<?, ?, ?> entry = (Entry<?, ?, ?>) obj;
			final Entry<E, K, V> entry2 = findEntry(entry.getKey1(),
					entry.getKey2());
			if (entry2 == null) {
				return false;
			}
			final Object value = entry.getValue();
			final Object value2 = entry2.getValue();
			return value == null ? value2 == null : value.equals(value2);
		}

		@Override
		public boolean isEmpty() {
			return size == 0;
		}

		@Override
		public Iterator<Map.Entry<String, V>> iterator() {
			return createEntrySetIterator();
		}

		@Override
		public boolean remove(Object obj) {
			if (!(obj instanceof Entry)) {
				return false;
			}
			return removeEntry(((Entry) obj).getKey1(), ((Entry) obj).getKey2()) != null;
		}

		@Override
		public int size() {
			return size;
		}
	}

	class ValueIteratorImpl implements Iterator<V> {
		private final EntryIteratorImpl itr;

		ValueIteratorImpl() {
			super();
			this.itr = new EntryIteratorImpl();
		}

		@Override
		public boolean hasNext() {
			return itr.hasNext();
		}

		@Override
		public V next() {
			return itr.next().getValue();
		}

		@Override
		public void remove() {
			itr.remove();
		}
	}

	/**
	 * An instance is returned by the values() call.
	 */
	class ValuesCollectionImpl extends AbstractCollection<V> {
		@Override
		public void clear() {
			TwoKeyHashMap.this.clear();
		}

		@Override
		public boolean contains(Object obj) {
			return containsValue(obj);
		}

		@Override
		public boolean isEmpty() {
			return size == 0;
		}

		@Override
		public Iterator<V> iterator() {
			return createValueCollectionIterator();
		}

		@Override
		public int size() {
			return size;
		}
	}

	static final float DEFAULT_LOAD_FACTOR = 0.75f;
	static final int DEFAULT_INITIAL_SIZE = 16;

	private Set<Map.Entry<String, V>> entrySet;

	private Collection<V> values;
	private int size;

	private int arrSize;

	private int modCount;

	private Entry<E, K, V>[] arr;

	private float loadFactor;

	int threshold = 0;

	/**
	 * Constructs an empty HashMap
	 */
	public TwoKeyHashMap() {
		this(DEFAULT_INITIAL_SIZE, DEFAULT_LOAD_FACTOR);
	}

	/**
	 * Constructs an empty HashMap
	 * 
	 * @param initialCapacity
	 */
	public TwoKeyHashMap(int initialCapacity) {
		this(initialCapacity, DEFAULT_LOAD_FACTOR);
	}

	/**
	 * Constructs an empty HashMap
	 * 
	 * @param initialCapacity
	 * @param initialLoadFactor
	 */
	@SuppressWarnings("unchecked")
	public TwoKeyHashMap(int initialCapacity, float initialLoadFactor) {
		if (initialCapacity < 0) {
			throw new IllegalArgumentException("initialCapacity should be >= 0");
		}
		if (initialLoadFactor <= 0) {
			throw new IllegalArgumentException(
					"initialLoadFactor should be > 0");
		}
		loadFactor = initialLoadFactor;
		if (initialCapacity == Integer.MAX_VALUE) {
			initialCapacity--;
		}
		arrSize = initialCapacity > 0 ? initialCapacity : 1;
		threshold = (int) (arrSize * loadFactor);
		arr = new Entry[arrSize + 1];
	}

	/**
	 * Clears the map
	 */
	@Override
	public void clear() {
		modCount++;
		size = 0;
		Arrays.fill(arr, 0, arr.length, null);
	}

	/**
	 * Answers whether this map contains a mapping for the specified keys.
	 * 
	 * @param key1
	 *            first key
	 * @param key2
	 *            second key
	 * @return true if this map contains a mapping for the specified keys, and
	 *         false otherwise.
	 */
	public boolean containsKey(Object key1, Object key2) {
		return findEntry(key1, key2) != null;
	}

	/**
	 * Creates new entry
	 * 
	 * @param hashCode
	 * @param key1
	 * @param key2
	 * @param value
	 * @param next
	 * @return
	 */
	Entry<E, K, V> createEntry(int hashCode, E key1, K key2, V value,
			Entry<E, K, V> next) {
		return new Entry<E, K, V>(hashCode, key1, key2, value, next);
	}

	/**
	 * Creates entries iterator
	 * 
	 * @return
	 */
	Iterator<Map.Entry<String, V>> createEntrySetIterator() {
		return new EntryIteratorImpl();
	}

	/**
	 * Creates values iterator
	 * 
	 * @return
	 */
	Iterator<V> createValueCollectionIterator() {
		return new ValueIteratorImpl();
	}

	/**
	 * Returns a collection view of the mappings
	 */
	@Override
	public Set<Map.Entry<String, V>> entrySet() {
		if (entrySet == null) {
			entrySet = new EntrySetImpl();
		}
		return entrySet;
	}

	private final Entry<E, K, V> findEntry(Object key1, Object key2) {
		if (key1 == null && key2 == null) {
			return arr[arrSize];
		}

		final int hash = key1.hashCode() + key2.hashCode();
		final int index = (hash & 0x7fffffff) % arrSize;
		Entry<E, K, V> e = arr[index];

		while (e != null) {
			if (hash == e.hash && key1.equals(e.getKey1())
					&& key2.equals(e.getKey2())) {
				return e;
			}
			e = e.next;
		}
		return null;
	}

	/**
	 * Return the value by keys
	 * 
	 * @param key1
	 * @param key2
	 * @return
	 */
	public V get(Object key1, Object key2) {
		final Entry<E, K, V> e = findEntry(key1, key2);
		if (e != null) {
			return e.value;
		}
		return null;
	}

	/**
	 * Returns true if this map contains no key-value mappings
	 */
	@Override
	public boolean isEmpty() {
		return size == 0;
	}

	/**
	 * Associates the specified value with the specified keys in this map
	 * 
	 * @param key1
	 * @param key2
	 * @param value
	 * @return
	 */
	public V put(E key1, K key2, V value) {
		if (key1 == null && key2 == null) {
			final int index = arrSize;
			if (arr[index] == null) {
				arr[index] = createEntry(0, null, null, value, null);
				size++;
				modCount++;
				return null;
			} else {
				final V oldValue = arr[index].value;
				arr[index].value = value;
				return oldValue;
			}
		}

		final int hash = key1.hashCode() + key2.hashCode();
		final int index = (hash & 0x7fffffff) % arrSize;
		Entry<E, K, V> e = arr[index];

		while (e != null) {
			if (hash == e.hash && key1.equals(e.getKey1())
					&& key2.equals(e.getKey2())) {
				final V oldValue = e.value;
				e.value = value;
				return oldValue;
			}
			e = e.next;
		}

		arr[index] = createEntry(hash, key1, key2, value, arr[index]);
		size++;
		modCount++;

		if (size > threshold) {
			rehash();
		}
		return null;
	}

	/**
	 * Rehash the map
	 * 
	 */
	@SuppressWarnings("unchecked")
	void rehash() {
		int newArrSize = (arrSize + 1) * 2 + 1;
		if (newArrSize < 0) {
			newArrSize = Integer.MAX_VALUE - 1;
		}
		final Entry<E, K, V>[] newArr = new Entry[newArrSize + 1];

		for (int i = 0; i < arr.length - 1; i++) {
			Entry<E, K, V> entry = arr[i];
			while (entry != null) {
				final Entry<E, K, V> next = entry.next;

				final int newIndex = (entry.hash & 0x7fffffff) % newArrSize;
				entry.next = newArr[newIndex];
				newArr[newIndex] = entry;

				entry = next;
			}
		}
		newArr[newArrSize] = arr[arrSize]; // move null entry
		arrSize = newArrSize;

		// The maximum array size is reached, increased loadFactor
		// will keep array from further growing
		if (arrSize == Integer.MAX_VALUE) {
			loadFactor *= 10;
		}
		threshold = (int) (arrSize * loadFactor);
		arr = newArr;
	}

	/**
	 * Removes the mapping for the keys
	 * 
	 * @param key1
	 * @param key2
	 * @return
	 */
	public V remove(Object key1, Object key2) {
		final Entry<E, K, V> e = removeEntry(key1, key2);
		return null != e ? e.value : null;
	}

	// Removes entry
	private final Entry<E, K, V> removeEntry(Object key1, Object key2) {
		if (key1 == null && key2 == null) {
			final int index = arrSize;
			if (arr[index] != null) {
				final Entry<E, K, V> ret = arr[index];
				arr[index] = null;
				size--;
				modCount++;
				return ret;
			}
			return null;
		}

		final int hash = key1.hashCode() + key2.hashCode();
		final int index = (hash & 0x7fffffff) % arrSize;

		Entry<E, K, V> e = arr[index];
		Entry<E, K, V> prev = e;
		while (e != null) {
			if (hash == e.hash && key1.equals(e.getKey1())
					&& key2.equals(e.getKey2())) {
				if (prev == e) {
					arr[index] = e.next;
				} else {
					prev.next = e.next;
				}
				size--;
				modCount++;
				return e;
			}

			prev = e;
			e = e.next;
		}
		return null;
	}

	/**
	 * Returns the number of mappings
	 */
	@Override
	public int size() {
		return size;
	}

	/**
	 * Returns a collection view of the values
	 */
	@Override
	public Collection<V> values() {
		if (values == null) {
			values = new ValuesCollectionImpl();
		}
		return values;
	}
}
