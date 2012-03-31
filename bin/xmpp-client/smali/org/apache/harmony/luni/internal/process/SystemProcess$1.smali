.class Lorg/apache/harmony/luni/internal/process/SystemProcess$1;
.super Ljava/lang/Object;
.source "SystemProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/internal/process/SystemProcess;->create([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$directory:Ljava/io/File;

.field private final synthetic val$envBytes:[[B

.field private final synthetic val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

.field private final synthetic val$progBytes:[[B


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/internal/process/SystemProcess;[[B[[BLjava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    iput-object p2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$progBytes:[[B

    iput-object p3, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$envBytes:[[B

    iput-object p4, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$directory:Ljava/io/File;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 83
    move-object v1, v2

    check-cast v1, [J

    .line 86
    .local v1, procVals:[J
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    .line 87
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$progBytes:[[B

    .line 88
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$envBytes:[[B

    .line 89
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$directory:Ljava/io/File;

    if-nez v6, :cond_0

    .line 85
    :goto_0
    invoke-static {v3, v4, v5, v2}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->createImpl(Ljava/lang/Process;[[B[[B[B)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    #setter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->handle:J
    invoke-static {v2, v3, v4}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$3(Lorg/apache/harmony/luni/internal/process/SystemProcess;J)V

    .line 101
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;

    .line 102
    aget-wide v5, v1, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/luni/internal/process/ProcessOutputStream;-><init>(J)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    #setter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->in:Ljava/io/OutputStream;
    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$4(Lorg/apache/harmony/luni/internal/process/SystemProcess;Ljava/io/OutputStream;)V

    .line 103
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;

    .line 104
    const/4 v5, 0x2

    aget-wide v5, v1, v5

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;-><init>(J)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 103
    #setter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->out:Ljava/io/InputStream;
    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$5(Lorg/apache/harmony/luni/internal/process/SystemProcess;Ljava/io/InputStream;)V

    .line 105
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;

    .line 106
    const/4 v5, 0x3

    aget-wide v5, v1, v5

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/luni/internal/process/ProcessInputStream;-><init>(J)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    #setter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->err:Ljava/io/InputStream;
    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$6(Lorg/apache/harmony/luni/internal/process/SystemProcess;Ljava/io/InputStream;)V

    .line 108
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    #getter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$0(Lorg/apache/harmony/luni/internal/process/SystemProcess;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 109
    :try_start_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    const/4 v4, 0x1

    #setter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->waiterStarted:Z
    invoke-static {v2, v4}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$2(Lorg/apache/harmony/luni/internal/process/SystemProcess;Z)V

    .line 110
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    #getter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$0(Lorg/apache/harmony/luni/internal/process/SystemProcess;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 108
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    invoke-virtual {v3}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->waitForCompletionImpl()I

    move-result v3

    #setter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->exitCode:I
    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$7(Lorg/apache/harmony/luni/internal/process/SystemProcess;I)V

    .line 114
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    #getter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$0(Lorg/apache/harmony/luni/internal/process/SystemProcess;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 115
    :try_start_2
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->closeImpl()V

    .line 116
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    const-wide/16 v4, -0x1

    #setter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->handle:J
    invoke-static {v2, v4, v5}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$3(Lorg/apache/harmony/luni/internal/process/SystemProcess;J)V

    .line 117
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    const/4 v4, 0x1

    #setter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->exitCodeAvailable:Z
    invoke-static {v2, v4}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$8(Lorg/apache/harmony/luni/internal/process/SystemProcess;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 119
    :try_start_3
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    #getter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->in:Ljava/io/OutputStream;
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$9(Lorg/apache/harmony/luni/internal/process/SystemProcess;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 122
    :goto_1
    :try_start_4
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    #getter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$0(Lorg/apache/harmony/luni/internal/process/SystemProcess;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 124
    :goto_2
    return-void

    .line 89
    :cond_0
    :try_start_5
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$directory:Ljava/io/File;

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v2}, Lorg/apache/harmony/luni/util/Util;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    #getter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$0(Lorg/apache/harmony/luni/internal/process/SystemProcess;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 94
    :try_start_6
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    #setter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->exception:Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$1(Lorg/apache/harmony/luni/internal/process/SystemProcess;Ljava/lang/Throwable;)V

    .line 95
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    const/4 v4, 0x1

    #setter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->waiterStarted:Z
    invoke-static {v2, v4}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$2(Lorg/apache/harmony/luni/internal/process/SystemProcess;Z)V

    .line 96
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/process/SystemProcess$1;->val$p:Lorg/apache/harmony/luni/internal/process/SystemProcess;

    #getter for: Lorg/apache/harmony/luni/internal/process/SystemProcess;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/process/SystemProcess;->access$0(Lorg/apache/harmony/luni/internal/process/SystemProcess;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 108
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 114
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 120
    :catch_1
    move-exception v2

    goto :goto_1
.end method
