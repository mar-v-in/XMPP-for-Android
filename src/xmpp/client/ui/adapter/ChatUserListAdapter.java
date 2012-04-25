package xmpp.client.ui.adapter;

import xmpp.client.R;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserList;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.ui.provider.ChatProvider;
import xmpp.client.ui.provider.ContactProvider;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.QuickContactBadge;

public class ChatUserListAdapter extends BaseAdapter {
	Context mContext;
	ContactProvider mContactProvider;
	ChatProvider mChatProvider;

	public ChatUserListAdapter(Context context,
			ContactProvider contactProvider, ChatProvider chatProvider) {
		mContext = context;
		mChatProvider = chatProvider;
		mContactProvider = contactProvider;
	}

	@Override
	public int getCount() {
		final UserList userlist = mChatProvider.getUsers();
		if (userlist == null) {
			return 0;
		}
		return userlist.size();
	}

	@Override
	public Object getItem(int position) {
		final UserList userlist = mChatProvider.getUsers();
		if (userlist == null) {
			return null;
		}
		return userlist.get(position);
	}

	@Override
	public long getItemId(int position) {
		final User u = (User) getItem(position);
		if (u != null) {
			return u.hashCode();
		}
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View view = convertView;
		if (view == null) {
			final LayoutInflater layoutInflater = (LayoutInflater) mContext
					.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
			view = layoutInflater.inflate(R.layout.chat_user, parent, false);
		}
		final User user = (User) getItem(position);
		if (user != null) {
			Log.d("xmpp...", user.getDisplayName());
			Log.d("xmpp...", mChatProvider.getUsers().size() + "");
			final Contact contact = mContactProvider.getContact(user);

			final QuickContactBadge q = (QuickContactBadge) view
					.findViewById(R.id.user_badge);
			q.setOnLongClickListener(new ChatUserListEntryLongClickListener(
					mContext, user));
			if (contact != null) {
				if (contact.getUserContact() != null) {
					q.assignContactUri(Uri.parse(contact.getUserContact()));
				}
				q.setImageBitmap(contact.getBitmap(mContext, true));
			} else {
				q.setImageBitmap(user.getBitmap(mContext, true));
			}
		}

		return view;
	}

}
