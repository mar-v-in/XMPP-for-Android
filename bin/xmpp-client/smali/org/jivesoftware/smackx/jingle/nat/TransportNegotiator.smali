.class public abstract Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;
.super Lorg/jivesoftware/smackx/jingle/JingleNegotiator;
.source "TransportNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$Ice;,
        Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$RawUdp;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I = null

.field public static final CANDIDATES_ACCEPT_PERIOD:I = 0xfa0

.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# instance fields
.field private acceptedLocalCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

.field private final acceptedRemoteCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private final offeredCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private final parentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

.field private final remoteCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private final resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

.field private resolverListener:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;

.field private resultThread:Ljava/lang/Thread;

.field private final validRemoteCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

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
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

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
    .line 194
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 193
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V
    .locals 1
    .parameter "session"
    .parameter "transResolver"
    .parameter "parentNegotiator"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->offeredCandidates:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->remoteCandidates:Ljava/util/List;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->validRemoteCandidates:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->acceptedRemoteCandidates:Ljava/util/List;

    .line 238
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    .line 239
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->parentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resultThread:Ljava/lang/Thread;

    .line 242
    return-void
.end method

.method static synthetic access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->addValidRemoteCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    return-void
.end method

.method static synthetic access$10(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->sendTransportCandidateOffer(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->acceptedRemoteCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->parentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    return-object v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Z
    .locals 1
    .parameter

    .prologue
    .line 691
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->isEstablished()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 972
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->triggerTransportEstablished(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    return-void
.end method

.method static synthetic access$6(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->remoteCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->offeredCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Lorg/jivesoftware/smackx/jingle/JingleSession;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    return-object v0
.end method

.method private addOfferedCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 2
    .parameter "rc"

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->offeredCandidates:Ljava/util/List;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->offeredCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v1

    .line 266
    :cond_0
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addRemoteCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 2
    .parameter "rc"

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->offeredCandidates:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->acceptableTransportCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->remoteCandidates:Ljava/util/List;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->remoteCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->checkRemoteCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 287
    :cond_0
    return-void

    .line 279
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private addRemoteCandidates(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, rc:Ljava/util/List;,"Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    .line 298
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 299
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    :cond_0
    return-void

    .line 299
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 300
    .local v0, aRc:Ljava/lang/Object;
    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .end local v0           #aRc:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->addRemoteCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    goto :goto_0
.end method

.method private addValidRemoteCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 4
    .parameter "remoteCandidate"

    .prologue
    .line 315
    if-eqz p1, :cond_0

    .line 316
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->validRemoteCandidates:Ljava/util/List;

    monitor-enter v1

    .line 317
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Added valid candidate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 319
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->validRemoteCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    monitor-exit v1

    .line 323
    :cond_0
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkRemoteCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 1
    .parameter "offeredCandidate"

    .prologue
    .line 332
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$1;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$1;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->addListener(Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Checker;)V

    .line 348
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getCandidatesList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->check(Ljava/util/List;)V

    .line 349
    return-void
.end method

.method private delayedCheckBestCandidate(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)V
    .locals 3
    .parameter "js"
    .parameter "jin"

    .prologue
    .line 372
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resultThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getRemoteCandidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)V

    .line 514
    const-string v2, "Waiting for all the transport candidates checks..."

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 373
    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resultThread:Ljava/lang/Thread;

    .line 516
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resultThread:Ljava/lang/Thread;

    const-string v1, "Transport Resolver Result"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resultThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 519
    :cond_0
    return-void
.end method

.method private getRemoteCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->remoteCandidates:Ljava/util/List;

    return-object v0
.end method

.method private isEstablished()Z
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getBestRemoteCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getAcceptedLocalCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 692
    goto :goto_0
.end method

.method private obtainCandidatesList(Lorg/jivesoftware/smackx/packet/Jingle;)Ljava/util/List;
    .locals 9
    .parameter "jingle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/packet/Jingle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    if-eqz p1, :cond_1

    .line 716
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Jingle;->getContentsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 731
    :cond_1
    return-object v3

    .line 716
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/JingleContent;

    .line 717
    .local v0, jingleContent:Lorg/jivesoftware/smackx/packet/JingleContent;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/JingleContent;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->parentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 719
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/JingleContent;->getJingleTransportsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 718
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 719
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/JingleTransport;

    .line 721
    .local v1, jingleTransport:Lorg/jivesoftware/smackx/packet/JingleTransport;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/JingleTransport;->getCandidatesList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 720
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 721
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;

    .line 723
    .local v2, jingleTransportCandidate:Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;->getMediaTransport()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v4

    .line 724
    .local v4, transCand:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private receiveContentAcceptAction(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 7
    .parameter "jingle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 745
    const/4 v2, 0x0

    .line 748
    .local v2, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->obtainCandidatesList(Lorg/jivesoftware/smackx/packet/Jingle;)Ljava/util/List;

    move-result-object v0

    .line 749
    .local v0, accepted:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 751
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 755
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 756
    .local v1, cand:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->setAcceptedLocalCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 758
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->isEstablished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 759
    sget-object v3, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " is set active"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 763
    .end local v1           #cand:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :cond_0
    return-object v2

    .line 751
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 752
    .restart local v1       #cand:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    sget-object v4, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Remote acccepted candidate addr: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private receiveResult(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smackx/packet/Jingle;
    .locals 2
    .parameter "iq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 774
    const/4 v0, 0x0

    .line 776
    .local v0, response:Lorg/jivesoftware/smackx/packet/Jingle;
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->sendTransportCandidatesOffer()V

    .line 777
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->PENDING:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    .line 779
    return-object v0
.end method

.method private receiveSessionAcceptAction(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .parameter "jingle"

    .prologue
    .line 787
    const/4 v0, 0x0

    .line 789
    .local v0, response:Lorg/jivesoftware/smack/packet/IQ;
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v2, "Transport stabilished"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 795
    return-object v0
.end method

.method private receiveSessionInitiateAction(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "jingle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 804
    const/4 v0, 0x0

    .line 810
    .local v0, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->sendTransportCandidatesOffer()V

    .line 814
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-direct {p0, v1, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->delayedCheckBestCandidate(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)V

    .line 817
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->PENDING:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    .line 819
    return-object v0
.end method

.method private receiveTransportInfoAction(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "jingle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 828
    const/4 v0, 0x0

    .line 844
    .local v0, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->obtainCandidatesList(Lorg/jivesoftware/smackx/packet/Jingle;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->addRemoteCandidates(Ljava/util/List;)V

    .line 848
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-direct {p0, v1, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->delayedCheckBestCandidate(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)V

    .line 850
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createAck(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 852
    return-object v0
.end method

.method private declared-synchronized sendTransportCandidateOffer(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 3
    .parameter "cand"

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->isNull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 864
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->addOfferedCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 865
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->parentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getJingleContent()Lorg/jivesoftware/smackx/packet/JingleContent;

    move-result-object v0

    .line 866
    .local v0, content:Lorg/jivesoftware/smackx/packet/JingleContent;
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getJingleTransport(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)Lorg/jivesoftware/smackx/packet/JingleTransport;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/JingleContent;->addJingleTransport(Lorg/jivesoftware/smackx/packet/JingleTransport;)V

    .line 867
    new-instance v1, Lorg/jivesoftware/smackx/packet/Jingle;

    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->TRANSPORT_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/packet/Jingle;-><init>(Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)V

    .line 868
    .local v1, jingle:Lorg/jivesoftware/smackx/packet/Jingle;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/packet/Jingle;->addContent(Lorg/jivesoftware/smackx/packet/JingleContent;)V

    .line 873
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->sendFormattedJingle(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smackx/packet/Jingle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    .end local v0           #content:Lorg/jivesoftware/smackx/packet/JingleContent;
    .end local v1           #jingle:Lorg/jivesoftware/smackx/packet/Jingle;
    :cond_0
    monitor-exit p0

    return-void

    .line 862
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private sendTransportCandidatesOffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 883
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    .line 884
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getCandidatesList()Ljava/util/List;

    move-result-object v1

    .line 886
    .local v1, notOffered:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->offeredCandidates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 889
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 894
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolverListener:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;

    if-nez v2, :cond_0

    .line 896
    new-instance v2, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$3;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$3;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)V

    iput-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolverListener:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;

    .line 911
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolverListener:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->addListener(Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;)V

    .line 914
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->isResolving()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->isResolved()Z

    move-result v2

    if-nez v2, :cond_1

    .line 916
    sget-object v2, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v3, "RESOLVER CALLED"

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 917
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->resolve(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 919
    :cond_1
    return-void

    .line 889
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 890
    .local v0, aNotOffered:Ljava/lang/Object;
    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .end local v0           #aNotOffered:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->sendTransportCandidateOffer(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    goto :goto_0
.end method

.method private setAcceptedLocalCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 4
    .parameter "bestLocalCandidate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 930
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getCandidateCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 940
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BEST: ip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 941
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has not been offered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 940
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 944
    :goto_1
    return-void

    .line 932
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getCandidate(I)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v1

    .line 933
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 934
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getCandidate(I)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v1

    .line 935
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v2

    .line 934
    if-ne v1, v2, :cond_1

    .line 936
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getCandidate(I)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->acceptedLocalCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    goto :goto_1

    .line 930
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private triggerTransportClosed(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 5
    .parameter "cand"

    .prologue
    .line 955
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getListenersList()Ljava/util/List;

    move-result-object v1

    .line 956
    .local v1, listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 962
    return-void

    .line 956
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;

    .line 957
    .local v0, li:Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;
    instance-of v4, v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 958
    check-cast v2, Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;

    .line 959
    .local v2, mli:Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;
    invoke-interface {v2, p1}, Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;->transportClosed(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    goto :goto_0
.end method

.method private triggerTransportEstablished(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 7
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 974
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getListenersList()Ljava/util/List;

    move-result-object v1

    .line 975
    .local v1, listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 984
    return-void

    .line 975
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;

    .line 976
    .local v0, li:Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;
    instance-of v4, v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 977
    check-cast v2, Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;

    .line 978
    .local v2, mli:Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;
    sget-object v4, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "triggerTransportEstablished "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getLocalIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <-> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 980
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 978
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 981
    invoke-interface {v2, p1, p2}, Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;->transportEstablished(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract acceptableTransportCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Ljava/util/List;)Z
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
.end method

.method public close()V
    .locals 0

    .prologue
    .line 356
    invoke-super {p0}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->close()V

    .line 358
    return-void
.end method

.method public final dispatchIncomingPacket(Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/String;)Ljava/util/List;
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
    .line 534
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v3, responses:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/IQ;>;"
    const/4 v2, 0x0

    .line 537
    .local v2, response:Lorg/jivesoftware/smack/packet/IQ;
    if-eqz p1, :cond_1

    .line 538
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 540
    sget-object v4, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->FAILED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    .line 541
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->triggerTransportClosed(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 544
    new-instance v4, Lorg/jivesoftware/smackx/jingle/JingleException;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/XMPPError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smackx/jingle/JingleException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 545
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 547
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->isExpectedId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 548
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->receiveResult(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smackx/packet/Jingle;

    move-result-object v2

    .line 549
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->removeExpectedId(Ljava/lang/String;)V

    .line 588
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_2

    .line 589
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->addExpectedId(Ljava/lang/String;)V

    .line 590
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_2
    return-object v3

    .line 551
    :cond_3
    instance-of v4, p1, Lorg/jivesoftware/smackx/packet/Jingle;

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 553
    check-cast v1, Lorg/jivesoftware/smackx/packet/Jingle;

    .line 554
    .local v1, jingle:Lorg/jivesoftware/smackx/packet/Jingle;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/Jingle;->getAction()Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    move-result-object v0

    .line 556
    .local v0, action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum()[I

    move-result-object v4

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 558
    :pswitch_2
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->receiveContentAcceptAction(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    .line 559
    goto :goto_0

    .line 571
    :pswitch_3
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->receiveSessionInitiateAction(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    .line 572
    goto :goto_0

    .line 575
    :pswitch_4
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->receiveSessionAcceptAction(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    .line 576
    goto :goto_0

    .line 579
    :pswitch_5
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->receiveTransportInfoAction(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    .line 580
    goto :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected doStart()V
    .locals 2

    .prologue
    .line 603
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->sendTransportCandidatesOffer()V

    .line 604
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->PENDING:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 607
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAcceptedLocalCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->acceptedLocalCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    return-object v0
.end method

.method public final getBestLocalCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getPreferredCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBestRemoteCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
.end method

.method public getJingleTransport()Lorg/jivesoftware/smackx/packet/JingleTransport;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getBestRemoteCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getJingleTransport(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)Lorg/jivesoftware/smackx/packet/JingleTransport;

    move-result-object v0

    return-object v0
.end method

.method public abstract getJingleTransport(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)Lorg/jivesoftware/smackx/packet/JingleTransport;
.end method

.method public getOfferedCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->offeredCandidates:Ljava/util/List;

    return-object v0
.end method

.method public final getValidRemoteCandidates()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 672
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getRemoteCandidates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final getValidRemoteCandidatesList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->validRemoteCandidates:Ljava/util/List;

    monitor-enter v1

    .line 682
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->validRemoteCandidates:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isFullyEstablished()Z
    .locals 2

    .prologue
    .line 702
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

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
