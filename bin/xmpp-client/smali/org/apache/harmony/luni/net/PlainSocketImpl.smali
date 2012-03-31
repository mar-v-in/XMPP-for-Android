.class public Lorg/apache/harmony/luni/net/PlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "PlainSocketImpl.java"


# static fields
.field static final FLAG_SHUTDOWN:I = 0x8

.field static final MULTICAST_IF:I = 0x1

.field static final MULTICAST_TTL:I = 0x2

.field static final TCP_NODELAY:I = 0x4

.field private static fdField:Ljava/lang/reflect/Field;

.field private static lastConnectedAddress:Ljava/net/InetAddress;

.field private static lastConnectedPort:I

.field private static localportField:Ljava/lang/reflect/Field;


# instance fields
.field protected netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

.field proxy:Ljava/net/Proxy;

.field public receiveTimeout:I

.field public shutdownInput:Z

.field public streaming:Z

.field private tcpNoDelay:Z

.field private trafficClass:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 68
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->tcpNoDelay:Z

    .line 77
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    .line 89
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 68
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->tcpNoDelay:Z

    .line 77
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    .line 94
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V
    .locals 2
    .parameter "fd"
    .parameter "localport"
    .parameter "addr"
    .parameter "port"

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 68
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->tcpNoDelay:Z

    .line 77
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    .line 100
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 101
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 102
    iput-object p3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 103
    iput p4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->port:I

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>()V

    .line 111
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    .line 112
    return-void
.end method

.method private connect(Ljava/net/InetAddress;II)V
    .locals 7
    .parameter "anAddr"
    .parameter "aPort"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v5

    .line 212
    .local v5, normalAddr:Ljava/net/InetAddress;
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-static {v0}, Lorg/apache/harmony/luni/net/NetUtil;->usingSocks(Ljava/net/Proxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksConnect(Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_1
    iput-object v5, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 231
    iput p2, p0, Ljava/net/SocketImpl;->port:I

    .line 232
    return-void

    .end local v5           #normalAddr:Ljava/net/InetAddress;
    :cond_0
    move-object v5, p1

    .line 210
    goto :goto_0

    .line 216
    .restart local v5       #normalAddr:Ljava/net/InetAddress;
    :cond_1
    if-nez p3, :cond_2

    .line 217
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-interface {v0, v1, v2, v5, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 226
    :catch_0
    move-exception v6

    .line 227
    .local v6, e:Ljava/net/ConnectException;
    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    invoke-virtual {v6}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    .end local v6           #e:Ljava/net/ConnectException;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 220
    iget v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    move v2, p2

    move v3, p3

    .line 219
    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectStreamWithTimeoutSocket(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V

    goto :goto_1

    .line 224
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-interface {v0, v1, p2, v2, v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectDatagram(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private getSocketImplField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .parameter "fieldName"

    .prologue
    .line 306
    new-instance v0, Lorg/apache/harmony/luni/net/PlainSocketImpl$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/luni/net/PlainSocketImpl$1;-><init>(Lorg/apache/harmony/luni/net/PlainSocketImpl;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method

.method private setLocalport(I)V
    .locals 0
    .parameter "localport"

    .prologue
    .line 354
    iput p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 355
    return-void
.end method

.method private socksBind()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 425
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v7

    .line 424
    invoke-interface {v3, v4, v5, v6, v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    sget-object v3, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    if-nez v3, :cond_0

    .line 433
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "luni.0F"

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "luni.0E"

    invoke-static {v4, v0}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 437
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x2

    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    .line 438
    sget v5, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedPort:I

    .line 437
    invoke-direct {p0, v3, v4, v5}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 439
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;

    move-result-object v1

    .line 441
    .local v1, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    .line 442
    new-instance v3, Ljava/io/IOException;

    .line 443
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v4

    .line 442
    invoke-virtual {v1, v4}, Lorg/apache/harmony/luni/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 448
    :cond_1
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getIP()I

    move-result v3

    if-nez v3, :cond_2

    .line 449
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 458
    :goto_0
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getPort()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 459
    return-void

    .line 454
    :cond_2
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 455
    .local v2, replyBytes:[B
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getIP()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/apache/harmony/luni/net/NetUtil;->intToBytes(I[BI)V

    .line 456
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method private socksConnect(Ljava/net/InetAddress;II)V
    .locals 7
    .parameter "applicationServerAddress"
    .parameter "applicationServerPort"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    if-nez p3, :cond_0

    .line 468
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 469
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v4

    .line 468
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksRequestConnection(Ljava/net/InetAddress;I)V

    .line 482
    sput-object p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    .line 483
    sput p2, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedPort:I

    .line 484
    return-void

    .line 471
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 472
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v2

    iget v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    .line 473
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v5

    move v3, p3

    .line 471
    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectStreamWithTimeoutSocket(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v6

    .line 477
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "luni.0D"

    invoke-static {v1, v6}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private socksGetServerAddress()Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 494
    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 495
    .local v0, addr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, proxyName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 497
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 500
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 501
    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv6Addresses()Z

    move-result v4

    .line 500
    invoke-interface {v3, v2, v4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getHostByName(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v1

    .line 502
    .local v1, anAddr:Ljava/net/InetAddress;
    return-object v1
.end method

.method private socksGetServerPort()I
    .locals 2

    .prologue
    .line 512
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 513
    .local v0, addr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method private socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 521
    new-instance v2, Lorg/apache/harmony/luni/net/Socks4Message;

    invoke-direct {v2}, Lorg/apache/harmony/luni/net/Socks4Message;-><init>()V

    .line 522
    .local v2, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    const/4 v0, 0x0

    .line 523
    .local v0, bytesRead:I
    :goto_0
    if-lt v0, v6, :cond_1

    .line 531
    :cond_0
    if-eq v6, v0, :cond_2

    .line 532
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "luni.10"

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 524
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/harmony/luni/net/Socks4Message;->getBytes()[B

    move-result-object v4

    .line 525
    rsub-int/lit8 v5, v0, 0x8

    .line 524
    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 526
    .local v1, count:I
    const/4 v3, -0x1

    if-eq v3, v1, :cond_0

    .line 529
    add-int/2addr v0, v1

    goto :goto_0

    .line 534
    .end local v1           #count:I
    :cond_2
    return-object v2
.end method

.method private socksRequestConnection(Ljava/net/InetAddress;I)V
    .locals 3
    .parameter "applicationServerAddress"
    .parameter "applicationServerPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 545
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;

    move-result-object v0

    .line 546
    .local v0, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    .line 547
    new-instance v1, Ljava/io/IOException;

    .line 548
    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    .line 547
    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_0
    return-void
.end method

.method private socksSendRequest(ILjava/net/InetAddress;I)V
    .locals 5
    .parameter "command"
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    new-instance v0, Lorg/apache/harmony/luni/net/Socks4Message;

    invoke-direct {v0}, Lorg/apache/harmony/luni/net/Socks4Message;-><init>()V

    .line 558
    .local v0, request:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/net/Socks4Message;->setCommandOrResult(I)V

    .line 559
    invoke-virtual {v0, p3}, Lorg/apache/harmony/luni/net/Socks4Message;->setPort(I)V

    .line 560
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/net/Socks4Message;->setIP([B)V

    .line 561
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/net/Socks4Message;->setUserId(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getLength()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 564
    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 8
    .parameter "newImpl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-static {v4}, Lorg/apache/harmony/luni/net/NetUtil;->usingSocks(Ljava/net/Proxy;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 117
    check-cast v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-direct {v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksBind()V

    .line 118
    check-cast p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksAccept()V

    .line 148
    :goto_0
    return-void

    .line 123
    .restart local p1
    :cond_0
    :try_start_0
    instance-of v4, p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    if-eqz v4, :cond_1

    .line 124
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    move-object v3, v0

    .line 125
    .local v3, newPlainSocketImpl:Lorg/apache/harmony/luni/net/PlainSocketImpl;
    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 126
    invoke-virtual {v3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    iget v7, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    .line 125
    invoke-interface {v4, v5, p1, v6, v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->acceptStreamSocket(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V

    .line 127
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getLocalPort()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->setLocalport(I)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 143
    .end local v3           #newPlainSocketImpl:Lorg/apache/harmony/luni/net/PlainSocketImpl;
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Ljava/io/InterruptedIOException;
    new-instance v4, Ljava/net/SocketTimeoutException;

    invoke-virtual {v1}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    .end local v1           #e:Ljava/io/InterruptedIOException;
    :cond_1
    :try_start_1
    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fdField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_2

    .line 132
    const-string v4, "fd"

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getSocketImplField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fdField:Ljava/lang/reflect/Field;

    .line 134
    :cond_2
    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fdField:Ljava/lang/reflect/Field;

    .line 135
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 134
    check-cast v2, Ljava/io/FileDescriptor;

    .line 136
    .local v2, newFd:Ljava/io/FileDescriptor;
    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    invoke-interface {v4, v5, p1, v2, v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->acceptStreamSocket(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V

    .line 138
    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localportField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_3

    .line 139
    const-string v4, "localport"

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getSocketImplField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localportField:Ljava/lang/reflect/Field;

    .line 141
    :cond_3
    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localportField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getLocalPort()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 145
    .end local v2           #newFd:Ljava/io/FileDescriptor;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method protected declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->availableStream(Ljava/io/FileDescriptor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 3
    .parameter "anAddr"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 164
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 165
    if-eqz p2, :cond_0

    .line 166
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 169
    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv6Addresses()Z

    move-result v2

    .line 168
    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalPort(Ljava/io/FileDescriptor;Z)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    goto :goto_0
.end method

.method protected close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 179
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownOutput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socketClose(Ljava/io/FileDescriptor;)V

    .line 184
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 175
    :cond_1
    monitor-exit v1

    .line 187
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 3
    .parameter "aHost"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 244
    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv6Addresses()Z

    move-result v2

    .line 243
    invoke-interface {v1, p1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getHostByName(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v0

    .line 245
    .local v0, anAddr:Ljava/net/InetAddress;
    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 246
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 1
    .parameter "anAddr"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 192
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 3
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 238
    .local v0, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 239
    return-void
.end method

.method protected create(Z)V
    .locals 3
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iput-boolean p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createStreamSocket(Ljava/io/FileDescriptor;Z)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createDatagramSocket(Ljava/io/FileDescriptor;Z)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->close()V

    .line 261
    return-void
.end method

.method getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "luni.0C"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 273
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/harmony/luni/net/SocketInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/net/SocketInputStream;-><init>(Ljava/net/SocketImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 3
    .parameter "optID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 278
    const/16 v1, 0x1006

    if-ne p1, v1, :cond_1

    .line 279
    iget v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 290
    :cond_0
    :goto_0
    return-object v0

    .line 280
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 281
    iget v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, result:Ljava/lang/Object;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 287
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 288
    iget-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->tcpNoDelay:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "luni.0C"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 299
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/harmony/luni/net/SocketOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/net/SocketOutputStream;-><init>(Ljava/net/SocketImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method protected listen(I)V
    .locals 2
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-static {v0}, Lorg/apache/harmony/luni/net/NetUtil;->usingSocks(Ljava/net/Proxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->listenStreamSocket(Ljava/io/FileDescriptor;I)V

    goto :goto_0
.end method

.method read([BII)I
    .locals 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 332
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z

    if-eqz v0, :cond_1

    move v6, v7

    .line 345
    :cond_0
    :goto_0
    return v6

    .line 335
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 336
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->read(Ljava/io/FileDescriptor;[BIII)I

    move-result v6

    .line 338
    .local v6, read:I
    if-nez v6, :cond_2

    .line 339
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    .line 342
    :cond_2
    if-ne v6, v7, :cond_0

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z

    goto :goto_0
.end method

.method protected sendUrgentData(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    int-to-byte v2, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendUrgentData(Ljava/io/FileDescriptor;B)V

    .line 351
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 5
    .parameter "optID"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 359
    const/16 v2, 0x1006

    if-ne p1, v2, :cond_1

    .line 360
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 363
    .restart local p2
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v2, v3, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 364
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 365
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 366
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->tcpNoDelay:Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_2
    if-ne p1, v4, :cond_0

    .line 386
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    goto :goto_0

    .line 368
    .restart local p2
    :catch_0
    move-exception v1

    .line 371
    .local v1, e:Ljava/net/SocketException;
    if-eq p1, v4, :cond_2

    .line 372
    throw v1
.end method

.method protected shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z

    .line 397
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->shutdownInput(Ljava/io/FileDescriptor;)V

    .line 398
    return-void
.end method

.method protected shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->shutdownOutput(Ljava/io/FileDescriptor;)V

    .line 406
    return-void
.end method

.method public socksAccept()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;

    move-result-object v0

    .line 413
    .local v0, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    .line 414
    new-instance v1, Ljava/io/IOException;

    .line 415
    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    .line 414
    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_0
    return-void
.end method

.method protected supportsUrgentData()Z
    .locals 2

    .prologue
    .line 571
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->supportsUrgentData(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method write([BII)I
    .locals 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->port:I

    .line 577
    iget-object v6, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 576
    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendDatagram2(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I

    move-result v0

    .line 579
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    goto :goto_0
.end method
