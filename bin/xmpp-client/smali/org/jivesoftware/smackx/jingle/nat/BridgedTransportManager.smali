.class public Lorg/jivesoftware/smackx/jingle/nat/BridgedTransportManager;
.super Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;
.source "BridgedTransportManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;
.implements Lorg/jivesoftware/smackx/jingle/listeners/CreatedJingleSessionListener;


# instance fields
.field xmppConnection:Lorg/jivesoftware/smack/Connection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter "xmppConnection"

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedTransportManager;->xmppConnection:Lorg/jivesoftware/smack/Connection;

    .line 45
    return-void
.end method


# virtual methods
.method protected createResolver(Lorg/jivesoftware/smackx/jingle/JingleSession;)Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
    .locals 2
    .parameter "session"

    .prologue
    .line 56
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;

    .line 57
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedTransportManager;->xmppConnection:Lorg/jivesoftware/smack/Connection;

    .line 56
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 58
    .local v0, bridgedResolver:Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;
    return-object v0
.end method

.method public sessionClosed(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "reason"
    .parameter "jingleSession"

    .prologue
    .line 65
    return-void
.end method

.method public sessionClosedOnError(Lorg/jivesoftware/smack/XMPPException;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "e"
    .parameter "jingleSession"

    .prologue
    .line 70
    return-void
.end method

.method public sessionCreated(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "jingleSession"

    .prologue
    .line 74
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    .line 75
    return-void
.end method

.method public sessionDeclined(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "reason"
    .parameter "jingleSession"

    .prologue
    .line 79
    return-void
.end method

.method public sessionEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 3
    .parameter "pt"
    .parameter "rc"
    .parameter "lc"
    .parameter "jingleSession"

    .prologue
    .line 84
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v0, v1, v2, p2, p3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->relaySession(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;

    .line 86
    return-void
.end method

.method public sessionMediaReceived(Lorg/jivesoftware/smackx/jingle/JingleSession;Ljava/lang/String;)V
    .locals 0
    .parameter "jingleSession"
    .parameter "participant"

    .prologue
    .line 92
    return-void
.end method

.method public sessionRedirected(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "redirection"
    .parameter "jingleSession"

    .prologue
    .line 99
    return-void
.end method
