.class public Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;
.super Ljava/lang/Object;
.source "TcpUdpBridgeServer.java"


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# instance fields
.field private localTcpSocket:Ljava/net/Socket;

.field private localUdpSocket:Ljava/net/DatagramSocket;

.field private remoteUdpHost:Ljava/lang/String;

.field private remoteUdpPort:I

.field private serverTcpSocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 21
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter "remoteTcpHost"
    .parameter "remoteUdpHost"
    .parameter "remoteTcpPort"
    .parameter "remoteUdpPort"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->remoteUdpHost:Ljava/lang/String;

    .line 25
    const/4 v1, -0x1

    iput v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->remoteUdpPort:I

    .line 32
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->remoteUdpHost:Ljava/lang/String;

    .line 33
    iput p4, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->remoteUdpPort:I

    .line 36
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, p3}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->serverTcpSocket:Ljava/net/ServerSocket;

    .line 37
    new-instance v1, Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localUdpSocket:Ljava/net/DatagramSocket;

    .line 38
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    .line 39
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UDP: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->startBridge()V

    .line 44
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)Ljava/net/Socket;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localTcpSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)Ljava/net/DatagramSocket;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localUdpSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$2()Lorg/jivesoftware/smackx/jingle/SmackLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)Ljava/net/ServerSocket;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->serverTcpSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;Ljava/net/Socket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localTcpSocket:Ljava/net/Socket;

    return-void
.end method

.method static synthetic access$5(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->remoteUdpHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->remoteUdpPort:I

    return v0
.end method


# virtual methods
.method public getLocalTcpSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localTcpSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public getLocalUdpSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localUdpSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public startBridge()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$1;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    .local v0, process:Ljava/lang/Thread;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;

    invoke-direct {v2, p0, v0}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;Ljava/lang/Thread;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method
