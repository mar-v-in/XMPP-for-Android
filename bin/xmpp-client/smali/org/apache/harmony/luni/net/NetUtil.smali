.class public Lorg/apache/harmony/luni/net/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/net/NetUtil$Action;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bytesToInt([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 53
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 54
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 53
    or-int/2addr v1, v2

    .line 55
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 53
    or-int/2addr v1, v2

    .line 56
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 53
    or-int v0, v1, v2

    .line 57
    .local v0, value:I
    return v0
.end method

.method public static getProxyList(Ljava/net/URI;)Ljava/util/List;
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 70
    .local v0, selector:Ljava/net/ProxySelector;
    if-nez v0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method static intToBytes(I[BI)V
    .locals 2
    .parameter "value"
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 81
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 82
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 83
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 84
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 85
    return-void
.end method

.method public static preferIPv4Stack()Z
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lorg/apache/harmony/luni/net/NetUtil$Action;

    const-string v1, "java.net.preferIPv4Stack"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/net/NetUtil$Action;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, a:Lorg/apache/harmony/luni/net/NetUtil$Action;
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static preferIPv6Addresses()Z
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lorg/apache/harmony/luni/net/NetUtil$Action;

    const-string v1, "java.net.preferIPv6Addresses"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/net/NetUtil$Action;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, a:Lorg/apache/harmony/luni/net/NetUtil$Action;
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static usingSocks(Ljava/net/Proxy;)Z
    .locals 2
    .parameter "proxy"

    .prologue
    .line 116
    if-eqz p0, :cond_0

    sget-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
