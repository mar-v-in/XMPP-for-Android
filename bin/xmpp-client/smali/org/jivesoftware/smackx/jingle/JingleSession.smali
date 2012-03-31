.class public Lorg/jivesoftware/smackx/jingle/JingleSession;
.super Lorg/jivesoftware/smackx/jingle/JingleNegotiator;
.source "JingleSession.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/media/MediaReceivedListener;


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

.field private static final randomGenerator:Ljava/util/Random;

.field private static final sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/jingle/JingleSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

.field private final contentNegotiators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/ContentNegotiator;",
            ">;"
        }
    .end annotation
.end field

.field private initiator:Ljava/lang/String;

.field protected jingleMediaManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;",
            ">;"
        }
    .end annotation
.end field

.field packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field packetListener:Lorg/jivesoftware/smack/PacketListener;

.field private responder:Ljava/lang/String;

.field private sessionInitPacketID:Ljava/lang/String;

.field private sessionState:Lorg/jivesoftware/smackx/jingle/JingleSessionState;

.field private sid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 98
    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessions:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->randomGenerator:Ljava/util/Random;

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "conn"
    .parameter "initiator"
    .parameter "responder"
    .parameter "sessionid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p5, jingleMediaManagers:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->jingleMediaManagers:Ljava/util/List;

    .line 253
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->initiator:Ljava/lang/String;

    .line 254
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->responder:Ljava/lang/String;

    .line 255
    iput-object p4, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    .line 256
    iput-object p5, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->jingleMediaManagers:Ljava/util/List;

    .line 257
    invoke-virtual {p0, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->setSession(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 258
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 261
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;->getInstance()Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->setSessionState(Lorg/jivesoftware/smackx/jingle/JingleSessionState;)V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->mediaSessionMap:Ljava/util/Map;

    .line 267
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->registerInstance()V

    .line 268
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->installConnectionListeners(Lorg/jivesoftware/smack/Connection;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "conn"
    .parameter "request"
    .parameter "initiator"
    .parameter "responder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p5, jingleMediaManagers:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;>;"
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleSession;->generateSessionId()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    .line 232
    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/jingle/JingleSession;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 233
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1233
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->unregisterInstanceFor(Lorg/jivesoftware/smack/Connection;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/jingle/JingleSession;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2()Lorg/jivesoftware/smackx/jingle/SmackLogger;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    return-object v0
.end method

.method public static createError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .parameter "ID"
    .parameter "to"
    .parameter "from"
    .parameter "errCode"
    .parameter "error"

    .prologue
    .line 126
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-static {p0, p1, p2, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 127
    .local v0, iqError:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0, p4}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 129
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created Error Packet:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 131
    return-object v0
.end method

.method public static createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .parameter "ID"
    .parameter "to"
    .parameter "from"
    .parameter "type"

    .prologue
    .line 148
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleSession$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession$1;-><init>()V

    .line 155
    .local v0, iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 160
    return-object v0
.end method

.method protected static generateSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/jingle/JingleSession;
    .locals 4
    .parameter "con"

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 179
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 183
    .local v1, result:Lorg/jivesoftware/smackx/jingle/JingleSession;
    sget-object v3, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessions:Ljava/util/HashMap;

    monitor-enter v3

    .line 184
    :try_start_0
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessions:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessions:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/jivesoftware/smackx/jingle/JingleSession;

    move-object v1, v0

    .line 183
    :cond_1
    monitor-exit v3

    .line 189
    return-object v1

    .line 183
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private installConnectionListeners(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 601
    if-eqz p1, :cond_0

    .line 602
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleSession$2;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession$2;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    .line 625
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 627
    :cond_0
    return-void
.end method

.method private registerInstance()V
    .locals 3

    .prologue
    .line 741
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessions:Ljava/util/HashMap;

    monitor-enter v1

    .line 742
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessions:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    monitor-exit v1

    .line 744
    return-void

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeConnectionListener()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 750
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v1, "JINGLE SESSION: REMOVE CONNECTION LISTENER"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 752
    :cond_0
    return-void
.end method

.method private startNegotiators()V
    .locals 4

    .prologue
    .line 1024
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1029
    return-void

    .line 1024
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 1026
    .local v0, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v1

    .line 1027
    .local v1, transNeg:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->start()V

    goto :goto_0
.end method

.method private unregisterInstanceFor(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 1234
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1235
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    monitor-exit v1

    .line 1237
    return-void

    .line 1234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addContentNegotiator(Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V
    .locals 1
    .parameter "inContentNegotiator"

    .prologue
    .line 275
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method public addJingleMediaSession(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;)V
    .locals 1
    .parameter "mediaManagerName"
    .parameter "mediaSession"

    .prologue
    .line 287
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->mediaSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void
.end method

.method public addMediaListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;)V
    .locals 3
    .parameter "li"

    .prologue
    .line 297
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 303
    return-void

    .line 297
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 298
    .local v0, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getMediaNegotiator()Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getMediaNegotiator()Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->addListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    goto :goto_0
.end method

.method public addTransportListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;)V
    .locals 3
    .parameter "li"

    .prologue
    .line 312
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    return-void

    .line 312
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 313
    .local v0, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->addListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    goto :goto_0
.end method

.method public close()V
    .locals 5

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateEnded;->getInstance()Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->setSessionState(Lorg/jivesoftware/smackx/jingle/JingleSessionState;)V

    .line 331
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 342
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->removePacketListener()V

    .line 343
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->removeConnectionListener()V

    .line 344
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/Connection;->removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 345
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Negotiation Closed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 346
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 347
    invoke-super {p0}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->close()V

    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 333
    .local v1, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->stopJingleMediaSession()V

    .line 336
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getOfferedCandidates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 335
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 340
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->close()V

    goto :goto_1

    .line 336
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 337
    .local v0, candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->removeCandidateEcho()V

    goto :goto_2
.end method

.method public createAck(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .parameter "iq"

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 360
    .local v1, result:Lorg/jivesoftware/smack/packet/IQ;
    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getTo()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 363
    invoke-static {v2, v3, v4, v5}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 369
    .local v0, ack:Lorg/jivesoftware/smack/packet/IQ;
    move-object v1, v0

    .line 372
    .end local v0           #ack:Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    return-object v1
.end method

.method public createJingleError(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smackx/packet/JingleError;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 7
    .parameter "iq"
    .parameter "jingleError"

    .prologue
    .line 386
    const/4 v6, 0x0

    .line 387
    .local v6, errorPacket:Lorg/jivesoftware/smack/packet/IQ;
    if-eqz p2, :cond_0

    .line 388
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getTo()Ljava/lang/String;

    move-result-object v3

    .line 389
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 388
    invoke-static {v1, v2, v3, v4}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v6

    .line 391
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v5, extList:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    const/4 v1, 0x0

    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 394
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/JingleError;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 393
    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILorg/jivesoftware/smack/packet/XMPPError$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 397
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v6, v0}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 403
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error sent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->error(Ljava/lang/String;)V

    .line 405
    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v5           #extList:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    :cond_0
    return-object v6
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
    .line 421
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v3, responses:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/IQ;>;"
    const/4 v2, 0x0

    .line 424
    .local v2, response:Lorg/jivesoftware/smack/packet/IQ;
    if-eqz p1, :cond_1

    .line 425
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 428
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 430
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/jingle/JingleSession;->isExpectedId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessionInitPacketID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->startNegotiators()V

    .line 438
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/jingle/JingleSession;->removeExpectedId(Ljava/lang/String;)V

    .line 452
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 454
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addExpectedId(Ljava/lang/String;)V

    .line 455
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_2
    return-object v3

    .line 440
    :cond_3
    instance-of v4, p1, Lorg/jivesoftware/smackx/packet/Jingle;

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 442
    check-cast v1, Lorg/jivesoftware/smackx/packet/Jingle;

    .line 443
    .local v1, jin:Lorg/jivesoftware/smackx/packet/Jingle;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/Jingle;->getAction()Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    move-result-object v0

    .line 448
    .local v0, action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSessionState()Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    move-result-object v4

    invoke-virtual {v4, p0, v1, v0}, Lorg/jivesoftware/smackx/jingle/JingleSessionState;->processJingle(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    goto :goto_0
.end method

.method protected doStart()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 477
    if-ne p0, p1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v1

    .line 480
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 481
    goto :goto_0

    .line 483
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 484
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 487
    check-cast v0, Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 489
    .local v0, other:Lorg/jivesoftware/smackx/jingle/JingleSession;
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->initiator:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 490
    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->initiator:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 491
    goto :goto_0

    .line 493
    :cond_4
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->initiator:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->initiator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    :cond_5
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->responder:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 499
    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->responder:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 500
    goto :goto_0

    .line 502
    :cond_6
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->responder:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->responder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 503
    goto :goto_0

    .line 506
    :cond_7
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 507
    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 508
    goto :goto_0

    .line 510
    :cond_8
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 511
    goto :goto_0
.end method

.method public getConnection()Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method public getInitiator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->initiator:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaManagers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->jingleMediaManagers:Ljava/util/List;

    return-object v0
.end method

.method public getMediaSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;
    .locals 1
    .parameter "mediaManagerName"

    .prologue
    .line 553
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->mediaSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;

    return-object v0
.end method

.method public getResponder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->responder:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionState()Lorg/jivesoftware/smackx/jingle/JingleSessionState;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessionState:Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 591
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/packet/Jingle;->getSessionHash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSessionState()Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    move-result-object v0

    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateEnded;->getInstance()Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFullyEstablished()Z
    .locals 4

    .prologue
    .line 637
    const/4 v1, 0x1

    .line 638
    .local v1, result:Z
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 643
    return v1

    .line 638
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 639
    .local v0, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->isFullyEstablished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 640
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mediaReceived(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 653
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->triggerMediaReceived(Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method public declared-synchronized receivePacketAndRespond(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 9
    .parameter "iq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v5, responses:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/IQ;>;"
    const/4 v4, 0x0

    .line 676
    .local v4, responseId:Ljava/lang/String;
    sget-object v6, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Packet: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v6}, Lorg/jivesoftware/smackx/jingle/JingleSession;->dispatchIncomingPacket(Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 684
    if-eqz p1, :cond_0

    .line 685
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 692
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/jivesoftware/smackx/jingle/JingleException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 732
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-nez v7, :cond_4

    .line 735
    monitor-exit p0

    return-void

    .line 692
    :cond_1
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 700
    .local v0, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->isStarted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 701
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->start()V

    .line 703
    :cond_2
    invoke-virtual {v0, p1, v4}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->dispatchIncomingPacket(Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/jivesoftware/smackx/jingle/JingleException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 714
    .end local v0           #contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    :catch_0
    move-exception v1

    .line 716
    .local v1, e:Lorg/jivesoftware/smackx/jingle/JingleException;
    :try_start_4
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleException;->getError()Lorg/jivesoftware/smackx/packet/JingleError;

    move-result-object v2

    .line 717
    .local v2, error:Lorg/jivesoftware/smackx/packet/JingleError;
    if-eqz v2, :cond_3

    .line 718
    invoke-virtual {p0, p1, v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createJingleError(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smackx/packet/JingleError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_3
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->triggerSessionClosedOnError(Lorg/jivesoftware/smack/XMPPException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 672
    .end local v1           #e:Lorg/jivesoftware/smackx/jingle/JingleException;
    .end local v2           #error:Lorg/jivesoftware/smackx/packet/JingleError;
    .end local v4           #responseId:Ljava/lang/String;
    .end local v5           #responses:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/IQ;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 732
    .restart local v4       #responseId:Ljava/lang/String;
    .restart local v5       #responses:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/IQ;>;"
    :cond_4
    :try_start_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 733
    .local v3, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public removeMediaListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;)V
    .locals 3
    .parameter "li"

    .prologue
    .line 761
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 766
    return-void

    .line 761
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 762
    .local v0, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getMediaNegotiator()Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 763
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getMediaNegotiator()Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;->removeListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    goto :goto_0
.end method

.method protected removePacketListener()V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 775
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v1, "JINGLE SESSION: REMOVE PACKET LISTENER"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 777
    :cond_0
    return-void
.end method

.method public removeTransportListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;)V
    .locals 3
    .parameter "li"

    .prologue
    .line 786
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 791
    return-void

    .line 786
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 787
    .local v0, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 788
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->removeListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    goto :goto_0
.end method

.method public sendFormattedJingle(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smackx/packet/Jingle;
    .locals 3
    .parameter "iq"
    .parameter "jout"

    .prologue
    .line 806
    if-eqz p2, :cond_5

    .line 807
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/Jingle;->getInitiator()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 808
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jivesoftware/smackx/packet/Jingle;->setInitiator(Ljava/lang/String;)V

    .line 811
    :cond_0
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/Jingle;->getResponder()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 812
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getResponder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jivesoftware/smackx/packet/Jingle;->setResponder(Ljava/lang/String;)V

    .line 815
    :cond_1
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/Jingle;->getSid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 816
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jivesoftware/smackx/packet/Jingle;->setSid(Ljava/lang/String;)V

    .line 819
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, me:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getResponder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, other:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/Jingle;->getTo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 824
    if-eqz p1, :cond_7

    .line 825
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jivesoftware/smackx/packet/Jingle;->setTo(Ljava/lang/String;)V

    .line 831
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/Jingle;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 832
    if-eqz p1, :cond_8

    .line 833
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jivesoftware/smackx/packet/Jingle;->setFrom(Ljava/lang/String;)V

    .line 840
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 841
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 844
    .end local v0           #me:Ljava/lang/String;
    .end local v1           #other:Ljava/lang/String;
    :cond_5
    return-object p2

    .line 821
    .restart local v0       #me:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getResponder()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 827
    .restart local v1       #other:Ljava/lang/String;
    :cond_7
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smackx/packet/Jingle;->setTo(Ljava/lang/String;)V

    goto :goto_1

    .line 835
    :cond_8
    invoke-virtual {p2, v0}, Lorg/jivesoftware/smackx/packet/Jingle;->setFrom(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public sendFormattedJingle(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smackx/packet/Jingle;
    .locals 1
    .parameter "jout"

    .prologue
    .line 855
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->sendFormattedJingle(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smackx/packet/Jingle;

    move-result-object v0

    return-object v0
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 1
    .parameter "iq"

    .prologue
    .line 860
    instance-of v0, p1, Lorg/jivesoftware/smackx/packet/Jingle;

    if-eqz v0, :cond_0

    .line 862
    check-cast p1, Lorg/jivesoftware/smackx/packet/Jingle;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->sendFormattedJingle(Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smackx/packet/Jingle;

    .line 868
    :goto_0
    return-void

    .line 866
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public setInitiator(Ljava/lang/String;)V
    .locals 0
    .parameter "initiator"

    .prologue
    .line 879
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->initiator:Ljava/lang/String;

    .line 880
    return-void
.end method

.method public setMediaManagers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p1, jingleMediaManagers:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;>;"
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->jingleMediaManagers:Ljava/util/List;

    .line 889
    return-void
.end method

.method public setResponder(Ljava/lang/String;)V
    .locals 0
    .parameter "responder"

    .prologue
    .line 898
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->responder:Ljava/lang/String;

    .line 899
    return-void
.end method

.method public setSessionState(Lorg/jivesoftware/smackx/jingle/JingleSessionState;)V
    .locals 3
    .parameter "stateIs"

    .prologue
    .line 907
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session state change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessionState:Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/JingleSessionState;->enter()V

    .line 909
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessionState:Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    .line 910
    return-void
.end method

.method protected setSid(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionId"

    .prologue
    .line 919
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sid:Ljava/lang/String;

    .line 920
    return-void
.end method

.method public setupListeners()V
    .locals 2

    .prologue
    .line 929
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleSession$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession$3;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 957
    .local v0, jingleMediaListener:Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;
    new-instance v1, Lorg/jivesoftware/smackx/jingle/JingleSession$4;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession$4;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 1002
    .local v1, jingleTransportListener:Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addMediaListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;)V

    .line 1003
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addTransportListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;)V

    .line 1004
    return-void
.end method

.method public startIncoming()V
    .locals 0

    .prologue
    .line 1014
    return-void
.end method

.method public startOutgoing()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1038
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->updatePacketListener()V

    .line 1039
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleSessionStatePending;->getInstance()Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/jivesoftware/smackx/jingle/JingleSession;->setSessionState(Lorg/jivesoftware/smackx/jingle/JingleSessionState;)V

    .line 1041
    new-instance v3, Lorg/jivesoftware/smackx/packet/Jingle;

    sget-object v7, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_INITIATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-direct {v3, v7}, Lorg/jivesoftware/smackx/packet/Jingle;-><init>(Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)V

    .line 1044
    .local v3, jingle:Lorg/jivesoftware/smackx/packet/Jingle;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getMediaManagers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1076
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1081
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/Jingle;->getPacketID()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->sessionInitPacketID:Ljava/lang/String;

    .line 1083
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 1087
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->setupListeners()V

    .line 1100
    return-void

    .line 1044
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

    .line 1045
    .local v4, mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;
    new-instance v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 1046
    const-string v8, "initiator"

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1045
    invoke-direct {v0, p0, v8, v9}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    .local v0, contentNeg:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    new-instance v8, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    .line 1050
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->getPayloads()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, p0, v4, v9, v0}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;Ljava/util/List;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V

    .line 1049
    invoke-virtual {v0, v8}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->setMediaNegotiator(Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;)V

    .line 1053
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->getTransportManager()Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;

    move-result-object v6

    .line 1054
    .local v6, transportManager:Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;
    const/4 v5, 0x0

    .line 1056
    .local v5, resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
    :try_start_0
    invoke-virtual {v6, p0}, Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;->getResolver(Lorg/jivesoftware/smackx/jingle/JingleSession;)Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1061
    :goto_2
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getType()Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    move-result-object v8

    sget-object v9, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;->rawupd:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1063
    new-instance v8, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$RawUdp;

    invoke-direct {v8, p0, v5, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$RawUdp;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V

    invoke-virtual {v0, v8}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->setTransportNegotiator(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)V

    .line 1066
    :cond_1
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getType()Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    move-result-object v8

    sget-object v9, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;->ice:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1067
    new-instance v8, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$Ice;

    .line 1068
    invoke-direct {v8, p0, v5, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$Ice;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V

    .line 1067
    invoke-virtual {v0, v8}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->setTransportNegotiator(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)V

    .line 1071
    :cond_2
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addContentNegotiator(Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v2

    .line 1058
    .local v2, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_2

    .line 1076
    .end local v0           #contentNeg:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    .end local v2           #e:Lorg/jivesoftware/smack/XMPPException;
    .end local v4           #mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;
    .end local v5           #resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
    .end local v6           #transportManager:Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 1077
    .local v1, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getJingleContent()Lorg/jivesoftware/smackx/packet/JingleContent;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/jivesoftware/smackx/packet/Jingle;->addContent(Lorg/jivesoftware/smackx/packet/JingleContent;)V

    goto :goto_1
.end method

.method public terminate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1137
    const-string v0, "Closed Locally"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->terminate(Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method public terminate(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1146
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1149
    :cond_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Terminate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 1150
    new-instance v0, Lorg/jivesoftware/smackx/packet/Jingle;

    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_TERMINATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/packet/Jingle;-><init>(Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)V

    .line 1151
    .local v0, jout:Lorg/jivesoftware/smackx/packet/Jingle;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/Jingle;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1152
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 1153
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->triggerSessionClosed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected triggerMediaReceived(Ljava/lang/String;)V
    .locals 5
    .parameter "participant"

    .prologue
    .line 1172
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getListenersList()Ljava/util/List;

    move-result-object v1

    .line 1173
    .local v1, listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1179
    return-void

    .line 1173
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;

    .line 1174
    .local v0, li:Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;
    instance-of v4, v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 1175
    check-cast v2, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;

    .line 1176
    .local v2, sli:Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;
    invoke-interface {v2, p0, p1}, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;->sessionMediaReceived(Lorg/jivesoftware/smackx/jingle/JingleSession;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected triggerSessionClosed(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 1194
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getListenersList()Ljava/util/List;

    move-result-object v1

    .line 1195
    .local v1, listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1201
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->close()V

    .line 1202
    return-void

    .line 1195
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;

    .line 1196
    .local v0, li:Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;
    instance-of v4, v0, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 1197
    check-cast v2, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;

    .line 1198
    .local v2, sli:Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;
    invoke-interface {v2, p1, p0}, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;->sessionClosed(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    goto :goto_0
.end method

.method protected triggerSessionClosedOnError(Lorg/jivesoftware/smack/XMPPException;)V
    .locals 8
    .parameter "exc"

    .prologue
    .line 1208
    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1217
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getListenersList()Ljava/util/List;

    move-result-object v3

    .line 1218
    .local v3, listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1224
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->close()V

    .line 1225
    return-void

    .line 1208
    .end local v3           #listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 1210
    .local v1, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->stopJingleMediaSession()V

    .line 1213
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getTransportNegotiator()Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getOfferedCandidates()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1212
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1213
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 1214
    .local v0, candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->removeCandidateEcho()V

    goto :goto_1

    .line 1218
    .end local v0           #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v1           #contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    .restart local v3       #listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;

    .line 1219
    .local v2, li:Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;
    instance-of v6, v2, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;

    if-eqz v6, :cond_1

    move-object v4, v2

    .line 1220
    check-cast v4, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;

    .line 1221
    .local v4, sli:Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;
    invoke-interface {v4, p1, p0}, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;->sessionClosedOnError(Lorg/jivesoftware/smack/XMPPException;Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    goto :goto_0
.end method

.method protected updatePacketListener()V
    .locals 3

    .prologue
    .line 1244
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->removePacketListener()V

    .line 1246
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSession;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v1, "UpdatePacketListener"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 1248
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleSession$5;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession$5;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 1259
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleSession$6;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession$6;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 1310
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 1311
    return-void
.end method
