.class public Lorg/jivesoftware/smackx/jingle/nat/FixedTransportManager;
.super Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;
.source "FixedTransportManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;
.implements Lorg/jivesoftware/smackx/jingle/listeners/CreatedJingleSessionListener;


# instance fields
.field resolver:Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;)V
    .locals 0
    .parameter "inResolver"

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/FixedTransportManager;->resolver:Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;

    .line 40
    return-void
.end method


# virtual methods
.method protected createResolver(Lorg/jivesoftware/smackx/jingle/JingleSession;)Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
    .locals 1
    .parameter "session"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/FixedTransportManager;->resolver:Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;

    return-object v0
.end method

.method public sessionClosed(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "reason"
    .parameter "jingleSession"

    .prologue
    .line 49
    return-void
.end method

.method public sessionClosedOnError(Lorg/jivesoftware/smack/XMPPException;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "e"
    .parameter "jingleSession"

    .prologue
    .line 54
    return-void
.end method

.method public sessionCreated(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "jingleSession"

    .prologue
    .line 58
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    .line 59
    return-void
.end method

.method public sessionDeclined(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "reason"
    .parameter "jingleSession"

    .prologue
    .line 63
    return-void
.end method

.method public sessionEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "pt"
    .parameter "rc"
    .parameter "lc"
    .parameter "jingleSession"

    .prologue
    .line 68
    return-void
.end method

.method public sessionMediaReceived(Lorg/jivesoftware/smackx/jingle/JingleSession;Ljava/lang/String;)V
    .locals 0
    .parameter "jingleSession"
    .parameter "participant"

    .prologue
    .line 74
    return-void
.end method

.method public sessionRedirected(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "redirection"
    .parameter "jingleSession"

    .prologue
    .line 79
    return-void
.end method
