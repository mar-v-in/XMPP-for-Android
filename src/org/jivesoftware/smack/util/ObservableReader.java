/**
 * $RCSfile$
 * $Revision: 7071 $
 * $Date: 2007-02-11 18:59:05 -0600 (Sun, 11 Feb 2007) $
 *
 * Copyright 2003-2007 Jive Software.
 *
 * All rights reserved. Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.jivesoftware.smack.util;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

/**
 * An ObservableReader is a wrapper on a Reader that notifies to its listeners
 * when reading character streams.
 * 
 * @author Gaston Dombiak
 */
public class ObservableReader extends Reader {

	Reader wrappedReader = null;
	List<ReaderListener> listeners = new ArrayList<ReaderListener>();

	public ObservableReader(Reader wrappedReader) {
		this.wrappedReader = wrappedReader;
	}

	/**
	 * Adds a reader listener to this reader that will be notified when new
	 * strings are read.
	 * 
	 * @param readerListener
	 *            a reader listener.
	 */
	public void addReaderListener(ReaderListener readerListener) {
		if (readerListener == null) {
			return;
		}
		synchronized (listeners) {
			if (!listeners.contains(readerListener)) {
				listeners.add(readerListener);
			}
		}
	}

	@Override
	public void close() throws IOException {
		wrappedReader.close();
	}

	@Override
	public void mark(int readAheadLimit) throws IOException {
		wrappedReader.mark(readAheadLimit);
	}

	@Override
	public boolean markSupported() {
		return wrappedReader.markSupported();
	}

	@Override
	public int read() throws IOException {
		return wrappedReader.read();
	}

	@Override
	public int read(char cbuf[]) throws IOException {
		return wrappedReader.read(cbuf);
	}

	@Override
	public int read(char[] cbuf, int off, int len) throws IOException {
		final int count = wrappedReader.read(cbuf, off, len);
		if (count > 0) {
			final String str = new String(cbuf, off, count);
			// Notify that a new string has been read
			ReaderListener[] readerListeners = null;
			synchronized (listeners) {
				readerListeners = new ReaderListener[listeners.size()];
				listeners.toArray(readerListeners);
			}
			for (final ReaderListener readerListener : readerListeners) {
				readerListener.read(str);
			}
		}
		return count;
	}

	@Override
	public boolean ready() throws IOException {
		return wrappedReader.ready();
	}

	/**
	 * Removes a reader listener from this reader.
	 * 
	 * @param readerListener
	 *            a reader listener.
	 */
	public void removeReaderListener(ReaderListener readerListener) {
		synchronized (listeners) {
			listeners.remove(readerListener);
		}
	}

	@Override
	public void reset() throws IOException {
		wrappedReader.reset();
	}

	@Override
	public long skip(long n) throws IOException {
		return wrappedReader.skip(n);
	}

}
