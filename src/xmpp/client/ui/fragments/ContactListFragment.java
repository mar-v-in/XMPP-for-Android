package xmpp.client.ui.fragments;

import xmpp.client.R;
import xmpp.client.service.chat.multi.MultiChatInfo;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.ui.activities.AppActivity;
import android.app.Activity;
import android.app.ListFragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

public class ContactListFragment extends ListFragment {

	AppActivity activity;

	@Override
	public void onAttach(Activity activity) {
		super.onAttach(activity);
		try {
			this.activity = (AppActivity) activity;
		} catch (ClassCastException ex) {
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
			activity.goStatusChange();
		} else if (activity.getCurrentNavigation() == 3) {
			activity.goConference(((MultiChatInfo) getListAdapter().getItem(item))
					.getJid());
		} else {
			activity.goChat(((Contact) getListAdapter().getItem(item)).getUserLogin());
		}
	}

}
