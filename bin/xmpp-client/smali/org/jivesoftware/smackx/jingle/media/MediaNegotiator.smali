.class public Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;
.super Lorg/jivesoftware/smackx/jingle/JingleNegotiator;
.source "MediaNegotiator.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# instance fields
.field private bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

.field private final localAudioPts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

.field private final parentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

.field private final remoteAudioPts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum()[I
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->values()[Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_ADD:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_MODIFY:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_REMOVE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_INITIATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_TERMINATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->TRANSPORT_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->UNKNOWN:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 53
    sput-object v0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;Ljava/util/List;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V
    .locals 1
    .parameter "session"
    .parameter "mediaManager"
    .parameter
    .parameter "parentNegotiator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/jingle/JingleSession;",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;",
            ">;",
            "Lorg/jivesoftware/smackx/jingle/ContentNegotiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p3, pts:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->localAudioPts:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->remoteAudioPts:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

    .line 84
    iput-object p4, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->parentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 88
    if-eqz p3, :cond_0

    .line 89
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->localAudioPts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_0
    return-void
.end method

.method private calculateBestCommonAudioPt(Ljava/util/List;)Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;",
            ">;)",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, remoteAudioPts:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v2, commonAudioPtsHere:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v3, commonAudioPtsThere:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    const/4 v6, 0x0

    .line 115
    .local v6, result:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 116
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->localAudioPts:Ljava/util/List;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 119
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->localAudioPts:Ljava/util/List;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 122
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 124
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Ljava/lang/String;

    move-result-object v7

    .line 125
    iget-object v8, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, bestPtHere:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

    .line 129
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->getPreferredPayloadType()Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v4

    .line 131
    .local v4, payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    if-eqz v4, :cond_0

    instance-of v7, v4, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    if-eqz v7, :cond_0

    .line 132
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v4

    .line 133
    check-cast v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    .line 137
    :cond_0
    if-nez v0, :cond_2

    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 146
    :cond_2
    :goto_0
    move-object v6, v0

    .line 161
    .end local v0           #bestPtHere:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    .end local v4           #payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    :cond_3
    :goto_1
    return-object v6

    .line 138
    .restart local v0       #bestPtHere:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    .restart local v4       #payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 139
    .local v5, payloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    instance-of v8, v5, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    if-eqz v8, :cond_1

    move-object v0, v5

    .line 140
    check-cast v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    .line 141
    goto :goto_0

    .line 148
    .end local v0           #bestPtHere:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    .end local v4           #payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    .end local v5           #payloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    :cond_5
    const/4 v1, 0x0

    .line 149
    .local v1, bestPtThere:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 156
    :goto_2
    move-object v6, v1

    goto :goto_1

    .line 149
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 150
    .restart local v5       #payloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    instance-of v8, v5, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    if-eqz v8, :cond_6

    move-object v1, v5

    .line 151
    check-cast v1, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    .line 152
    goto :goto_2
.end method

.method private receiveContentAcceptAction(Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/packet/JingleDescription;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 5
    .parameter "jingle"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, response:Lorg/jivesoftware/smack/packet/IQ;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v0, offeredPayloads:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getAudioPayloadTypesList()Ljava/util/List;

    move-result-object v0

    .line 340
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->calculateBestCommonAudioPt(Ljava/util/List;)Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 342
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    if-nez v2, :cond_0

    .line 344
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->FAILED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    .line 345
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 346
    sget-object v3, Lorg/jivesoftware/smackx/packet/JingleError;->NEGOTIATION_ERROR:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 345
    invoke-virtual {v2, p1, v3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createJingleError(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smackx/packet/JingleError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 357
    :goto_0
    return-object v1

    .line 350
    :cond_0
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    .line 351
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getBestCommonAudioPt()Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->triggerMediaEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    .line 352
    sget-object v2, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Media choice:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getBestCommonAudioPt()Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->error(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createAck(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    goto :goto_0
.end method

.method private receiveResult(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smackx/packet/Jingle;
    .locals 1
    .parameter "iq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 397
    .local v0, response:Lorg/jivesoftware/smackx/packet/Jingle;
    return-object v0
.end method

.method private receiveSessionAcceptAction(Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/packet/JingleDescription;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 5
    .parameter "jingle"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/jingle/JingleException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 413
    const/4 v2, 0x0

    .line 415
    .local v2, response:Lorg/jivesoftware/smack/packet/IQ;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v1, offeredPayloads:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    if-nez v3, :cond_0

    .line 419
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->remoteAudioPts:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->calculateBestCommonAudioPt(Ljava/util/List;)Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 423
    :cond_0
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getAudioPayloadTypesList()Ljava/util/List;

    move-result-object v1

    .line 424
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 425
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 427
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    .line 428
    .local v0, agreedCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    if-eqz v3, :cond_2

    .line 431
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 432
    new-instance v3, Lorg/jivesoftware/smackx/jingle/JingleException;

    sget-object v4, Lorg/jivesoftware/smackx/packet/JingleError;->NEGOTIATION_ERROR:Lorg/jivesoftware/smackx/packet/JingleError;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/jingle/JingleException;-><init>(Lorg/jivesoftware/smackx/packet/JingleError;)V

    throw v3

    .line 436
    .end local v0           #agreedCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_2

    .line 437
    new-instance v3, Lorg/jivesoftware/smackx/jingle/JingleException;

    sget-object v4, Lorg/jivesoftware/smackx/packet/JingleError;->MALFORMED_STANZA:Lorg/jivesoftware/smackx/packet/JingleError;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/jingle/JingleException;-><init>(Lorg/jivesoftware/smackx/packet/JingleError;)V

    throw v3

    .line 441
    :cond_2
    return-object v2
.end method

.method private receiveSessionInfoAction(Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/packet/JingleDescription;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .parameter "jingle"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/jingle/JingleException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v3, 0x0

    .line 456
    .local v3, response:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 458
    .local v1, oldBestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    const/4 v2, 0x0

    .line 460
    .local v2, ptChange:Z
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getAudioPayloadTypesList()Ljava/util/List;

    move-result-object v0

    .line 461
    .local v0, offeredPayloads:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 463
    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->remoteAudioPts:Ljava/util/List;

    monitor-enter v5

    .line 464
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->remoteAudioPts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 465
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->remoteAudioPts:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 463
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->remoteAudioPts:Ljava/util/List;

    invoke-direct {p0, v4}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->calculateBestCommonAudioPt(Ljava/util/List;)Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 470
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    if-eqz v4, :cond_2

    .line 472
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 473
    :goto_0
    if-eqz v1, :cond_0

    .line 482
    :cond_0
    return-object v3

    .line 463
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 472
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 477
    :cond_2
    new-instance v4, Lorg/jivesoftware/smackx/jingle/JingleException;

    sget-object v5, Lorg/jivesoftware/smackx/packet/JingleError;->NO_COMMON_PAYLOAD:Lorg/jivesoftware/smackx/packet/JingleError;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smackx/jingle/JingleException;-><init>(Lorg/jivesoftware/smackx/packet/JingleError;)V

    throw v4
.end method

.method private receiveSessionInitiateAction(Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/packet/JingleDescription;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .parameter "jingle"
    .parameter "description"

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 496
    .local v1, response:Lorg/jivesoftware/smack/packet/IQ;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, offeredPayloads:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getAudioPayloadTypesList()Ljava/util/List;

    move-result-object v0

    .line 499
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->calculateBestCommonAudioPt(Ljava/util/List;)Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 501
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->remoteAudioPts:Ljava/util/List;

    monitor-enter v3

    .line 502
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->remoteAudioPts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 501
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    if-eqz v2, :cond_0

    .line 511
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->PENDING:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    .line 517
    :goto_0
    return-object v1

    .line 501
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 514
    :cond_0
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->FAILED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    goto :goto_0
.end method


# virtual methods
.method public addRemoteAudioPayloadType(Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;)V
    .locals 2
    .parameter "pt"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->remoteAudioPts:Ljava/util/List;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->remoteAudioPts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    monitor-exit v1

    .line 107
    :cond_0
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->close()V

    .line 170
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getBestCommonAudioPt()Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->triggerMediaClosed(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    .line 171
    return-void
.end method

.method public dispatchIncomingPacket(Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/String;)Ljava/util/List;
    .locals 9
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
    .line 186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v5, responses:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/IQ;>;"
    const/4 v4, 0x0

    .line 189
    .local v4, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    sget-object v6, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->FAILED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {p0, v6}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    .line 192
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getBestCommonAudioPt()Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->triggerMediaClosed(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    .line 195
    new-instance v6, Lorg/jivesoftware/smackx/jingle/JingleException;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jivesoftware/smack/packet/XMPPError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smackx/jingle/JingleException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 196
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 198
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->isExpectedId(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->receiveResult(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smackx/packet/Jingle;

    .line 200
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->removeExpectedId(Ljava/lang/String;)V

    .line 252
    :cond_1
    if-eqz v4, :cond_2

    .line 253
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->addExpectedId(Ljava/lang/String;)V

    .line 254
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_2
    return-object v5

    .line 202
    :cond_3
    instance-of v6, p1, Lorg/jivesoftware/smackx/packet/Jingle;

    if-eqz v6, :cond_1

    move-object v2, p1

    .line 203
    check-cast v2, Lorg/jivesoftware/smackx/packet/Jingle;

    .line 204
    .local v2, jingle:Lorg/jivesoftware/smackx/packet/Jingle;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/Jingle;->getAction()Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    move-result-object v0

    .line 208
    .local v0, action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/Jingle;->getContentsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    :pswitch_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/packet/JingleContent;

    .line 209
    .local v3, jingleContent:Lorg/jivesoftware/smackx/packet/JingleContent;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/JingleContent;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->parentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 212
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/JingleContent;->getDescription()Lorg/jivesoftware/smackx/packet/JingleDescription;

    move-result-object v1

    .line 214
    .local v1, description:Lorg/jivesoftware/smackx/packet/JingleDescription;
    if-eqz v1, :cond_4

    .line 216
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum()[I

    move-result-object v7

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 218
    :pswitch_2
    invoke-direct {p0, v2, v1}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->receiveContentAcceptAction(Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/packet/JingleDescription;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    .line 220
    goto :goto_0

    .line 229
    :pswitch_3
    invoke-direct {p0, v2, v1}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->receiveSessionInfoAction(Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/packet/JingleDescription;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    .line 231
    goto :goto_0

    .line 234
    :pswitch_4
    invoke-direct {p0, v2, v1}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->receiveSessionInitiateAction(Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/packet/JingleDescription;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    .line 236
    goto :goto_0

    .line 239
    :pswitch_5
    invoke-direct {p0, v2, v1}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->receiveSessionAcceptAction(Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/packet/JingleDescription;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    .line 241
    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected doStart()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public getBestCommonAudioPt()Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->bestCommonAudioPt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    return-object v0
.end method

.method public getJingleDescription()Lorg/jivesoftware/smackx/packet/JingleDescription;
    .locals 3

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, result:Lorg/jivesoftware/smackx/packet/JingleDescription;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getBestCommonAudioPt()Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v0

    .line 285
    .local v0, payloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    if-eqz v0, :cond_0

    .line 286
    new-instance v1, Lorg/jivesoftware/smackx/packet/JingleDescription$Audio;

    .end local v1           #result:Lorg/jivesoftware/smackx/packet/JingleDescription;
    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/packet/JingleDescription$Audio;-><init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    .line 293
    .restart local v1       #result:Lorg/jivesoftware/smackx/packet/JingleDescription;
    :goto_0
    return-object v1

    .line 290
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/packet/JingleDescription$Audio;

    .end local v1           #result:Lorg/jivesoftware/smackx/packet/JingleDescription;
    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/JingleDescription$Audio;-><init>()V

    .line 291
    .restart local v1       #result:Lorg/jivesoftware/smackx/packet/JingleDescription;
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->localAudioPts:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/JingleDescription;->addAudioPayloadTypes(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getMediaManager()Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

    return-object v0
.end method

.method public isEstablished()Z
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getBestCommonAudioPt()Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyEstablished()Z
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->FAILED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected triggerMediaClosed(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V
    .locals 5
    .parameter "currPt"

    .prologue
    .line 527
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getListenersList()Ljava/util/List;

    move-result-object v1

    .line 528
    .local v1, listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 534
    return-void

    .line 528
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;

    .line 529
    .local v0, li:Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;
    instance-of v4, v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 530
    check-cast v2, Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;

    .line 531
    .local v2, mli:Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;
    invoke-interface {v2, p1}, Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;->mediaClosed(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    goto :goto_0
.end method

.method protected triggerMediaEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V
    .locals 5
    .parameter "bestPt"

    .prologue
    .line 543
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->getListenersList()Ljava/util/List;

    move-result-object v1

    .line 544
    .local v1, listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 550
    return-void

    .line 544
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;

    .line 545
    .local v0, li:Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;
    instance-of v4, v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 546
    check-cast v2, Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;

    .line 547
    .local v2, mli:Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;
    invoke-interface {v2, p1}, Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;->mediaEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    goto :goto_0
.end method
