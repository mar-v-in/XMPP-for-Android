package xmpp.client.service.user;

import java.util.Collection;

import org.jivesoftware.smack.Roster;
import org.jivesoftware.smack.RosterEntry;
import org.jivesoftware.smack.RosterListener;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.util.StringUtils;

import xmpp.client.service.MainService;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.service.user.contact.ContactList;
import xmpp.client.service.user.group.GroupList;
import android.util.Log;

public class UserService implements RosterListener, UserServiceProvider {
	private static final String TAG = UserService.class.getName();
	private UserList mUserList;
	private ContactList mContactList;
	private Roster mRoster;
	private final MainService service;
	private User mUserMe;

	public UserService(MainService service, User userMe) {
		this.service = service;
		mUserMe = userMe;
		mRoster = service.getConnection().getRoster();
		mRoster.addRosterListener(this);
		mUserList = new UserList();
		mContactList = new ContactList();
		buildUserList();
	}

	public User addUser(String uid) {
		return addUser(uid, uid);
	}

	public User addUser(String uid, String name) {
		return addUser(uid, name, new String[] { getGroups().get(0) });
	}

	public User addUser(String uid, String name, String group) {
		return addUser(uid, name, new String[] { group });
	}

	public User addUser(String uid, String name, String[] groups) {
		try {
			mRoster.createEntry(uid, name, groups);
		} catch (final Exception e) {
			Log.i(TAG, "addUser", e);
			return null;
		}
		return getUser(uid, true);
	}

	public User addUser(String uid, String[] groups) {
		return addUser(uid, uid, groups);
	}

	public void buildUserList() {
		final Collection<RosterEntry> roster = mRoster.getEntries();
		for (final RosterEntry rosterEntry : roster) {
			getUser(rosterEntry.getUser(), true);
		}
		transportCheck();
	}

	public void destroy() {
		mUserList.clear();
		mUserList = null;
		mContactList.clear();
		mContactList = null;
		mRoster.removeRosterListener(this);
		mRoster = null;
		mUserMe = null;
	}

	@Override
	public void entriesAdded(Collection<String> addresses) {
		for (final String uid : addresses) {
			getUser(uid, true);
		}
	}

	@Override
	public void entriesDeleted(Collection<String> addresses) {
		for (final String uid : addresses) {
			final User user = getUser(uid, false);
			mUserList.remove(user);
			mContactList.removeUser(uid);
			service.sendRosterDeleted(uid);
		}
	}

	@Override
	public void entriesUpdated(Collection<String> addresses) {
		for (final String uid : addresses) {
			final User user = getUser(uid, true);
			final RosterEntry re = mRoster.getEntry(uid);
			user.setUserName(re.getName());
			user.setGroups(new GroupList(re.getGroups()));
			service.sendRosterUpdated(user);
		}
	}

	public Contact getContact(String uid, boolean addIfNotExists) {
		return getContact(getUser(uid, addIfNotExists), addIfNotExists);
	}

	public Contact getContact(User user, boolean addIfNotExists) {
		if (!mContactList.contains(user)) {
			return new Contact(user);
		}
		return mContactList.get(user);
	}

	public ContactList getContactList() {
		return new ContactList(mUserList);
	}

	GroupList getGroups() {
		return new GroupList(mRoster.getGroups());
	}

	public User getUser(String uid, boolean addIfNotExists) {
		return getUser(uid, addIfNotExists, true);
	}

	public User getUser(String uid, boolean addIfNotExists,
			boolean setupIfNotExists) {
		if (mUserMe.getUserLogin().equalsIgnoreCase(
				StringUtils.parseBareAddress(uid))) {
			return mUserMe;
		}
		User u = getUserByFullUserLogin(uid);
		if (u != null) {
			return u;
		}
		u = getUserByLogin(uid);
		if (u != null) {
			return u;
		}
		if (setupIfNotExists) {
			return setupUser(uid, addIfNotExists);
		} else {
			return null;
		}
	}

	public User getUserByFullUserLogin(String fullUserLogin) {
		for (int i = 0; i < mUserList.size(); i++) {
			final User user = mUserList.get(i);
			if (user.getFullUserLogin().equalsIgnoreCase(fullUserLogin)) {
				return user;
			}
		}
		return null;
	}

	private User getUserByLogin(String userLogin) {
		for (int i = 0; i < mUserList.size(); i++) {
			final User user = mUserList.get(i);
			if (user.getUserLogin().equalsIgnoreCase(
					StringUtils.parseBareAddress(userLogin))) {
				return user;
			}
		}
		return null;
	}

	UserList getUserList() {
		return mUserList;
	}

	public User getUserMe() {
		return mUserMe;
	}

	@Override
	public UserService getUserService() {
		return this;
	}

	@Override
	public void presenceChanged(Presence presence) {
		final User user = getUser(presence.getFrom(), true, false);
		if (user == null) {
			return;
		}
		user.setUserState(new UserState(presence));
		user.setAvatar(service.getAvatarService().getAvatar(user));
		user.setRessource(StringUtils.parseResource(presence.getFrom()));
		service.sendRosterUpdated(user);
	}

	public User setupUser(String uid, boolean addIfNotExists) {
		final RosterEntry re = mRoster.getEntry(StringUtils
				.parseBareAddress(uid));
		if (re != null) {
			final User user = new User(re, mRoster.getPresence(re.getUser()));
			user.setAvatar(service.getAvatarService().getAvatar(user));
			if (addIfNotExists) {
				setupUser(user);
			}
			return user;
		} else {
			Log.w(TAG, "creating Invalid user for: " + uid);
			final User u = new User();
			u.setUserLogin(uid);
			u.setUserState(UserState.Invalid);
			return u;
		}
	}

	public User setupUser(User user) {
		final User user2 = getUserByFullUserLogin(user.getFullUserLogin());
		if (user2 == null) {
			mUserList.add(user);
			mContactList.add(user);
			service.sendRosterAdded(user);
			return user;
		} else {
			user2.setUserState(user.getUserState());
			service.sendRosterUpdated(user2);
			return user2;
		}
	}

	public void setUserMe(User user) {
		mUserMe = user;
	}

	void transportCheck() {
		final UserList transportList = new UserList();
		for (final User user : mUserList) {
			if (user.getTransportState() == User.TSTATE_IS_TRANSPORT) {
				transportList.add(user);
			}
		}

		for (final User user : mUserList) {
			if (!transportList.contains(user)) {
				for (final User transport : transportList) {
					user.transportCheck(transport);
				}
			}
		}
	}

	public void updateUser(User user) {
		final User u = getUser(user.getUserLogin(), true);
		u.setUserContact(user.getUserContact());
	}
}
