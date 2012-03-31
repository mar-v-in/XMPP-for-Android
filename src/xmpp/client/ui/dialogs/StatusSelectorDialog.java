package xmpp.client.ui.dialogs;

import xmpp.client.R;
import xmpp.client.service.user.UserState;
import xmpp.client.ui.adapter.StatusAdapter;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.Spinner;

public class StatusSelectorDialog implements OnClickListener,
		OnDismissListener, ResultProducer {

	private final Context mContext;
	private EditText mEditText;
	private Spinner mStatusSpinner;
	private final AlertDialog mAlertDialog;
	private UserState mResult;
	private ResultListener mResultListener;

	public StatusSelectorDialog(Context context, UserState input) {
		mContext = context;
		mResult = input;
		mAlertDialog = buildDialog();
	}

	private AlertDialog buildDialog() {
		final AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
		final LayoutInflater layoutInflater = (LayoutInflater) mContext
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		final View view = layoutInflater.inflate(R.layout.status_changer, null);

		mStatusSpinner = (Spinner) view.findViewById(R.id.status_spinner);
		mStatusSpinner.setAdapter(new StatusAdapter(mContext));

		mEditText = (EditText) view.findViewById(R.id.status_edit);

		mStatusSpinner.setSelection(StatusAdapter.statusToPosition(mResult
				.getStatus()));

		if (mResult.getCustomStatusText() != null) {
			mEditText.setText(mResult.getCustomStatusText());
		} else {
			mEditText.setText("");
		}
		builder.setView(view);
		builder.setPositiveButton(mContext.getText(R.string.ok), this);
		builder.setNegativeButton(mContext.getText(R.string.cancel), this);
		builder.setTitle(R.string.select_status);

		final AlertDialog alertDialog = builder.create();
		alertDialog.setOnDismissListener(this);

		return alertDialog;
	}

	public AlertDialog getAlertDialog() {
		return mAlertDialog;
	}

	@Override
	public UserState getResult() {
		return mResult;
	}

	@Override
	public void onClick(DialogInterface dialog, int which) {
		switch (which) {
		case DialogInterface.BUTTON_POSITIVE:
			final int status = (Integer) mStatusSpinner.getSelectedItem();
			String string = mEditText.getText().toString();
			if (string.isEmpty()) {
				string = null;
			}
			mResult = new UserState(status, string);
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
