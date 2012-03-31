.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
.super Ljava/lang/Object;
.source "HttpConfiguration.java"


# instance fields
.field private hostName:Ljava/lang/String;

.field private hostPort:I

.field private proxy:Ljava/net/Proxy;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    .line 47
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    .line 49
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const/16 v0, 0x1bb

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/net/Proxy;)V
    .locals 5
    .parameter "uri"
    .parameter "proxy"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    .line 60
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    .line 61
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_2

    .line 62
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    .line 63
    .local v1, proxyAddr:Ljava/net/SocketAddress;
    instance-of v2, v1, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string v3, "luni.49"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 64
    invoke-static {v3, v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, v1

    .line 67
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 68
    .local v0, iProxyAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostName:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    .line 82
    .end local v0           #iProxyAddr:Ljava/net/InetSocketAddress;
    .end local v1           #proxyAddr:Ljava/net/SocketAddress;
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    .line 83
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    .line 84
    .restart local v1       #proxyAddr:Ljava/net/SocketAddress;
    instance-of v2, v1, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_4

    .line 85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 86
    const-string v3, "luni.49"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 85
    invoke-static {v3, v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    .end local v1           #proxyAddr:Ljava/net/SocketAddress;
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    .line 74
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 75
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    const/16 v2, 0x1bb

    iput v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    goto :goto_0

    .line 78
    :cond_3
    const/16 v2, 0x50

    iput v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    goto :goto_0

    .restart local v1       #proxyAddr:Ljava/net/SocketAddress;
    :cond_4
    move-object v0, v1

    .line 88
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 89
    .restart local v0       #iProxyAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostName:Ljava/lang/String;

    .line 90
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 95
    instance-of v2, p1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 98
    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    .line 99
    .local v0, config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    iget-object v2, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    iget-object v3, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    iget-object v2, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPort()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    return v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public usesProxy()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
