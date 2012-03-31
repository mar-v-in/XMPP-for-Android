.class public Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;
.super Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
.source "FixedResolver.java"


# instance fields
.field fixedCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;-><init>()V

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->setFixedCandidate(Ljava/lang/String;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method public initialize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->setInitialized()V

    .line 56
    return-void
.end method

.method public declared-synchronized resolve(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 2
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->isResolving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->setResolveInit()V

    .line 67
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->clearCandidates()V

    .line 69
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->fixedCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->fixedCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->fixedCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->fixedCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->fixedCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->addCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 77
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->setResolveEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_2
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFixedCandidate(Ljava/lang/String;I)V
    .locals 1
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 90
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/FixedResolver;->fixedCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 91
    return-void
.end method
