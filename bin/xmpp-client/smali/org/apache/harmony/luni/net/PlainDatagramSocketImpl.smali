.class public Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# static fields
.field static final FLAG_SHUTDOWN:I = 0x8

.field static final IP_MULTICAST_ADD:I = 0x13

.field static final IP_MULTICAST_DROP:I = 0x14

.field static final IP_MULTICAST_TTL:I = 0x11

.field static final MULTICAST_IF:I = 0x1

.field static final MULTICAST_TTL:I = 0x2

.field static final REUSEADDR_AND_REUSEPORT:I = 0x2711

.field private static final SO_BROADCAST:I = 0x20

.field static final TCP_NODELAY:I = 0x4


# instance fields
.field private final bindToDevice:Z

.field private connectedAddress:Ljava/net/InetAddress;

.field private connectedPort:I

.field private ipaddress:[B

.field private volatile isNativeConnected:Z

.field private final netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

.field public receiveTimeout:I

.field public shutdownInput:Z

.field public streaming:Z

.field private trafficClass:I

.field private ttl:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->bindToDevice:Z

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ipaddress:[B

    .line 78
    iput v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    .line 80
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 86
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->streaming:Z

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 107
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 2
    .parameter "fd"
    .parameter "localPort"

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->bindToDevice:Z

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ipaddress:[B

    .line 78
    iput v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    .line 80
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 86
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->streaming:Z

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 112
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 113
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->localPort:I

    .line 114
    return-void
.end method

.method private updatePacketRecvAddress(Ljava/net/DatagramPacket;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 437
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 438
    iget v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 439
    return-void
.end method


# virtual methods
.method public bind(ILjava/net/InetAddress;)V
    .locals 4
    .parameter "port"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v2, "bindToDevice"

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, prop:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p2, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    iput p1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->localPort:I

    .line 130
    :goto_0
    const/16 v1, 0x20

    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 125
    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv6Addresses()Z

    move-result v3

    .line 124
    invoke-interface {v1, v2, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalPort(Ljava/io/FileDescriptor;Z)I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->localPort:I

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socketClose(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 137
    :cond_0
    monitor-exit v1

    .line 146
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 4
    .parameter "inetAddr"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->trafficClass:I

    invoke-interface {v1, v2, p2, v3, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectDatagram(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V

    .line 156
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    .line 165
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v1, Ljava/net/SocketException;

    .line 161
    const-string v2, "luni.1A"

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public create()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createDatagramSocket(Ljava/io/FileDescriptor;Z)V

    .line 170
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->disconnectDatagram(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    .line 183
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->close()V

    .line 188
    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 4
    .parameter "optID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 192
    const/16 v2, 0x1006

    if-ne p1, v2, :cond_1

    .line 193
    iget v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 208
    :cond_0
    :goto_0
    return-object v1

    .line 194
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 195
    iget v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->trafficClass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v2, v3, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v1

    .line 200
    .local v1, result:Ljava/lang/Object;
    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    .line 201
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 203
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ipaddress:[B

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTTL()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 228
    .local v0, result:B
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 229
    iget v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    int-to-byte v0, v1

    .line 231
    .end local v0           #result:B
    :cond_0
    return v0
.end method

.method public getTimeToLive()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 217
    .local v0, result:I
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 218
    iget v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    .line 220
    .end local v0           #result:I
    :cond_0
    return v0
.end method

.method public join(Ljava/net/InetAddress;)V
    .locals 2
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/16 v0, 0x13

    new-instance v1, Lorg/apache/harmony/luni/net/GenericIPMreq;

    invoke-direct {v1, p1}, Lorg/apache/harmony/luni/net/GenericIPMreq;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 237
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .parameter "addr"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 243
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 244
    .end local p1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 245
    .local v0, groupAddr:Ljava/net/InetAddress;
    const/16 v1, 0x13

    new-instance v2, Lorg/apache/harmony/luni/net/GenericIPMreq;

    .line 246
    invoke-direct {v2, v0, p2}, Lorg/apache/harmony/luni/net/GenericIPMreq;-><init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    .line 245
    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 248
    .end local v0           #groupAddr:Ljava/net/InetAddress;
    :cond_0
    return-void
.end method

.method public leave(Ljava/net/InetAddress;)V
    .locals 2
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    const/16 v0, 0x14

    new-instance v1, Lorg/apache/harmony/luni/net/GenericIPMreq;

    invoke-direct {v1, p1}, Lorg/apache/harmony/luni/net/GenericIPMreq;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 253
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .parameter "addr"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 259
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 260
    .end local p1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 261
    .local v0, groupAddr:Ljava/net/InetAddress;
    const/16 v1, 0x14

    new-instance v2, Lorg/apache/harmony/luni/net/GenericIPMreq;

    .line 262
    invoke-direct {v2, v0, p2}, Lorg/apache/harmony/luni/net/GenericIPMreq;-><init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    .line 261
    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 264
    .end local v0           #groupAddr:Ljava/net/InetAddress;
    :cond_0
    return-void
.end method

.method protected peek(Ljava/net/InetAddress;)I
    .locals 9
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_0

    .line 276
    const/16 v0, 0xa

    new-array v8, v0, [B

    .line 277
    .local v8, storageArray:[B
    new-instance v2, Ljava/net/DatagramPacket;

    .line 278
    array-length v0, v8

    .line 277
    invoke-direct {v2, v8, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 279
    .local v2, pack:Ljava/net/DatagramPacket;
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    .line 280
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x1

    .line 279
    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    .line 283
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setInetAddress(Ljava/net/InetAddress;[B)V

    .line 284
    iget v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 286
    .end local v2           #pack:Ljava/net/DatagramPacket;
    .end local v8           #storageArray:[B
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    invoke-interface {v0, v1, p1, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->peekDatagram(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v0

    goto :goto_0
.end method

.method public peekData(Ljava/net/DatagramPacket;)I
    .locals 9
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    .line 294
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    .line 295
    const/4 v7, 0x1

    move-object v2, p1

    .line 293
    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    .line 296
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->updatePacketRecvAddress(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0

    .line 299
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    .line 300
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    .line 301
    const/4 v7, 0x1

    move-object v2, p1

    .line 299
    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v8

    .line 304
    .local v8, e:Ljava/io/InterruptedIOException;
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {v8}, Ljava/io/InterruptedIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 9
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    .line 315
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    .line 316
    const/4 v7, 0x0

    move-object v2, p1

    .line 314
    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    .line 317
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->updatePacketRecvAddress(Ljava/net/DatagramPacket;)V

    .line 327
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    .line 321
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    .line 322
    const/4 v7, 0x0

    move-object v2, p1

    .line 320
    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v8

    .line 325
    .local v8, e:Ljava/io/InterruptedIOException;
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {v8}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 9
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    .line 334
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    const/4 v5, 0x0

    .line 333
    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendConnectedDatagram(Ljava/io/FileDescriptor;[BIIZ)I

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    .line 338
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    const/4 v6, 0x0

    .line 339
    iget v7, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->trafficClass:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 337
    invoke-interface/range {v0 .. v8}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendDatagram(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I

    goto :goto_0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 8
    .parameter "optID"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 357
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 358
    const/16 p1, 0x2711

    .line 361
    :cond_0
    const/16 v4, 0x1006

    if-ne p1, v4, :cond_2

    .line 362
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 364
    .restart local p2
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v1

    .line 366
    .local v1, flags:I
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v5, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    shl-int/lit8 v6, v1, 0x10

    or-int/2addr v6, p1

    invoke-interface {v4, v5, v6, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_3
    const/16 v4, 0x10

    if-ne p1, v4, :cond_5

    .line 375
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_5

    move-object v2, p2

    .line 376
    check-cast v2, Ljava/net/InetAddress;

    .line 377
    .local v2, inet:Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/net/NetUtil;->bytesToInt([BI)I

    move-result v4

    if-eqz v4, :cond_4

    .line 378
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    move-object v4, p2

    .line 379
    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ipaddress:[B

    .line 405
    .end local v2           #inet:Ljava/net/InetAddress;
    :cond_5
    :goto_1
    if-ne p1, v7, :cond_1

    .line 406
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->trafficClass:I

    goto :goto_0

    .line 367
    .restart local p2
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/net/SocketException;
    if-eq p1, v7, :cond_3

    .line 371
    throw v0

    .line 381
    .end local v0           #e:Ljava/net/SocketException;
    .restart local v2       #inet:Ljava/net/InetAddress;
    :cond_6
    const/4 v3, 0x0

    .line 383
    .local v3, local:Ljava/net/InetAddress;
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 388
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, p2

    .line 389
    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ipaddress:[B

    goto :goto_1

    .line 384
    :catch_1
    move-exception v0

    .line 385
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getLocalHost(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 385
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 391
    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_7
    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != getLocalHost(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 392
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setTTL(B)V
    .locals 2
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 423
    iput p1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    .line 425
    :cond_0
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 2
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    const/16 v0, 0x11

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 415
    iput p1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    .line 417
    :cond_0
    return-void
.end method
