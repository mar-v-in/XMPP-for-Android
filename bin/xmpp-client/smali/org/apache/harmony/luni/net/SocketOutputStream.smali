.class Lorg/apache/harmony/luni/net/SocketOutputStream;
.super Ljava/io/OutputStream;
.source "SocketOutputStream.java"


# instance fields
.field private final socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;


# direct methods
.method public constructor <init>(Ljava/net/SocketImpl;)V
    .locals 0
    .parameter "socket"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    check-cast p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->close()V

    .line 47
    return-void
.end method

.method public write(I)V
    .locals 4
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v3, [B

    .line 73
    .local v0, buffer:[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 75
    iget-object v1, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->write([BII)I

    .line 76
    return-void
.end method

.method public write([B)V
    .locals 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->write([BII)I

    .line 52
    return-void
.end method

.method public write([BII)V
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
    .line 57
    if-eqz p1, :cond_1

    .line 58
    if-ltz p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    .line 59
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->write([BII)I

    .line 68
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 63
    const-string v1, "luni.13"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "luni.11"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
