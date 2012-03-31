.class public interface abstract Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;
.super Ljava/lang/Object;
.source "JingleSessionListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;


# virtual methods
.method public abstract sessionClosed(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
.end method

.method public abstract sessionClosedOnError(Lorg/jivesoftware/smack/XMPPException;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
.end method

.method public abstract sessionDeclined(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
.end method

.method public abstract sessionEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
.end method

.method public abstract sessionMediaReceived(Lorg/jivesoftware/smackx/jingle/JingleSession;Ljava/lang/String;)V
.end method

.method public abstract sessionRedirected(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
.end method
