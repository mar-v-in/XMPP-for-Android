package org.jivesoftware.smack.debugger;

import java.io.Reader;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.ConnectionListener;
import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.util.ObservableReader;
import org.jivesoftware.smack.util.ObservableWriter;
import org.jivesoftware.smack.util.ReaderListener;
import org.jivesoftware.smack.util.StringUtils;
import org.jivesoftware.smack.util.WriterListener;

/**
 * Very simple debugger that prints to the console (stdout) the sent and
 * received stanzas. Use this debugger with caution since printing to the
 * console is an expensive operation that may even block the thread since only
 * one thread may print at a time.
 * <p>
 * <p/>
 * It is possible to not only print the raw sent and received stanzas but also
 * the interpreted packets by Smack. By default interpreted packets won't be
 * printed. To enable this feature just change the <tt>printInterpreted</tt>
 * static variable to <tt>true</tt>.
 * 
 * @author Gaston Dombiak
 */
public class ConsoleDebugger implements SmackDebugger {

	public static boolean printInterpreted = false;
	private final SimpleDateFormat dateFormatter = new SimpleDateFormat(
			"hh:mm:ss aaa");

	private Connection connection = null;

	private PacketListener listener = null;
	private ConnectionListener connListener = null;

	private Writer writer;
	private Reader reader;
	private ReaderListener readerListener;
	private WriterListener writerListener;

	public ConsoleDebugger(Connection connection, Writer writer, Reader reader) {
		this.connection = connection;
		this.writer = writer;
		this.reader = reader;
		createDebug();
	}

	/**
	 * Creates the listeners that will print in the console when new activity is
	 * detected.
	 */
	private void createDebug() {
		// Create a special Reader that wraps the main Reader and logs data to
		// the GUI.
		final ObservableReader debugReader = new ObservableReader(reader);
		readerListener = new ReaderListener() {
			@Override
			public void read(String str) {
				System.out.println(dateFormatter.format(new Date()) + " RCV  ("
						+ connection.hashCode() + "): " + str);
			}
		};
		debugReader.addReaderListener(readerListener);

		// Create a special Writer that wraps the main Writer and logs data to
		// the GUI.
		final ObservableWriter debugWriter = new ObservableWriter(writer);
		writerListener = new WriterListener() {
			@Override
			public void write(String str) {
				System.out.println(dateFormatter.format(new Date()) + " SENT ("
						+ connection.hashCode() + "): " + str);
			}
		};
		debugWriter.addWriterListener(writerListener);

		// Assign the reader/writer objects to use the debug versions. The
		// packet reader
		// and writer will use the debug versions when they are created.
		reader = debugReader;
		writer = debugWriter;

		// Create a thread that will listen for all incoming packets and write
		// them to
		// the GUI. This is what we call "interpreted" packet data, since it's
		// the packet
		// data as Smack sees it and not as it's coming in as raw XML.
		listener = new PacketListener() {
			@Override
			public void processPacket(Packet packet) {
				if (printInterpreted) {
					System.out.println(dateFormatter.format(new Date())
							+ " RCV PKT (" + connection.hashCode() + "): "
							+ packet.toXML());
				}
			}
		};

		connListener = new ConnectionListener() {
			@Override
			public void connectionClosed() {
				System.out.println(dateFormatter.format(new Date())
						+ " Connection closed (" + connection.hashCode() + ")");
			}

			@Override
			public void connectionClosedOnError(Exception e) {
				System.out.println(dateFormatter.format(new Date())
						+ " Connection closed due to an exception ("
						+ connection.hashCode() + ")");
				e.printStackTrace();
			}

			@Override
			public void reconnectingIn(int seconds) {
				System.out.println(dateFormatter.format(new Date())
						+ " Connection (" + connection.hashCode()
						+ ") will reconnect in " + seconds);
			}

			@Override
			public void reconnectionFailed(Exception e) {
				System.out.println(dateFormatter.format(new Date())
						+ " Reconnection failed due to an exception ("
						+ connection.hashCode() + ")");
				e.printStackTrace();
			}

			@Override
			public void reconnectionSuccessful() {
				System.out.println(dateFormatter.format(new Date())
						+ " Connection reconnected (" + connection.hashCode()
						+ ")");
			}
		};
	}

	@Override
	public Reader getReader() {
		return reader;
	}

	@Override
	public PacketListener getReaderListener() {
		return listener;
	}

	@Override
	public Writer getWriter() {
		return writer;
	}

	@Override
	public PacketListener getWriterListener() {
		return null;
	}

	@Override
	public Reader newConnectionReader(Reader newReader) {
		((ObservableReader) reader).removeReaderListener(readerListener);
		final ObservableReader debugReader = new ObservableReader(newReader);
		debugReader.addReaderListener(readerListener);
		reader = debugReader;
		return reader;
	}

	@Override
	public Writer newConnectionWriter(Writer newWriter) {
		((ObservableWriter) writer).removeWriterListener(writerListener);
		final ObservableWriter debugWriter = new ObservableWriter(newWriter);
		debugWriter.addWriterListener(writerListener);
		writer = debugWriter;
		return writer;
	}

	@Override
	public void userHasLogged(String user) {
		final boolean isAnonymous = "".equals(StringUtils.parseName(user));
		String title = "User logged (" + connection.hashCode() + "): "
				+ (isAnonymous ? "" : StringUtils.parseBareAddress(user)) + "@"
				+ connection.getServiceName() + ":" + connection.getPort();
		title += "/" + StringUtils.parseResource(user);
		System.out.println(title);
		// Add the connection listener to the connection so that the debugger
		// can be notified
		// whenever the connection is closed.
		connection.addConnectionListener(connListener);
	}
}
