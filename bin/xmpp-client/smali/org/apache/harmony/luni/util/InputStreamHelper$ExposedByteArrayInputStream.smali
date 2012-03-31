.class Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "InputStreamHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/InputStreamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExposedByteArrayInputStream"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "buf"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 44
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized expose()[B
    .locals 5

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->pos:I

    if-nez v2, :cond_0

    iget v2, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->count:I

    iget-object v3, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->buf:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 58
    iget v2, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->count:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->skip(J)J

    .line 59
    iget-object v1, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return-object v1

    .line 62
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->available()I

    move-result v0

    .line 63
    .local v0, available:I
    new-array v1, v0, [B

    .line 64
    .local v1, buffer:[B
    iget-object v2, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->buf:[B

    iget v3, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    .end local v0           #available:I
    .end local v1           #buffer:[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
