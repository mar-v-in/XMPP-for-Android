package xmpp.client.ui.provider;

public interface ChatProviderListener {
	public void chatProviderChanged(ChatProvider chatProvider);

	public void chatProviderReady(ChatProvider chatProvider);

	public boolean isReady();
}
