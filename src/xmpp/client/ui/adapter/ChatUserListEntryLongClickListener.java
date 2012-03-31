package xmpp.client.ui.adapter;

import xmpp.client.service.user.User;
import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.Toast;

public class ChatUserListEntryLongClickListener implements OnLongClickListener {

	Context mContext;
	User mUser;

	public ChatUserListEntryLongClickListener(Context context, User user) {
		mContext = context;
		mUser = user;
	}

	@Override
	public boolean onLongClick(View v) {
		final Toast t = Toast.makeText(mContext, mUser.getDisplayName(),
				Toast.LENGTH_SHORT);
		t.setGravity(Gravity.TOP, 0, 0);
		t.show();

		return false;
	}

}
