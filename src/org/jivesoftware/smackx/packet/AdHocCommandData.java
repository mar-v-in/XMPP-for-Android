/**
 * $RCSfile$
 * $Revision: $
 * $Date: $
 *
 * Copyright 2005-2008 Jive Software.
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

package org.jivesoftware.smackx.packet;

import java.util.ArrayList;
import java.util.List;

import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.PacketExtension;
import org.jivesoftware.smackx.commands.AdHocCommand;
import org.jivesoftware.smackx.commands.AdHocCommand.Action;
import org.jivesoftware.smackx.commands.AdHocCommand.SpecificErrorCondition;
import org.jivesoftware.smackx.commands.AdHocCommandNote;

/**
 * Represents the state and the request of the execution of an adhoc command.
 * 
 * @author Gabriel Guardincerri
 */
public class AdHocCommandData extends IQ {

	public static class SpecificError implements PacketExtension {

		public static final String namespace = "http://jabber.org/protocol/commands";

		public SpecificErrorCondition condition;

		public SpecificError(SpecificErrorCondition condition) {
			this.condition = condition;
		}

		public SpecificErrorCondition getCondition() {
			return condition;
		}

		@Override
		public String getElementName() {
			return condition.toString();
		}

		@Override
		public String getNamespace() {
			return namespace;
		}

		@Override
		public String toXML() {
			final StringBuilder buf = new StringBuilder();
			buf.append("<").append(getElementName());
			buf.append(" xmlns=\"").append(getNamespace()).append("\"/>");
			return buf.toString();
		}
	}

	/* JID of the command host */
	private String id;

	/* Command name */
	private String name;

	/* Command identifier */
	private String node;

	/* Unique ID of the execution */
	private String sessionID;

	private final List<AdHocCommandNote> notes = new ArrayList<AdHocCommandNote>();

	private DataForm form;

	/* Action request to be executed */
	private AdHocCommand.Action action;

	/* Current execution status */
	private AdHocCommand.Status status;

	private final ArrayList<AdHocCommand.Action> actions = new ArrayList<AdHocCommand.Action>();

	private AdHocCommand.Action executeAction;

	private String lang;

	public AdHocCommandData() {
	}

	public void addAction(Action action) {
		actions.add(action);
	}

	public void addNote(AdHocCommandNote note) {
		notes.add(note);
	}

	/**
	 * Returns the action to execute. The action is set only on a request.
	 * 
	 * @return the action to execute.
	 */
	public AdHocCommand.Action getAction() {
		return action;
	}

	public List<Action> getActions() {
		return actions;
	}

	@Override
	public String getChildElementXML() {
		final StringBuilder buf = new StringBuilder();
		buf.append("<command xmlns=\"http://jabber.org/protocol/commands\"");
		buf.append(" node=\"").append(node).append("\"");
		if (sessionID != null) {
			if (!sessionID.equals("")) {
				buf.append(" sessionid=\"").append(sessionID).append("\"");
			}
		}
		if (status != null) {
			buf.append(" status=\"").append(status).append("\"");
		}
		if (action != null) {
			buf.append(" action=\"").append(action).append("\"");
		}

		if (lang != null) {
			if (!lang.equals("")) {
				buf.append(" lang=\"").append(lang).append("\"");
			}
		}
		buf.append(">");

		if (getType() == Type.RESULT) {
			buf.append("<actions");

			if (executeAction != null) {
				buf.append(" execute=\"").append(executeAction).append("\"");
			}
			if (actions.size() == 0) {
				buf.append("/>");
			} else {
				buf.append(">");

				for (final AdHocCommand.Action action : actions) {
					buf.append("<").append(action).append("/>");
				}
				buf.append("</actions>");
			}
		}

		if (form != null) {
			buf.append(form.toXML());
		}

		for (final AdHocCommandNote note : notes) {
			buf.append("<note type=\"").append(note.getType().toString())
					.append("\">");
			buf.append(note.getValue());
			buf.append("</note>");
		}

		// TODO ERRORS
		// if (getError() != null) {
		// buf.append(getError().toXML());
		// }

		buf.append("</command>");
		return buf.toString();
	}

	public Action getExecuteAction() {
		return executeAction;
	}

	/**
	 * Returns the form of the command.
	 * 
	 * @return the data form associated with the command.
	 */
	public DataForm getForm() {
		return form;
	}

	/**
	 * Returns the JID of the command host.
	 * 
	 * @return the JID of the command host.
	 */
	public String getId() {
		return id;
	}

	/**
	 * Returns the human name of the command
	 * 
	 * @return the name of the command.
	 */
	public String getName() {
		return name;
	}

	/**
	 * Returns the identifier of the command
	 * 
	 * @return the node.
	 */
	public String getNode() {
		return node;
	}

	/**
	 * Returns the list of notes that the command has.
	 * 
	 * @return the notes.
	 */
	public List<AdHocCommandNote> getNotes() {
		return notes;
	}

	public String getSessionID() {
		return sessionID;
	}

	/**
	 * Returns the status of the execution.
	 * 
	 * @return the status.
	 */
	public AdHocCommand.Status getStatus() {
		return status;
	}

	public void remveNote(AdHocCommandNote note) {
		notes.remove(note);
	}

	public void setAction(AdHocCommand.Action action) {
		this.action = action;
	}

	public void setExecuteAction(Action executeAction) {
		this.executeAction = executeAction;
	}

	public void setForm(DataForm form) {
		this.form = form;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setNode(String node) {
		this.node = node;
	}

	public void setSessionID(String sessionID) {
		this.sessionID = sessionID;
	}

	public void setStatus(AdHocCommand.Status status) {
		this.status = status;
	}
}