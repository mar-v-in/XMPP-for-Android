.class Lorg/apache/harmony/luni/net/SocketInputStream;
.super Ljava/io/InputStream;
.source "SocketInputStream.java"


# instance fields
.field private final socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;


# direct methods
.method public constructor <init>(Ljava/net/SocketImpl;)V
    .locals 0
    .parameter "socket"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    check-cast p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .line 47
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->close()V

    .line 57
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-array v0, v4, [B

    .line 62
    .local v0, buffer:[B
    iget-object v2, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v2, v0, v3, v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->read([BII)I

    move-result v1

    .line 63
    .local v1, result:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .end local v1           #result:I
    :goto_0
    return v1

    .restart local v1       #result:I
    :cond_0
    aget-byte v2, v0, v3

    and-int/lit16 v1, v2, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/luni/net/SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "luni.11"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-nez p3, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 81
    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-lt p2, v0, :cond_3

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 84
    const-string v1, "luni.12"

    .line 83
    invoke-static {v1, p2}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_3
    if-ltz p3, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_5

    .line 87
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 88
    const-string v1, "luni.13"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 96
    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    goto :goto_0
.end method
