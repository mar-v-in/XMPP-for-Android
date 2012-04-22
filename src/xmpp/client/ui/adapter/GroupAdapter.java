package xmpp.client.ui.adapter;

import xmpp.client.Constants;
import xmpp.client.R;
import xmpp.client.ui.provider.ContactProvider;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class GroupAdapter extends BaseAdapter implements Constants {
	// private static final String TAG = GroupAdapter.class.getName();

	ContactProvider mRosterContainer;
	Context mContext;

	public GroupAdapter(Context context, ContactProvider contactProvider) {
		mRosterContainer = contactProvider;
		mContext = context;
	}

	@Override
	public int getCount() {
		return mRosterContainer.getGroups().size() + 5;
	}

	@Override
	public Object getItem(int position) {
		if (position == 0 || position == 4) {
			return GROUP_DIVIDER;
		} else if (position == 1) {
			return GROUP_ALL_CONTACTS;
		} else if (position == 2) {
			return GROUP_ONLINE_CONTACTS;
		} else if (position == 3) {
			return GROUP_CONFERENCES;
		} else {
			return mRosterContainer.getGroups().get(position - 5);
		}
	}

	@Override
	public long getItemId(int position) {
		return getItem(position).hashCode();
	}

	@Override
	public int getItemViewType(int position) {
		if (position == 0 || position == 4) {
			return 0;
		} else {
			return 1;
		}
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View view = convertView;
		if (position == 0) {
			view = perfectInitiate(view, parent, R.layout.roster_group_divider,
					R.id.text_devider, mRosterContainer.getMeUserLogin());
		} else if (position == 1) {
			view = perfectInitiate(view, parent, R.layout.roster_group_item,
					R.id.group_text, mContext.getText(R.string.all_contacts));
		} else if (position == 2) {
			view = perfectInitiate(view, parent, R.layout.roster_group_item,
					R.id.group_text, mContext.getText(R.string.online_contacts));
		} else if (position == 3) {
			view = perfectInitiate(view, parent, R.layout.roster_group_item,
					R.id.group_text, mContext.getText(R.string.conferences));
		} else if (position == 4) {
			view = perfectInitiate(view, parent, R.layout.roster_group_divider,
					R.id.text_devider, mContext.getText(R.string.groups));
		} else {
			view = perfectInitiate(view, parent, R.layout.roster_group_item,
					R.id.group_text, (String) getItem(position));
		}
		return view;
	}

	@Override
	public int getViewTypeCount() {
		return 2;
	}

	@Override
	public boolean isEnabled(int position) {
		if (getItemViewType(position) == 0) {
			return false;
		} else {
			return super.isEnabled(position);
		}
	}

	private View perfectInitiate(View baseView, ViewGroup parent, int layout,
			int textViewID, CharSequence text) {
		if (baseView == null) {
			final LayoutInflater layoutInflater = (LayoutInflater) mContext
					.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
			baseView = layoutInflater.inflate(layout, parent, false);
		}
		TextView textView = (TextView) baseView.findViewById(textViewID);
		if (textView == null) {
			final LayoutInflater layoutInflater = (LayoutInflater) mContext
					.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
			baseView = layoutInflater.inflate(layout, parent, false);
			textView = (TextView) baseView.findViewById(textViewID);
		}
		textView.setText(text);
		return baseView;
	}

}
