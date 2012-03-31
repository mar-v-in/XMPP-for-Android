.class public Lorg/apache/harmony/luni/internal/process/SystemProcess;
.super Ljava/lang/Process;
.source "SystemProcess.java"


# instance fields
.field private err:Ljava/io/InputStream;

.field private exception:Ljava/lang/Throwable;

.field private exitCode:I

.field private exitCodeAvailable:Z

.field private handle:J

.field private in:Ljava/io/OutputStream;

.field private lock:Ljava/lang/Object;

.field private out:Ljava/io/InputStream;

.field private waiterStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->oneTimeInitialization()V

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    .line 170
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->handle:J

    .line 190
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/luni/internal/process/SystemProcess;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/luni/internal/process/SystemProcess;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method static synthetic access$2(Lorg/apache/harmony/luni/internal/process/SystemProcess;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-boolean p1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->waiterStarted:Z

    return-void
.end method

.method static synthetic access$3(Lorg/apache/harmony/luni/internal/process/SystemProcess;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-wide p1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->handle:J

    return-void
.end method

.method static synthetic access$4(Lorg/apache/harmony/luni/internal/process/SystemProcess;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->in:Ljava/io/OutputStream;

    return-void
.end method

.method static synthetic access$5(Lorg/apache/harmony/luni/internal/process/SystemProcess;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->out:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$6(Lorg/apache/harmony/luni/internal/process/SystemProcess;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->err:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$7(Lorg/apache/harmony/luni/internal/process/SystemProcess;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput p1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exitCode:I

    return-void
.end method

.method static synthetic access$8(Lorg/apache/harmony/luni/internal/process/SystemProcess;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-boolean p1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exitCodeAvailable:Z

    return-void
.end method

.method static synthetic access$9(Lorg/apache/harmony/luni/internal/process/SystemProcess;)Ljava/io/OutputStream;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->in:Ljava/io/OutputStream;

    return-object v0
.end method

.method public static create([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 10
    .parameter "progArray"
    .parameter "envp"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    array-length v8, p0

    new-array v5, v8, [[B

    .line 68
    .local v5, progBytes:[[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, p0

    if-lt v2, v8, :cond_1

    .line 71
    array-length v8, p1

    new-array v1, v8, [[B

    .line 72
    .local v1, envBytes:[[B
    const/4 v2, 0x0

    :goto_1
    array-length v8, p1

    if-lt v2, v8, :cond_2

    .line 76
    new-instance v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;

    invoke-direct {v4}, Lorg/apache/harmony/luni/internal/process/SystemProcess;-><init>()V

    .line 78
    .local v4, p:Lorg/apache/harmony/luni/internal/process/SystemProcess;
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;

    .line 80
    new-instance v7, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;

    invoke-direct {v7, v4, v5, v1, p2}, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;-><init>(Lorg/apache/harmony/luni/internal/process/SystemProcess;[[B[[BLjava/io/File;)V

    .line 126
    .local v7, waitingThread:Ljava/lang/Runnable;
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    .local v6, wait:Ljava/lang/Thread;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 128
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 130
    iget-object v9, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, interrupted:Z
    :goto_2
    :try_start_0
    iget-boolean v8, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->waiterStarted:Z

    if-eqz v8, :cond_3

    .line 139
    if-eqz v3, :cond_0

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 142
    :cond_0
    iget-object v8, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_6

    .line 144
    iget-object v8, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 145
    iget-object v8, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Ljava/io/IOException;

    if-eqz v8, :cond_4

    .line 146
    iget-object v8, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exception:Ljava/lang/Throwable;

    check-cast v8, Ljava/io/IOException;

    throw v8

    .line 130
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 69
    .end local v1           #envBytes:[[B
    .end local v3           #interrupted:Z
    .end local v4           #p:Lorg/apache/harmony/luni/internal/process/SystemProcess;
    .end local v6           #wait:Ljava/lang/Thread;
    .end local v7           #waitingThread:Ljava/lang/Runnable;
    :cond_1
    aget-object v8, p0, v2

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Util;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v5, v2

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .restart local v1       #envBytes:[[B
    :cond_2
    aget-object v8, p1, v2

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v1, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    .restart local v3       #interrupted:Z
    .restart local v4       #p:Lorg/apache/harmony/luni/internal/process/SystemProcess;
    .restart local v6       #wait:Ljava/lang/Thread;
    .restart local v7       #waitingThread:Ljava/lang/Runnable;
    :cond_3
    :try_start_1
    iget-object v8, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    goto :goto_2

    .line 147
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    :try_start_2
    iget-object v8, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Ljava/lang/Error;

    if-eqz v8, :cond_5

    .line 148
    iget-object v8, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exception:Ljava/lang/Throwable;

    check-cast v8, Ljava/lang/Error;

    throw v8

    .line 150
    :cond_5
    iget-object v8, v4, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exception:Ljava/lang/Throwable;

    check-cast v8, Ljava/lang/RuntimeException;

    throw v8

    .line 130
    :cond_6
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    return-object v4
.end method

.method protected static synchronized native declared-synchronized createImpl(Ljava/lang/Process;[[B[[B[B)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native destroyImpl()V
.end method

.method private static native oneTimeInitialization()V
.end method


# virtual methods
.method native closeImpl()V
.end method

.method public destroy()V
    .locals 6

    .prologue
    .line 199
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->handle:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->destroyImpl()V

    .line 199
    :cond_0
    monitor-exit v1

    .line 204
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exitValue()I
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exitCodeAvailable:Z

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exitCode:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->err:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->out:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->in:Ljava/io/OutputStream;

    return-object v0
.end method

.method public waitFor()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exitCodeAvailable:Z

    if-eqz v0, :cond_0

    .line 248
    iget v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->exitCode:I

    monitor-exit v1

    return v0

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native waitForCompletionImpl()I
.end method
