/* Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 * 
 *     http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.harmony.luni.platform;

import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/**
 * Environment
 */
public class Environment {

	public static class EnvironmentMap extends HashMap<String, String> {

		private static final long serialVersionUID = 1L;

		public EnvironmentMap() {
			super();
		}

		public EnvironmentMap(Map<String, String> map) {
			super(map);
		}

		private void checkParam(Object o) {
			if (null == o) {
				throw new NullPointerException();
			}
			if (!(o instanceof String)) {
				throw new ClassCastException();
			}
		}

		@Override
		public boolean containsKey(Object key) {
			checkParam(key);
			return super.containsKey(key);
		}

		@Override
		public boolean containsValue(Object value) {
			checkParam(value);
			return super.containsValue(value);
		}

		@Override
		public String get(Object key) {
			checkParam(key);
			return super.get(key);
		}

		@Override
		public String put(String key, String value) {
			checkParam(key);
			checkParam(value);
			return super.put(key, value);
		}

		@Override
		public String remove(Object key) {
			checkParam(key);
			return super.remove(key);
		}
	}

	private static Map<String, String> envMap = null;

	/**
	 * Returns a Map of the current environment variables, containing key and
	 * value pairs.
	 * 
	 * @return a Map containing the environment variables and their values
	 */
	public static Map<String, String> getenv() {
		if (null == envMap) {
			final HashMap<String, String> newEnvMap = new EnvironmentMap();
			final byte[] bytes = getEnvBytes();
			if (bytes == null) {
				throw new Error("Failed to get environment variables.");
			}
			final String[] envStrings = new String(bytes).split("\0");
			for (final String envString : envStrings) {
				// some "hidden" variable names on Windows start with "="
				// so we search "=" from the second character
				final int separator = envString.indexOf("=", 1);
				newEnvMap.put(envString.substring(0, separator),
						envString.substring(separator + 1));
			}
			envMap = Collections.unmodifiableMap(newEnvMap);
		}
		return envMap;
	}

	/**
	 * Returns a String containing the value of the specified name environment
	 * variable
	 * 
	 * @param name
	 *            - the environment variable to get the value of
	 * 
	 * @return the value of the environment variable specified
	 */
	public static String getenv(String name) {
		try {
			final byte[] env = getEnvByName(name.getBytes("UTF-8"));
			if (null == env) {
				return null;
			}
			return new String(env, "UTF-8");
		} catch (final UnsupportedEncodingException e) {
			// UTF-8 should always be supported so this should not be reached
			throw new AssertionError(e);
		}
	}

	private static native byte[] getEnvByName(byte[] name);

	private static native byte[] getEnvBytes();
}
