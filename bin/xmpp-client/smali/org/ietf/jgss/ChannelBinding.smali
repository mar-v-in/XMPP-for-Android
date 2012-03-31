.class public Lorg/ietf/jgss/ChannelBinding;
.super Ljava/lang/Object;
.source "ChannelBinding.java"


# instance fields
.field private acceptAddr:Ljava/net/InetAddress;

.field private appData:[B

.field private initAddr:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V
    .locals 0
    .parameter "initAddr"
    .parameter "acceptAddr"
    .parameter "appData"

    .prologue
    .line 43
    invoke-direct {p0, p3}, Lorg/ietf/jgss/ChannelBinding;-><init>([B)V

    .line 44
    iput-object p1, p0, Lorg/ietf/jgss/ChannelBinding;->initAddr:Ljava/net/InetAddress;

    .line 45
    iput-object p2, p0, Lorg/ietf/jgss/ChannelBinding;->acceptAddr:Ljava/net/InetAddress;

    .line 46
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .parameter "appData"

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/ietf/jgss/ChannelBinding;->appData:[B

    .line 37
    iget-object v0, p0, Lorg/ietf/jgss/ChannelBinding;->appData:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 51
    const/4 v1, 0x1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    instance-of v2, p1, Lorg/ietf/jgss/ChannelBinding;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 56
    check-cast v0, Lorg/ietf/jgss/ChannelBinding;

    .line 57
    .local v0, another:Lorg/ietf/jgss/ChannelBinding;
    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->initAddr:Ljava/net/InetAddress;

    iget-object v3, v0, Lorg/ietf/jgss/ChannelBinding;->initAddr:Ljava/net/InetAddress;

    if-eq v2, v3, :cond_2

    .line 58
    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->initAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->initAddr:Ljava/net/InetAddress;

    iget-object v3, v0, Lorg/ietf/jgss/ChannelBinding;->initAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    :cond_2
    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->acceptAddr:Ljava/net/InetAddress;

    iget-object v3, v0, Lorg/ietf/jgss/ChannelBinding;->acceptAddr:Ljava/net/InetAddress;

    if-eq v2, v3, :cond_3

    .line 63
    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->acceptAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->acceptAddr:Ljava/net/InetAddress;

    .line 64
    iget-object v3, v0, Lorg/ietf/jgss/ChannelBinding;->acceptAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    :cond_3
    iget-object v1, p0, Lorg/ietf/jgss/ChannelBinding;->appData:[B

    iget-object v2, v0, Lorg/ietf/jgss/ChannelBinding;->appData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getAcceptorAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/ietf/jgss/ChannelBinding;->acceptAddr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getApplicationData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    const/4 v0, 0x0

    check-cast v0, [B

    .line 77
    .local v0, bytes:[B
    iget-object v1, p0, Lorg/ietf/jgss/ChannelBinding;->appData:[B

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/ietf/jgss/ChannelBinding;->appData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 79
    iget-object v1, p0, Lorg/ietf/jgss/ChannelBinding;->appData:[B

    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->appData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    :cond_0
    return-object v0
.end method

.method public getInitiatorAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/ietf/jgss/ChannelBinding;->initAddr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 90
    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->initAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->initAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->acceptAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->acceptAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    goto :goto_0

    .line 96
    :cond_2
    iget-object v2, p0, Lorg/ietf/jgss/ChannelBinding;->appData:[B

    if-eqz v2, :cond_3

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, hashCode:I
    iget-object v3, p0, Lorg/ietf/jgss/ChannelBinding;->appData:[B

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v0, v3, v2

    .line 99
    .local v0, element:B
    mul-int/lit8 v5, v1, 0x1f

    add-int v1, v5, v0

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v0           #element:B
    .end local v1           #hashCode:I
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method
