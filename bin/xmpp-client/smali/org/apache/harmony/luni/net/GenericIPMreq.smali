.class final Lorg/apache/harmony/luni/net/GenericIPMreq;
.super Ljava/lang/Object;
.source "GenericIPMreq.java"


# instance fields
.field private interfaceAddr:Ljava/net/InetAddress;

.field private interfaceIdx:I

.field private isIPV6Address:Z

.field private final multiaddr:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "addr"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->multiaddr:Ljava/net/InetAddress;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceAddr:Ljava/net/InetAddress;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceIdx:I

    .line 55
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/GenericIPMreq;->init()V

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .locals 5
    .parameter "addr"
    .parameter "netInterface"

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->multiaddr:Ljava/net/InetAddress;

    .line 69
    if-eqz p2, :cond_3

    .line 79
    iput-object v4, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceAddr:Ljava/net/InetAddress;

    .line 81
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 82
    .local v2, theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    instance-of v3, p1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, found:Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    .line 100
    .end local v0           #found:Z
    .end local v2           #theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/GenericIPMreq;->init()V

    .line 101
    return-void

    .line 85
    .restart local v0       #found:Z
    .restart local v2       #theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 86
    .local v1, theAddress:Ljava/net/InetAddress;
    instance-of v3, v1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 87
    iput-object v1, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceAddr:Ljava/net/InetAddress;

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    .end local v0           #found:Z
    .end local v1           #theAddress:Ljava/net/InetAddress;
    .end local v2           #theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceIdx:I

    .line 98
    iput-object v4, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceAddr:Ljava/net/InetAddress;

    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->multiaddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->multiaddr:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->isIPV6Address:Z

    .line 112
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
