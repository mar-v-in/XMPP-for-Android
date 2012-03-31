package xmpp.client.ui.dialogs;

import xmpp.client.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;

public class AddUserDialog implements OnClickListener, OnDismissListener,
		ResultProducer {

	private final Context mContext;
	private EditText mEditText;
	private final AlertDialog mAlertDialog;
	private ResultListener mResultListener;
	private String mResult;

	public AddUserDialog(Context context) {
		mContext = context;
		mAlertDialog = buildDialog();
	}

	private AlertDialog buildDialog() {
		final AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
		final LayoutInflater layoutInflater = (LayoutInflater) mContext
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		final View view = layoutInflater.inflate(R.layout.add_user, null);

		mEditText = (EditText) view.findViewById(R.id.uid_edit);

		builder.setView(view);
		builder.setPositiveButton(mContext.getText(R.string.ok), this);
		builder.setNegativeButton(mContext.getText(R.string.cancel), this);
		builder.setTitle(R.string.add_contact);

		final AlertDialog alertDialog = builder.create();
		alertDialog.setOnDismissListener(this);

		return alertDialog;
	}

	public AlertDialog getAlertDialog() {
		return mAlertDialog;
	}

	@Override
	public String getResult() {
		return mResult;
	}

	@Override
	public void onClick(DialogInterface dialog, int which) {
		switch (which) {
		case DialogInterface.BUTTON_POSITIVE:
			mResult = mEditText.getText().toString();
			break;
		}
	}

	@Override
	public void onDismiss(DialogInterface dialog) {
		sendResult();
	}

	private void sendResult() {
		if (mResultListener != null) {
			mResultListener.onResultAvailable(this);
		}
	}

	@Override
	public void setResultListener(ResultListener resultListener) {
		mResultListener = resultListener;
	}
}
