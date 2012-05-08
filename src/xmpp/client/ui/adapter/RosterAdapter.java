package xmpp.client.ui.adapter;

import xmpp.client.Constants;
import xmpp.client.R;
import xmpp.client.service.chat.multi.MultiChatInfo;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserState;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.service.user.group.GroupList;
import xmpp.client.ui.provider.ConferenceProvider;
import xmpp.client.ui.provider.ContactProvider;
import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.QuickContactBadge;
import android.widget.TextView;

public class RosterAdapter extends BaseAdapter implements Constants {
	@SuppressWarnings("unused")
	private static final String TAG = RosterAdapter.class.getName();
	private final Context mContext;
	private CharSequence activeGroup;
	private final ContactProvider mContactProvider;
	private final ConferenceProvider mConferenceProvider;

	public RosterAdapter(Context context, ContactProvider contactProvider,
			ConferenceProvider conferenceProvider) {
		mContactProvider = contactProvider;
		mConferenceProvider = conferenceProvider;
		mContext = context;
		activeGroup = GROUP_STARTUP;
	}

	public void addRosterEntry(User re) {
		mContactProvider.add(re);
		notifyDataSetChanged();
	}

	public void delRosterEntry(String address) {
		mContactProvider.remove(address);
		notifyDataSetChanged();
	}

	@Override
	public int getCount() {
		if (activeGroup.equals(GROUP_ALL_CONTACTS)) {
			return mContactProvider.userSize() + 1;
		} else if (activeGroup.equals(GROUP_CONFERENCES)) {
			return mConferenceProvider.size() + 1;
		} else if (activeGroup.equals(GROUP_ONLINE_CONTACTS)) {
			return mContactProvider.userOnlineSize() + 1;
		} else if (activeGroup.equals(GROUP_STARTUP)) {
			return 1;
		} else {
			return mContactProvider.userGroupSize(activeGroup) + 1;
		}
	}

	public GroupList getGroups() {
		return mContactProvider.getGroups();
	}

	@Override
	public Object getItem(int position) {
		if (position == 0) {
			return mContactProvider.getMeContact();
		}
		return getRosterItem(position - 1);
	}

	@Override
	public long getItemId(int position) {
		return getItem(position).hashCode();
	}

	private View getNormalItemView(int position, View view) {
		final TextView name = (TextView) view.findViewById(R.id.name_text);
		final TextView status = (TextView) view.findViewById(R.id.status_text);
		name.setTextColor(Color.BLACK);
		status.setTextColor(Color.BLACK);
		view.setBackgroundResource(R.drawable.listitem_default);
		view.findViewById(R.id.loading_spinner).setVisibility(View.GONE);

		final Contact contact = (Contact) getItem(position);

		final TextView unread = (TextView) view.findViewById(R.id.unread_text);
		if (contact.getUnreadMessages() == 0) {
			unread.setVisibility(View.GONE);
		} else {
			unread.setVisibility(View.VISIBLE);
			unread.setText("" + contact.getUnreadMessages());
		}

		final LinearLayout iconContainer = (LinearLayout) view
				.findViewById(R.id.icon_container);
		iconContainer.removeAllViews();
		for (final User user : contact.getUsers()) {
			if (user.isInvisible() || !user.getUserState().isOnline()) {
				continue;
			}
			final ImageView iview = new ImageView(mContext);
			switch (user.getTransportType()) {
			case User.TRANSPORT_ICQ:
				iview.setImageResource(R.drawable.ic_state_icq);
				break;
			case User.TRANSPORT_MSN:
				iview.setImageResource(R.drawable.ic_state_msn);
				break;
			default:
				iview.setImageResource(R.drawable.ic_state_xmpp);
				break;
			}
			iview.setColorFilter(Color.parseColor(mContext.getString(user
					.getUserState().getStatusColorRessourceID())));
			iconContainer.addView(iview);
		}

		return view;
	}

	public Contact getRosterEntry(String address) {
		return mContactProvider.getContact(address);
	}

	public Object getRosterItem(int position) {
		if (activeGroup.equals(GROUP_ALL_CONTACTS)
				|| activeGroup.equals(GROUP_ONLINE_CONTACTS)) {
			return mContactProvider.getContact(position);
		} else if (activeGroup.equals(GROUP_CONFERENCES)) {
			return mConferenceProvider.getList().get(position);
		} else {
			return mContactProvider.getContactInGroup(activeGroup, position);
		}
	}

	private View getSelfItemView(int position, View view) {
		final TextView name = (TextView) view.findViewById(R.id.name_text);
		final TextView status = (TextView) view.findViewById(R.id.status_text);
		name.setTextColor(Color.WHITE);
		status.setTextColor(Color.WHITE);

		final Contact contact = (Contact) getItem(position);
		switch (contact.getUserState().getStatus()) {
		case UserState.STATUS_AVAILABLE:
			view.setBackgroundResource(R.drawable.rosteritem_highlight_online);
			break;
		case UserState.STATUS_AWAY:
		case UserState.STATUS_IDLE:
			view.setBackgroundResource(R.drawable.rosteritem_highlight_away);
			break;
		case UserState.STATUS_OFFLINE:
			view.setBackgroundResource(R.drawable.rosteritem_highlight_offline);
			break;
		case UserState.STATUS_DO_NOT_DISTURB:
			view.setBackgroundResource(R.drawable.rosteritem_highlight_donotdisturb);
			break;
		}

		final TextView unread = (TextView) view.findViewById(R.id.unread_text);
		unread.setVisibility(View.GONE);

		final LinearLayout iconContainer = (LinearLayout) view
				.findViewById(R.id.icon_container);
		iconContainer.removeAllViews();

		if (contact.getUserState().isTemporaryStatus()) {
			view.findViewById(R.id.loading_spinner).setVisibility(View.VISIBLE);
		} else {
			view.findViewById(R.id.loading_spinner).setVisibility(View.GONE);
		}

		return view;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View rosteritem;

		if (convertView == null) {
			final LayoutInflater layoutInflater = (LayoutInflater) mContext
					.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
			rosteritem = layoutInflater.inflate(R.layout.roster_item, parent,
					false);
		} else {
			rosteritem = convertView;
		}

		if (activeGroup == GROUP_CONFERENCES && position != 0) {
			handleConference(position, rosteritem);
		} else {
			handleContact(position, rosteritem);
		}

		return rosteritem;
	}

	private void handleConference(int position, View view) {
		final MultiChatInfo mucinfo = (MultiChatInfo) getItem(position);
		final TextView name = (TextView) view.findViewById(R.id.name_text);
		name.setText(mucinfo.getName());
		final TextView status = (TextView) view.findViewById(R.id.status_text);
		status.setText(mucinfo.getJid());
		name.setTextColor(Color.BLACK);
		status.setTextColor(Color.BLACK);
		view.setBackgroundResource(R.drawable.listitem_default);
		view.findViewById(R.id.loading_spinner).setVisibility(View.GONE);

		/*
		 * status.setCompoundDrawablesWithIntrinsicBounds(
		 * UserState.getStatusIconResourceID(UserState.STATUS_OFFLINE), 0, 0,
		 * 0);
		 */

		final QuickContactBadge q = (QuickContactBadge) view
				.findViewById(R.id.user_badge);

		q.setImageResource(R.drawable.ic_group_picture);

		final TextView unread = (TextView) view.findViewById(R.id.unread_text);
		unread.setVisibility(View.GONE);

		final LinearLayout iconContainer = (LinearLayout) view
				.findViewById(R.id.icon_container);
		iconContainer.removeAllViews();
	}

	private void handleContact(int position, View rosteritem) {
		final Contact contact = (Contact) getItem(position);
		final TextView name = (TextView) rosteritem
				.findViewById(R.id.name_text);
		name.setText(contact.getUserName());
		final TextView status = (TextView) rosteritem
				.findViewById(R.id.status_text);
		final CharSequence statusText = contact.getUser().getStatusText();
		if (statusText != null) {
			status.setText(contact.getUser().getStatusTextSpannable(mContext));
		}

		final QuickContactBadge q = (QuickContactBadge) rosteritem
				.findViewById(R.id.user_badge);
		if (contact.getUserContact() != null) {
			q.assignContactUri(Uri.parse(contact.getUserContact()));
		}
		q.setImageBitmap(contact.getBitmap(mContext, false));

		if (position == 0) {
			getSelfItemView(position, rosteritem);
		} else {
			getNormalItemView(position, rosteritem);
		}
	}

	public void setActiveGroup(String id) {
		activeGroup = id;
		notifyDataSetChanged();
	}

	public void updateRosterEntry(User re) {
		mContactProvider.update(re);
		notifyDataSetChanged();
	}

}
