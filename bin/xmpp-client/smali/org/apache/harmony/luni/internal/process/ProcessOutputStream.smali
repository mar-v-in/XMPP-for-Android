.class Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;
.super Ljava/io/OutputStream;
.source "ProcessOutputStream.java"


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->oneTimeInitialization()V

    .line 24
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .parameter "handle"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 42
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->setFDImpl(Ljava/io/FileDescriptor;J)V

    .line 43
    iput-wide p1, p0, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->handle:J

    .line 44
    return-void
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

.method private native setFDImpl(Ljava/io/FileDescriptor;J)V
.end method

.method private native writeImpl([BIIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->handle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 50
    monitor-exit p0

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->closeImpl()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->handle:J

    .line 48
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
    .line 70
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->close()V

    .line 71
    return-void
.end method

.method public write(I)V
    .locals 6
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 97
    new-array v1, v0, [B

    .line 98
    .local v1, buf:[B
    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 99
    monitor-enter p0

    .line 100
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-wide v4, p0, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->writeImpl([BIIJ)V

    .line 99
    monitor-exit p0

    .line 102
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([B)V
    .locals 6
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    iget-wide v4, p0, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->handle:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->writeImpl([BIIJ)V

    .line 80
    monitor-exit p0

    .line 83
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([BII)V
    .locals 6
    .parameter "buf"
    .parameter "offset"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->handle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    monitor-exit p0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-wide v4, p0, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->handle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;->writeImpl([BIIJ)V

    .line 87
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
