.class Lorg/apache/harmony/luni/internal/process/ProcessInputStream;
.super Ljava/io/InputStream;
.source "ProcessInputStream.java"


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->oneTimeInitialization()V

    .line 25
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .parameter "handle"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    .line 43
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->setFDImpl(Ljava/io/FileDescriptor;J)V

    .line 44
    iput-wide p1, p0, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->handle:J

    .line 45
    return-void
.end method

.method private native availableImpl()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native closeImpl()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native oneTimeInitialization()V
.end method

.method private native readImpl([BIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native setFDImpl(Ljava/io/FileDescriptor;J)V
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->handle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 51
    monitor-exit p0

    const/4 v0, -0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->availableImpl()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->handle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 66
    monitor-exit p0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->closeImpl()V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->handle:J

    .line 64
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->close()V

    .line 87
    return-void
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 91
    new-array v1, v0, [B

    .line 92
    .local v1, buf:[B
    monitor-enter p0

    .line 93
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-wide v4, p0, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->readImpl([BIIJ)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 94
    monitor-exit p0

    move v0, v6

    .line 98
    :goto_0
    return v0

    .line 92
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    aget-byte v0, v1, v7

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read([B)I
    .locals 6
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    iget-wide v4, p0, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->handle:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->readImpl([BIIJ)I

    move-result v0

    monitor-exit p0

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read([BII)I
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->handle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    monitor-exit p0

    const/4 v0, -0x1

    .line 124
    :goto_0
    return v0

    .line 114
    :cond_0
    array-length v0, p1

    if-gt p3, v0, :cond_1

    if-gez p3, :cond_2

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 117
    const-string v1, "luni.18"

    .line 116
    invoke-static {v1, p3}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 119
    :cond_2
    if-ltz p2, :cond_3

    :try_start_1
    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_4

    .line 121
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 122
    const-string v1, "luni.12"

    .line 121
    invoke-static {v1, p2}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_4
    iget-wide v4, p0, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->handle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;->readImpl([BIIJ)I

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
