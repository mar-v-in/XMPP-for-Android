.class public Lorg/apache/harmony/luni/util/PositionedInputStream;
.super Ljava/io/FilterInputStream;
.source "PositionedInputStream.java"


# instance fields
.field private currentPosition:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    return-void
.end method


# virtual methods
.method public currentPosition()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 53
    .local v0, read:I
    if-ltz v0, :cond_0

    .line 54
    iget v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    .line 56
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 63
    .local v0, read:I
    if-ltz v0, :cond_0

    .line 64
    iget v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    .line 66
    :cond_0
    return v0
.end method

.method public resetCurrentPosition()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    .line 75
    return-void
.end method

.method public skip(J)J
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v2, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 80
    .local v0, skip:J
    iget v2, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    .line 81
    return-wide v0
.end method
