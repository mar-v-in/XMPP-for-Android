package xmpp.client.ui.adapter;

import xmpp.client.R;
import xmpp.client.service.user.UserState;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class StatusAdapter extends BaseAdapter {

	public static int positionToStatus(int position) {
		switch (position) {
		case 0:
			return UserState.STATUS_AVAILABLE;
		case 1:
			return UserState.STATUS_IDLE;
		case 2:
			return UserState.STATUS_AWAY;
		case 3:
			return UserState.STATUS_DO_NOT_DISTURB;
		case 4:
			return UserState.STATUS_OFFLINE;
		}
		return UserState.STATUS_OFFLINE;
	}

	public static int statusToPosition(int status) {
		switch (status) {
		case UserState.STATUS_AVAILABLE:
			return 0;
		case UserState.STATUS_IDLE:
			return 1;
		case UserState.STATUS_AWAY:
			return 2;
		case UserState.STATUS_DO_NOT_DISTURB:
			return 3;
		case UserState.STATUS_OFFLINE:
			return 4;
		}
		return 0;
	}

	boolean mShowOffline;

	Context mContext;

	public StatusAdapter(Context context) {
		this(context, false);
	}

	public StatusAdapter(Context context, boolean showOffline) {
		super();
		mContext = context;
		mShowOffline = showOffline;
	}

	@Override
	public int getCount() {
		return mShowOffline ? 5 : 4;
	}

	@Override
	public Object getItem(int position) {
		return positionToStatus(position);
	}

	@Override
	public long getItemId(int position) {
		return positionToStatus(position);
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		TextView view;
		if (convertView instanceof TextView) {
			view = (TextView) convertView;
		} else {
			view = new TextView(mContext);
		}

		final int status = positionToStatus(position);

		view.setTextSize(16);
		view.setText(mContext.getText(UserState.getStatusTextResourceID(status)));
		view.setCompoundDrawablesWithIntrinsicBounds(
				UserState.getStatusIconResourceID(status), 0, 0, 0);
		view.setCompoundDrawablePadding(5);

		final int p = mContext.getResources().getDimensionPixelSize(
				R.dimen.simple_row_margin) * 2;

		view.setPadding(p, p, p, p);

		return view;
	}

}
