.class public Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;
.super Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
.source "ICEResolver.java"


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

.field static negociatorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/javawi/jstun/test/demo/ice/ICENegociator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field connection:Lorg/jivesoftware/smack/Connection;

.field port:I

.field random:Ljava/util/Random;

.field server:Ljava/lang/String;

.field sid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 54
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->negociatorsMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;I)V
    .locals 1
    .parameter "connection"
    .parameter "server"
    .parameter "port"

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->random:Ljava/util/Random;

    .line 68
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->connection:Lorg/jivesoftware/smack/Connection;

    .line 69
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->server:Ljava/lang/String;

    .line 70
    iput p3, p0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->port:I

    .line 71
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;->ice:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->setType(Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;)V

    .line 72
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
    .line 77
    return-void
.end method

.method public initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->isResolving()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->isResolved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v2, "Initialized"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 91
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->negociatorsMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->server:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    new-instance v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->server:Ljava/lang/String;

    .line 93
    iget v2, p0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->port:I

    const/4 v3, 0x1

    .line 92
    invoke-direct {v0, v1, v2, v3}, Lde/javawi/jstun/test/demo/ice/ICENegociator;-><init>(Ljava/lang/String;IS)V

    .line 94
    .local v0, iceNegociator:Lde/javawi/jstun/test/demo/ice/ICENegociator;
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->negociatorsMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->server:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {v0}, Lde/javawi/jstun/test/demo/ice/ICENegociator;->gatherCandidateAddresses()V

    .line 99
    invoke-virtual {v0}, Lde/javawi/jstun/test/demo/ice/ICENegociator;->prioritizeCandidates()V

    .line 103
    .end local v0           #iceNegociator:Lde/javawi/jstun/test/demo/ice/ICENegociator;
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->setInitialized()V

    .line 104
    return-void
.end method

.method public declared-synchronized resolve(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 42
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->setResolveInit()V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->getCandidatesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 121
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->clear()V

    .line 125
    sget-object v3, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->negociatorsMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->server:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lde/javawi/jstun/test/demo/ice/ICENegociator;

    .line 126
    .local v34, iceNegociator:Lde/javawi/jstun/test/demo/ice/ICENegociator;
    invoke-virtual/range {v34 .. v34}, Lde/javawi/jstun/test/demo/ice/ICENegociator;->getSortedCandidates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->serviceAvailable(Lorg/jivesoftware/smack/Connection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->getLocalHost()Ljava/lang/String;

    move-result-object v37

    .line 211
    .local v37, localIp:Ljava/lang/String;
    const/4 v14, 0x0

    .line 214
    .local v14, network:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->sid:J

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->connection:Lorg/jivesoftware/smack/Connection;

    .line 217
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->sid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-static {v3, v4}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getRTPBridge(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;

    move-result-object v40

    .line 219
    .local v40, rtpBridge:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    new-instance v11, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 220
    invoke-virtual/range {v40 .. v40}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getIp()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 220
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 221
    invoke-virtual/range {v40 .. v40}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPortA()I

    move-result v16

    .line 222
    const-string v17, "1"

    const/16 v18, 0x0

    sget-object v19, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->relay:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    .line 219
    invoke-direct/range {v11 .. v19}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;)V

    .line 223
    .local v11, localCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V

    .line 225
    new-instance v15, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 226
    invoke-virtual/range {v40 .. v40}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getIp()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 226
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    .line 227
    invoke-virtual/range {v40 .. v40}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPortB()I

    move-result v20

    .line 228
    const-string v21, "1"

    const/16 v22, 0x0

    sget-object v23, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->relay:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move/from16 v18, v14

    .line 225
    invoke-direct/range {v15 .. v23}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;)V

    .line 229
    .local v15, remoteCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v11, v15}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setSymmetric(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 232
    invoke-virtual {v15, v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setSymmetric(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 234
    invoke-virtual/range {v40 .. v40}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setPassword(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {v40 .. v40}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setPassword(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {v40 .. v40}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setSessionId(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {v40 .. v40}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setSessionId(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v11, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setConnection(Lorg/jivesoftware/smack/Connection;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v15, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setConnection(Lorg/jivesoftware/smack/Connection;)V

    .line 243
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->addCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPublicIP(Lorg/jivesoftware/smack/Connection;)Ljava/lang/String;

    move-result-object v17

    .line 263
    .local v17, publicIp:Ljava/lang/String;
    if-eqz v17, :cond_2

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 265
    const/16 v36, 0x0

    .line 268
    .local v36, ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v36

    .line 275
    :goto_2
    const/16 v29, 0x0

    .line 277
    .local v29, found:Z
    :cond_1
    :goto_3
    :try_start_2
    invoke-interface/range {v36 .. v36}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_a

    .line 293
    if-nez v29, :cond_2

    .line 295
    :try_start_3
    new-instance v16, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 296
    const/16 v18, 0x1

    const/16 v19, 0x0

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 296
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    .line 298
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->getFreePort()I

    move-result v21

    const-string v22, "1"

    const/16 v23, 0x0

    .line 299
    sget-object v24, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->srflx:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    .line 295
    invoke-direct/range {v16 .. v24}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;)V

    .line 301
    .local v16, publicCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 300
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_6

    .line 304
    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->addCandidateEcho(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_6

    .line 309
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->addCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_6

    .line 319
    .end local v11           #localCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v14           #network:I
    .end local v15           #remoteCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v16           #publicCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v17           #publicIp:Ljava/lang/String;
    .end local v29           #found:Z
    .end local v36           #ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v37           #localIp:Ljava/lang/String;
    .end local v40           #rtpBridge:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    :cond_2
    :goto_5
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->setResolveEnd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 114
    .end local v34           #iceNegociator:Lde/javawi/jstun/test/demo/ice/ICENegociator;
    :cond_3
    :try_start_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 115
    .local v25, candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    if-eqz v4, :cond_0

    .line 116
    move-object/from16 v0, v25

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    move-object/from16 v33, v0

    .line 117
    .local v33, iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-virtual/range {v33 .. v33}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->removeCandidateEcho()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 112
    .end local v25           #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v33           #iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 126
    .restart local v34       #iceNegociator:Lde/javawi/jstun/test/demo/ice/ICENegociator;
    :cond_4
    :try_start_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lde/javawi/jstun/test/demo/ice/Candidate;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 129
    .local v25, candidate:Lde/javawi/jstun/test/demo/ice/Candidate;
    :try_start_9
    invoke-virtual/range {v25 .. v25}, Lde/javawi/jstun/test/demo/ice/Candidate;->getCandidateType()Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-result-object v41

    .line 130
    .local v41, type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    sget-object v10, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->local:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    .line 131
    .local v10, iceType:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    sget-object v3, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->ServerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    sget-object v10, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->srflx:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_2

    .line 143
    :goto_6
    const/4 v5, 0x0

    .line 146
    .local v5, nicNum:S
    :try_start_a
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v39

    .line 147
    .local v39, nics:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    const/16 v30, 0x0

    .line 149
    .local v30, i:S
    invoke-virtual/range {v25 .. v25}, Lde/javawi/jstun/test/demo/ice/Candidate;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 149
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v38

    .line 151
    .local v38, nic:Ljava/net/NetworkInterface;
    :goto_7
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_2

    move-result v3

    if-nez v3, :cond_8

    .line 164
    .end local v30           #i:S
    .end local v38           #nic:Ljava/net/NetworkInterface;
    .end local v39           #nics:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_8
    :try_start_b
    new-instance v2, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 165
    invoke-virtual/range {v25 .. v25}, Lde/javawi/jstun/test/demo/ice/Candidate;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v3

    invoke-virtual {v3}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 167
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual/range {v25 .. v25}, Lde/javawi/jstun/test/demo/ice/Candidate;->getPort()I

    move-result v7

    const-string v8, "1"

    invoke-virtual/range {v25 .. v25}, Lde/javawi/jstun/test/demo/ice/Candidate;->getPriority()I

    move-result v9

    .line 164
    invoke-direct/range {v2 .. v10}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;)V

    .line 170
    .local v2, transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual/range {v25 .. v25}, Lde/javawi/jstun/test/demo/ice/Candidate;->getBase()Lde/javawi/jstun/test/demo/ice/Candidate;

    move-result-object v3

    invoke-virtual {v3}, Lde/javawi/jstun/test/demo/ice/Candidate;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v3

    .line 171
    invoke-virtual {v3}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->getFreePort()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setPort(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_2

    .line 174
    :try_start_c
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->addCandidateEcho(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_2

    .line 178
    :goto_9
    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->addCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 180
    sget-object v3, Lorg/jivesoftware/smackx/jingle/nat/ICEResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Candidate addr: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {v25 .. v25}, Lde/javawi/jstun/test/demo/ice/Candidate;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v6

    invoke-virtual {v6}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 182
    invoke-virtual/range {v25 .. v25}, Lde/javawi/jstun/test/demo/ice/Candidate;->getBase()Lde/javawi/jstun/test/demo/ice/Candidate;

    move-result-object v6

    invoke-virtual {v6}, Lde/javawi/jstun/test/demo/ice/Candidate;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v6

    invoke-virtual {v6}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    const-string v6, " Priority:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lde/javawi/jstun/test/demo/ice/Candidate;->getPriority()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_1

    .line 185
    .end local v2           #transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v5           #nicNum:S
    .end local v10           #iceType:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    .end local v41           #type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    :catch_0
    move-exception v27

    .line 186
    .local v27, e:Lde/javawi/jstun/util/UtilityException;
    :try_start_e
    invoke-virtual/range {v27 .. v27}, Lde/javawi/jstun/util/UtilityException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 133
    .end local v27           #e:Lde/javawi/jstun/util/UtilityException;
    .restart local v10       #iceType:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    .restart local v41       #type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    :cond_5
    :try_start_f
    sget-object v3, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->PeerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 134
    sget-object v10, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->prflx:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    goto/16 :goto_6

    .line 135
    :cond_6
    sget-object v3, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->Relayed:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 136
    sget-object v10, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->relay:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    goto/16 :goto_6

    .line 138
    :cond_7
    sget-object v10, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->host:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_6

    .line 152
    .restart local v5       #nicNum:S
    .restart local v30       #i:S
    .restart local v38       #nic:Ljava/net/NetworkInterface;
    .restart local v39       #nics:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_8
    :try_start_10
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/net/NetworkInterface;

    .line 153
    .local v26, checkNIC:Ljava/net/NetworkInterface;
    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/net/NetworkInterface;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_2

    move-result v3

    if-eqz v3, :cond_9

    .line 154
    move/from16 v5, v30

    .line 155
    goto/16 :goto_8

    .line 157
    :cond_9
    add-int/lit8 v3, v30, 0x1

    int-to-short v0, v3

    move/from16 v30, v0

    goto/16 :goto_7

    .line 159
    .end local v26           #checkNIC:Ljava/net/NetworkInterface;
    .end local v30           #i:S
    .end local v38           #nic:Ljava/net/NetworkInterface;
    .end local v39           #nics:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_1
    move-exception v28

    .line 161
    .local v28, e1:Ljava/net/SocketException;
    :try_start_11
    invoke-virtual/range {v28 .. v28}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_8

    .line 187
    .end local v5           #nicNum:S
    .end local v10           #iceType:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    .end local v28           #e1:Ljava/net/SocketException;
    .end local v41           #type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    :catch_2
    move-exception v27

    .line 188
    .local v27, e:Ljava/net/UnknownHostException;
    :try_start_12
    invoke-virtual/range {v27 .. v27}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 175
    .end local v27           #e:Ljava/net/UnknownHostException;
    .restart local v2       #transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .restart local v5       #nicNum:S
    .restart local v10       #iceType:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    .restart local v41       #type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    :catch_3
    move-exception v27

    .line 176
    .local v27, e:Ljava/net/SocketException;
    :try_start_13
    invoke-virtual/range {v27 .. v27}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_9

    .line 269
    .end local v2           #transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v5           #nicNum:S
    .end local v10           #iceType:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    .end local v25           #candidate:Lde/javawi/jstun/test/demo/ice/Candidate;
    .end local v27           #e:Ljava/net/SocketException;
    .end local v41           #type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    .restart local v11       #localCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .restart local v14       #network:I
    .restart local v15       #remoteCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .restart local v17       #publicIp:Ljava/lang/String;
    .restart local v36       #ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v37       #localIp:Ljava/lang/String;
    .restart local v40       #rtpBridge:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    :catch_4
    move-exception v27

    .line 270
    .restart local v27       #e:Ljava/net/SocketException;
    :try_start_14
    invoke-virtual/range {v27 .. v27}, Ljava/net/SocketException;->printStackTrace()V

    goto/16 :goto_2

    .line 280
    .end local v27           #e:Ljava/net/SocketException;
    .restart local v29       #found:Z
    :cond_a
    invoke-interface/range {v36 .. v36}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/net/NetworkInterface;

    .line 281
    .local v35, iface:Ljava/net/NetworkInterface;
    invoke-virtual/range {v35 .. v35}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v32

    .line 283
    .local v32, iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_b
    invoke-interface/range {v32 .. v32}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    invoke-interface/range {v32 .. v32}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/net/InetAddress;

    .line 286
    .local v31, iaddress:Ljava/net/InetAddress;
    invoke-virtual/range {v31 .. v31}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_b

    .line 287
    const/16 v29, 0x1

    .line 288
    goto/16 :goto_3

    .line 305
    .end local v31           #iaddress:Ljava/net/InetAddress;
    .end local v32           #iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v35           #iface:Ljava/net/NetworkInterface;
    .restart local v16       #publicCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :catch_5
    move-exception v27

    .line 306
    .restart local v27       #e:Ljava/net/SocketException;
    :try_start_15
    invoke-virtual/range {v27 .. v27}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_15} :catch_6

    goto/16 :goto_4

    .line 310
    .end local v16           #publicCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v27           #e:Ljava/net/SocketException;
    :catch_6
    move-exception v27

    .line 311
    .local v27, e:Ljava/net/UnknownHostException;
    :try_start_16
    invoke-virtual/range {v27 .. v27}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_5
.end method
