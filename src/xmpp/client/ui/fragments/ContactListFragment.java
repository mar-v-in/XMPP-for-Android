package xmpp.client.ui.fragments;

import xmpp.client.Constants;
import xmpp.client.R;
import xmpp.client.service.chat.multi.MultiChatInfo;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.ui.activities.AppActivity;
import android.app.Activity;
import android.app.ListFragment;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

public class ContactListFragment extends ListFragment implements Constants {

	AppActivity activity;

	public void goChat(String userLogin) {
		final Intent i = new Intent(activity, AppActivity.class);
		i.setData(Uri.parse(URI_SCHEME_IMTO + URI_SCHEME_HOST_DIVIDER
				+ URI_HOST_JABBER + URI_PATH_DIVIDER + Uri.encode(userLogin)));
		activity.handleIntent(i);
	}

	public void goConference(String muc) {
		final Intent i = new Intent(activity, AppActivity.class);
		i.setData(Uri.parse(URI_SCHEME_IMTO + URI_SCHEME_HOST_DIVIDER
				+ URI_HOST_JABBER_MUC + URI_PATH_DIVIDER + Uri.encode(muc)));
		activity.handleIntent(i);
	}

	public void goStatusChange() {
		final Intent i = new Intent(activity, AppActivity.class);
		i.setData(Uri.parse(URI_SCHEME_XMPP_FOR_ANDROID
				+ URI_SCHEME_HOST_DIVIDER + URI_HOST_CHANGE_STATUS));
		activity.handleIntent(i);
	}

	@Override
	public void onAttach(Activity activity) {
		super.onAttach(activity);
		try {
			this.activity = (AppActivity) activity;
		} catch (final ClassCastException ex) {
			throw new RuntimeException(ContactListFragment.class.getName()
					+ " is only available in " + AppActivity.class.getName(),
					ex);
		}
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		return inflater.inflate(R.layout.roster, null);
	}

	@Override
	public void onListItemClick(ListView listview, View view, int item, long id) {
		if (item == 0) {
			goStatusChange();
		} else if (activity.getCurrentNavigation() == 3) {
			goConference(((MultiChatInfo) getListAdapter().getItem(item))
					.getJid());
		} else {
			goChat(((Contact) getListAdapter().getItem(item)).getUserLogin());
		}
	}

}
