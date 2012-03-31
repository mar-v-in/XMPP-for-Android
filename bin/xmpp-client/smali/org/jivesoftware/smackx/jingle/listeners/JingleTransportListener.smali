.class public interface abstract Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;
.super Ljava/lang/Object;
.source "JingleTransportListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;


# virtual methods
.method public abstract transportClosed(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
.end method

.method public abstract transportClosedOnError(Lorg/jivesoftware/smack/XMPPException;)V
.end method

.method public abstract transportEstablished(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
.end method
