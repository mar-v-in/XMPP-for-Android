.class public final Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$Ice;
.super Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;
.source "TransportNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ice"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V
    .locals 0
    .parameter "js"
    .parameter "res"
    .parameter "parentNegotiator"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V

    .line 73
    return-void
.end method


# virtual methods
.method public acceptableTransportCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Ljava/util/List;)Z
    .locals 1
    .parameter "tc"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, localCandidates:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    instance-of v0, p1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    return v0
.end method

.method public getBestRemoteCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 7

    .prologue
    .line 91
    const/4 v3, 0x0

    .line 93
    .local v3, result:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$Ice;->getValidRemoteCandidatesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    .local v0, cands:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    const/4 v2, -0x1

    .line 96
    .local v2, highest:I
    const/4 v1, 0x0

    .line 97
    .local v1, chose:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 104
    move-object v3, v1

    .line 107
    .end local v1           #chose:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    .end local v2           #highest:I
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v5

    const-string v6, "relay"

    invoke-virtual {v5, v6}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v5

    const-string v6, "Relay Type"

    invoke-virtual {v5, v6}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 111
    :cond_2
    return-object v3

    .line 97
    .restart local v1       #chose:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    .restart local v2       #highest:I
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .local v4, transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    move-object v5, v4

    .line 98
    check-cast v5, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPreference()I

    move-result v5

    if-le v5, v2, :cond_0

    move-object v1, v4

    .line 99
    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 100
    check-cast v4, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 101
    .end local v4           #transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPreference()I

    move-result v2

    .line 100
    goto :goto_0
.end method

.method public getJingleTransport(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)Lorg/jivesoftware/smackx/packet/JingleTransport;
    .locals 2
    .parameter "candidate"

    .prologue
    .line 122
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleTransport$Ice;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/JingleTransport$Ice;-><init>()V

    .line 123
    .local v0, jt:Lorg/jivesoftware/smackx/packet/JingleTransport$Ice;
    new-instance v1, Lorg/jivesoftware/smackx/packet/JingleTransport$Ice$Candidate;

    .line 124
    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/packet/JingleTransport$Ice$Candidate;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 123
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleTransport$Ice;->addCandidate(Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;)V

    .line 125
    return-object v0
.end method
