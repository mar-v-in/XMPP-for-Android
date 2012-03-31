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

package org.jivesoftware.smackx.muc;

/**
 * Default implementation of the UserStatusListener interface.
 * <p>
 * 
 * This class does not provide any behavior by default. It just avoids having to
 * implement all the inteface methods if the user is only interested in
 * implementing some of the methods.
 * 
 * @author Gaston Dombiak
 */
public class DefaultUserStatusListener implements UserStatusListener {

	@Override
	public void adminGranted() {
	}

	@Override
	public void adminRevoked() {
	}

	@Override
	public void banned(String actor, String reason) {
	}

	@Override
	public void kicked(String actor, String reason) {
	}

	@Override
	public void membershipGranted() {
	}

	@Override
	public void membershipRevoked() {
	}

	@Override
	public void moderatorGranted() {
	}

	@Override
	public void moderatorRevoked() {
	}

	@Override
	public void ownershipGranted() {
	}

	@Override
	public void ownershipRevoked() {
	}

	@Override
	public void voiceGranted() {
	}

	@Override
	public void voiceRevoked() {
	}

}
