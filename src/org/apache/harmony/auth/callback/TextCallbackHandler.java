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

package org.apache.harmony.auth.callback;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;

import javax.security.auth.callback.Callback;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.callback.PasswordCallback;
import javax.security.auth.callback.UnsupportedCallbackException;

import org.apache.harmony.javax.security.auth.callback.NameCallback;

public class TextCallbackHandler implements CallbackHandler {

	private final InputStream in = System.in;
	private final PrintStream out = System.out;

	@Override
	public void handle(Callback[] callbacks) throws IOException,
			UnsupportedCallbackException {
		for (final Callback callback : callbacks) {
			if (callback instanceof NameCallback) {
				final NameCallback nameCallback = (NameCallback) callback;
				out.print(nameCallback.getPrompt());
				final BufferedReader br = new BufferedReader(
						new InputStreamReader(in));
				nameCallback.setName(br.readLine());
			} else if (callback instanceof PasswordCallback) {
				final PasswordCallback passwordCallback = (PasswordCallback) callback;
				out.print(passwordCallback.getPrompt());
				// haven't implemented echo off function
				final BufferedReader br = new BufferedReader(
						new InputStreamReader(in));
				passwordCallback.setPassword(br.readLine().toCharArray());
			} else {
				throw new UnsupportedCallbackException(callback);
			}
		}
	}
}
