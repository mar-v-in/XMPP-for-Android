.class public Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;
.super Ljava/lang/Object;
.source "TcpUdpBridgeClient.java"


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# instance fields
.field private localTcpSocket:Ljava/net/Socket;

.field private localUdpSocket:Ljava/net/DatagramSocket;

.field private remoteUdpHost:Ljava/lang/String;

.field private remoteUdpPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 72
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter "remoteTcpHost"
    .parameter "remoteUdpHost"
    .parameter "remoteTcpPort"
    .parameter "remoteUdpPort"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->remoteUdpHost:Ljava/lang/String;

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->remoteUdpPort:I

    .line 82
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->remoteUdpHost:Ljava/lang/String;

    .line 83
    iput p4, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->remoteUdpPort:I

    .line 86
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, p1, p3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->localTcpSocket:Ljava/net/Socket;

    .line 87
    new-instance v1, Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->localUdpSocket:Ljava/net/DatagramSocket;

    .line 88
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->localUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    .line 89
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UDP: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->localUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->startBridge()V

    .line 94
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;)Ljava/net/Socket;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->localTcpSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;)Ljava/net/DatagramSocket;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->localUdpSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$2()Lorg/jivesoftware/smackx/jingle/SmackLogger;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->remoteUdpHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->remoteUdpPort:I

    return v0
.end method


# virtual methods
.method public getLocalTcpSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->localTcpSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public getLocalUdpSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;->localUdpSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public startBridge()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient$1;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    .local v0, process:Ljava/lang/Thread;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient$2;

    invoke-direct {v2, p0, v0}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient$2;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeClient;Ljava/lang/Thread;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 175
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 176
    return-void
.end method
