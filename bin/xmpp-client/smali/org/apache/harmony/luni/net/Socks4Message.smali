.class Lorg/apache/harmony/luni/net/Socks4Message;
.super Ljava/lang/Object;
.source "Socks4Message.java"


# static fields
.field private static final BUFFER_LENGTH:I = 0x100

.field static final COMMAND_BIND:I = 0x2

.field static final COMMAND_CONNECT:I = 0x1

.field private static final INDEX_COMMAND:I = 0x1

.field private static final INDEX_IP:I = 0x4

.field private static final INDEX_PORT:I = 0x2

.field private static final INDEX_USER_ID:I = 0x8

.field static final INDEX_VERSION:I = 0x0

.field private static final MAX_USER_ID_LENGTH:I = 0xf8

.field static final REPLY_LENGTH:I = 0x8

.field static final RETURN_CANNOT_CONNECT_TO_IDENTD:I = 0x5c

.field static final RETURN_DIFFERENT_USER_IDS:I = 0x5d

.field static final RETURN_FAILURE:I = 0x5b

.field static final RETURN_SUCCESS:I = 0x5a

.field private static final SOCKS_VERSION:I = 0x4


# instance fields
.field protected buffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    .line 60
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/net/Socks4Message;->setVersionNumber(I)V

    .line 61
    return-void
.end method

.method private getInt16(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private getInt32(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    add-int/lit8 v1, p1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 105
    iget-object v1, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 104
    add-int/2addr v0, v1

    .line 106
    iget-object v1, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 104
    add-int/2addr v0, v1

    .line 106
    iget-object v1, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    add-int/lit8 v2, p1, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 104
    add-int/2addr v0, v1

    return v0
.end method

.method private getString(II)Ljava/lang/String;
    .locals 7
    .parameter "offset"
    .parameter "maxLength"

    .prologue
    .line 149
    move v1, p1

    .line 150
    .local v1, index:I
    add-int v2, v1, p2

    .line 153
    .local v2, lastIndex:I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    aget-byte v4, v4, v1

    if-nez v4, :cond_1

    .line 157
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    sub-int v5, v1, p1

    const-string v6, "ISO8859_1"

    invoke-direct {v3, v4, p1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .local v3, result:Ljava/lang/String;
    return-object v3

    .line 154
    .end local v3           #result:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getVersionNumber()I
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method private setInt16(II)V
    .locals 3
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 190
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    add-int/lit8 v1, p1, 0x1

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 191
    return-void
.end method

.method private setString(IILjava/lang/String;)V
    .locals 6
    .parameter "offset"
    .parameter "maxLength"
    .parameter "theString"

    .prologue
    const/4 v5, 0x0

    .line 216
    :try_start_0
    const-string v3, "ISO8859_1"

    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 220
    .local v2, stringBytes:[B
    array-length v3, v2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 221
    .local v1, length:I
    iget-object v3, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    invoke-static {v2, v5, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object v3, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    add-int v4, p1, v1

    aput-byte v5, v3, v4

    .line 223
    return-void

    .line 217
    .end local v1           #length:I
    .end local v2           #stringBytes:[B
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setVersionNumber(I)V
    .locals 3
    .parameter "number"

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 237
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    return-object v0
.end method

.method public getCommandOrResult()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getErrorString(I)Ljava/lang/String;
    .locals 1
    .parameter "error"

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 89
    const-string v0, "luni.17"

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    const-string v0, "luni.14"

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_1
    const-string v0, "luni.15"

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :pswitch_2
    const-string v0, "luni.16"

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIP()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getInt32(I)I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 125
    .local v0, index:I
    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_0

    .line 133
    add-int/lit8 v0, v0, 0x1

    .line 134
    return v0

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getInt16(I)I

    move-result v0

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    const/16 v0, 0x8

    const/16 v1, 0xf8

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCommandOrResult(I)V
    .locals 3
    .parameter "command"

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 183
    return-void
.end method

.method public setIP([B)V
    .locals 3
    .parameter "ip"

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 198
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    const/4 v1, 0x5

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 199
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    const/4 v1, 0x6

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 200
    iget-object v0, p0, Lorg/apache/harmony/luni/net/Socks4Message;->buffer:[B

    const/4 v1, 0x7

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 201
    return-void
.end method

.method public setPort(I)V
    .locals 1
    .parameter "port"

    .prologue
    .line 207
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/luni/net/Socks4Message;->setInt16(II)V

    .line 208
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 229
    const/16 v0, 0x8

    const/16 v1, 0xf8

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/harmony/luni/net/Socks4Message;->setString(IILjava/lang/String;)V

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/Socks4Message;->getVersionNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, " Command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, " Port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/Socks4Message;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, " IP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/Socks4Message;->getIP()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, " User ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/Socks4Message;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
