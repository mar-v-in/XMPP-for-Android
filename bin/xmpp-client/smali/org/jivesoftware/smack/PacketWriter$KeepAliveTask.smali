.class Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;
.super Ljava/lang/Object;
.source "PacketWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAliveTask"
.end annotation


# instance fields
.field private final delay:I

.field final synthetic this$0:Lorg/jivesoftware/smack/PacketWriter;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketWriter;I)V
    .locals 0
    .parameter
    .parameter "delay"

    .prologue
    .line 52
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->delay:I

    .line 54
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 63
    const-wide/16 v0, 0x3a98

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->done:Z
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketWriter;->access$0(Lorg/jivesoftware/smack/PacketWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->keepAliveThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketWriter;->access$1(Lorg/jivesoftware/smack/PacketWriter;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->thread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1

    .line 87
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketWriter;->access$2(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/Writer;

    move-result-object v1

    monitor-enter v1

    .line 71
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->lastActive:J
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketWriter;->access$3(Lorg/jivesoftware/smack/PacketWriter;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->delay:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 73
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketWriter;->access$2(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/Writer;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketWriter;->access$2(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 68
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :try_start_4
    iget v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->delay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 64
    :catch_1
    move-exception v0

    goto :goto_0

    .line 75
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected setThread(Ljava/lang/Thread;)V
    .locals 0
    .parameter "thread"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->thread:Ljava/lang/Thread;

    .line 91
    return-void
.end method
