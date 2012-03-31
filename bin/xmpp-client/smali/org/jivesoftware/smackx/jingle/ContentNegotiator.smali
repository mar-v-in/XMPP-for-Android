.class public Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
.super Lorg/jivesoftware/smackx/jingle/JingleNegotiator;
.source "ContentNegotiator.java"


# static fields
.field public static final INITIATOR:Ljava/lang/String; = "initiator"

.field public static final RESPONDER:Ljava/lang/String; = "responder"


# instance fields
.field private final creator:Ljava/lang/String;

.field private jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

.field private jingleTransportManager:Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;

.field private mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

.field private final name:Ljava/lang/String;

.field private transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

.field private final transportNegotiators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "inCreator"
    .parameter "inName"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    .line 39
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->creator:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->name:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transportNegotiators:Ljava/util/List;

    .line 42
    return-void
.end method

.method private triggerContentEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 9
    .parameter "pt"
    .parameter "rc"
    .parameter "lc"

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getSession()Lorg/jivesoftware/smackx/jingle/JingleSession;

    move-result-object v4

    .line 314
    .local v4, session:Lorg/jivesoftware/smackx/jingle/JingleSession;
    if-eqz v4, :cond_1

    .line 315
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getListenersList()Ljava/util/List;

    move-result-object v2

    .line 316
    .local v2, listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 325
    .end local v2           #listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    :cond_1
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getMediaManager()Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 326
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->removeCandidateEcho()V

    .line 327
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->removeCandidateEcho()V

    .line 329
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getMediaNegotiator()Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getMediaManager()Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

    move-result-object v6

    .line 330
    invoke-virtual {v6, p1, p2, p3, v4}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->createMediaSession(Lorg/jivesoftware/smackx/jingle/media/PayloadType;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/JingleSession;)Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    move-result-object v6

    .line 329
    iput-object v6, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    .line 331
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    invoke-virtual {v6, v4}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->addMediaReceivedListener(Lorg/jivesoftware/smackx/jingle/media/MediaReceivedListener;)V

    .line 332
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    if-eqz v6, :cond_2

    .line 334
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->startTrasmit()V

    .line 335
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->startReceive()V

    .line 337
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v6

    .line 338
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getOfferedCandidates()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 337
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 342
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getMediaNegotiator()Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    move-result-object v6

    .line 343
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getMediaManager()Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

    move-result-object v3

    .line 344
    .local v3, mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getSession()Lorg/jivesoftware/smackx/jingle/JingleSession;

    move-result-object v6

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->getName()Ljava/lang/String;

    move-result-object v7

    .line 345
    iget-object v8, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    .line 344
    invoke-virtual {v6, v7, v8}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addJingleMediaSession(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;)V

    .line 348
    .end local v3           #mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;
    :cond_3
    return-void

    .line 316
    .restart local v2       #listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;

    .line 317
    .local v1, li:Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;
    instance-of v7, v1, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;

    if-eqz v7, :cond_0

    move-object v5, v1

    .line 318
    check-cast v5, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;

    .line 319
    .local v5, sli:Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;
    invoke-interface {v5, p1, p2, p3, v4}, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;->sessionEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    goto :goto_0

    .line 338
    .end local v1           #li:Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;
    .end local v2           #listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    .end local v5           #sli:Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 339
    .local v0, candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->removeCandidateEcho()V

    goto :goto_1
.end method


# virtual methods
.method public addTransportNegotiator(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)V
    .locals 1
    .parameter "transportNegotiator"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transportNegotiators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->destroyMediaNegotiator()V

    .line 54
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->destroyTransportNegotiator()V

    .line 55
    return-void
.end method

.method protected destroyMediaNegotiator()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->close()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    .line 65
    :cond_0
    return-void
.end method

.method protected destroyTransportNegotiator()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->close()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    .line 75
    :cond_0
    return-void
.end method

.method public dispatchIncomingPacket(Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "iq"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/IQ;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/IQ;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, responses:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/IQ;>;"
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->isExpectedId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->removeExpectedId(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-object v2

    .line 94
    :cond_1
    instance-of v3, p1, Lorg/jivesoftware/smackx/packet/Jingle;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 95
    check-cast v0, Lorg/jivesoftware/smackx/packet/Jingle;

    .line 104
    .local v0, jingle:Lorg/jivesoftware/smackx/packet/Jingle;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Jingle;->getContentsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 103
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/JingleContent;

    .line 105
    .local v1, jingleContent:Lorg/jivesoftware/smackx/packet/JingleContent;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/JingleContent;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    if-eqz v4, :cond_3

    .line 107
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    invoke-virtual {v4, p1, p2}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->dispatchIncomingPacket(Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_3
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    if-eqz v4, :cond_2

    .line 112
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v4, p1, p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->dispatchIncomingPacket(Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected doStart()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleContent;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->creator:Ljava/lang/String;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/packet/JingleContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->start()V

    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->start()V

    .line 137
    return-void
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getJingleContent()Lorg/jivesoftware/smackx/packet/JingleContent;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleContent;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->creator:Ljava/lang/String;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/packet/JingleContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v0, result:Lorg/jivesoftware/smackx/packet/JingleContent;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getJingleDescription()Lorg/jivesoftware/smackx/packet/JingleDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleContent;->setDescription(Lorg/jivesoftware/smackx/packet/JingleDescription;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getJingleTransport()Lorg/jivesoftware/smackx/packet/JingleTransport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleContent;->addJingleTransport(Lorg/jivesoftware/smackx/packet/JingleTransport;)V

    .line 164
    :cond_1
    return-object v0
.end method

.method public getJingleMediaSession()Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    return-object v0
.end method

.method public getMediaNegotiator()Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;
    .locals 3

    .prologue
    .line 195
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->PENDING:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    .line 197
    .local v0, result:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    if-eqz v1, :cond_3

    .line 199
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-eq v1, v2, :cond_0

    .line 200
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-ne v1, v2, :cond_1

    .line 201
    :cond_0
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    .line 204
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->FAILED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-eq v1, v2, :cond_2

    .line 205
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->FAILED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-ne v1, v2, :cond_3

    .line 206
    :cond_2
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->FAILED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    .line 211
    :cond_3
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    .line 213
    return-object v0
.end method

.method public getTransportManager()Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleTransportManager:Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;

    return-object v0
.end method

.method public getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    return-object v0
.end method

.method public isFullyEstablished()Z
    .locals 4

    .prologue
    .line 236
    const/4 v1, 0x1

    .line 238
    .local v1, result:Z
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getMediaNegotiator()Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    move-result-object v0

    .line 239
    .local v0, mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->isFullyEstablished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    :cond_0
    const/4 v1, 0x0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v2

    .line 244
    .local v2, transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->isFullyEstablished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 245
    :cond_2
    const/4 v1, 0x0

    .line 248
    :cond_3
    return v1
.end method

.method public setJingleTransportManager(Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;)V
    .locals 0
    .parameter "jingleTransportManager"

    .prologue
    .line 256
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleTransportManager:Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;

    .line 257
    return-void
.end method

.method protected setMediaNegotiator(Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;)V
    .locals 0
    .parameter "mediaNeg"

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->destroyMediaNegotiator()V

    .line 267
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->mediaNeg:Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    .line 268
    return-void
.end method

.method protected setTransportNegotiator(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)V
    .locals 0
    .parameter "transNeg"

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->destroyTransportNegotiator()V

    .line 278
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    .line 279
    return-void
.end method

.method public stopJingleMediaSession()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->stopTrasmit()V

    .line 288
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->jingleMediaSession:Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->stopReceive()V

    .line 290
    :cond_0
    return-void
.end method

.method public triggerContentEstablished()V
    .locals 4

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getMediaNegotiator()Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    move-result-object v3

    .line 295
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getBestCommonAudioPt()Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v1

    .line 296
    .local v1, bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v3

    .line 297
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getBestRemoteCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v2

    .line 298
    .local v2, bestRemoteCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v3

    .line 299
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getAcceptedLocalCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v0

    .line 302
    .local v0, acceptedLocalCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-direct {p0, v1, v2, v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->triggerContentEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 304
    return-void
.end method
