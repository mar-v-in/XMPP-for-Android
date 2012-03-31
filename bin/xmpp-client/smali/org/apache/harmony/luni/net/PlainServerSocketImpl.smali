.class public Lorg/apache/harmony/luni/net/PlainServerSocketImpl;
.super Lorg/apache/harmony/luni/net/PlainSocketImpl;
.source "PlainServerSocketImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 36
    return-void
.end method


# virtual methods
.method protected create(Z)V
    .locals 3
    .parameter "isStreaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->streaming:Z

    .line 41
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createServerStreamSocket(Ljava/io/FileDescriptor;Z)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createDatagramSocket(Ljava/io/FileDescriptor;Z)V

    goto :goto_0
.end method
