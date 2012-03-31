package xmpp.client.ui.provider;

public interface ContactProviderListener {
	public void contactProviderChanged(ContactProvider contactProvider);

	public void contactProviderReady(ContactProvider contactProvider);

	public boolean isReady();
}
