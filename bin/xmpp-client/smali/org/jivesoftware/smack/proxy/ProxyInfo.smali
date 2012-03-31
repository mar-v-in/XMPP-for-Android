.class public Lorg/jivesoftware/smack/proxy/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;
    }
.end annotation


# instance fields
.field private final proxyAddress:Ljava/lang/String;

.field private final proxyPassword:Ljava/lang/String;

.field private final proxyPort:I

.field private final proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

.field private final proxyUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pType"
    .parameter "pHost"
    .parameter "pPort"
    .parameter "pUser"
    .parameter "pPass"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 53
    iput-object p2, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyAddress:Ljava/lang/String;

    .line 54
    iput p3, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyPort:I

    .line 55
    iput-object p4, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyUsername:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyPassword:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static forDefaultProxy()Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 18
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyInfo;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->NONE:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/proxy/ProxyInfo;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forHttpProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 6
    .parameter "pHost"
    .parameter "pPort"
    .parameter "pUser"
    .parameter "pPass"

    .prologue
    .line 23
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyInfo;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/proxy/ProxyInfo;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forNoProxy()Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyInfo;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->NONE:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/proxy/ProxyInfo;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forSocks4Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 6
    .parameter "pHost"
    .parameter "pPort"
    .parameter "pUser"
    .parameter "pPass"

    .prologue
    .line 32
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyInfo;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/proxy/ProxyInfo;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 6
    .parameter "pHost"
    .parameter "pPort"
    .parameter "pUser"
    .parameter "pPass"

    .prologue
    .line 37
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyInfo;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/proxy/ProxyInfo;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyPort:I

    return v0
.end method

.method public getProxyType()Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    return-object v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->NONE:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_0

    .line 81
    new-instance v0, Lorg/jivesoftware/smack/proxy/DirectSocketFactory;

    invoke-direct {v0}, Lorg/jivesoftware/smack/proxy/DirectSocketFactory;-><init>()V

    .line 89
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_1

    .line 83
    new-instance v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_2

    .line 85
    new-instance v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_3

    .line 87
    new-instance v0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    goto :goto_0

    .line 89
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
