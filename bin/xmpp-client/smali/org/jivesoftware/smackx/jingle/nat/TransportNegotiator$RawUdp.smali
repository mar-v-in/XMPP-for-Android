.class public final Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$RawUdp;
.super Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;
.source "TransportNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawUdp"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V
    .locals 0
    .parameter "js"
    .parameter "res"
    .parameter "parentNegotiator"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V

    .line 147
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
    .line 155
    .local p2, localCandidates:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    instance-of v0, p1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    return v0
.end method

.method public getBestRemoteCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$RawUdp;->getValidRemoteCandidatesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 168
    .local v0, cands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v1

    const-string v2, "RAW CAND"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 173
    :goto_0
    return-object v1

    .line 172
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v1

    const-string v2, "No Remote Candidate"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJingleTransport(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)Lorg/jivesoftware/smackx/packet/JingleTransport;
    .locals 2
    .parameter "bestRemote"

    .prologue
    .line 183
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;-><init>()V

    .line 184
    .local v0, jt:Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;
    new-instance v1, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp$Candidate;

    .line 185
    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp$Candidate;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 184
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;->addCandidate(Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;)V

    .line 186
    return-object v0
.end method
