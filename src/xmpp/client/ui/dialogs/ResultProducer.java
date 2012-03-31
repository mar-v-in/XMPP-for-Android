package xmpp.client.ui.dialogs;

public interface ResultProducer {
	public Object getResult();

	public void setResultListener(ResultListener resultListener);
}
