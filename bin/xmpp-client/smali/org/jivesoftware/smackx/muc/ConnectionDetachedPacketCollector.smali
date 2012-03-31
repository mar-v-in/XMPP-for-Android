.class Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;
.super Ljava/lang/Object;
.source "ConnectionDetachedPacketCollector.java"


# instance fields
.field private maxPackets:I

.field private final resultQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/jivesoftware/smack/packet/Packet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketCollectorSize()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->maxPackets:I

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketCollectorSize()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->maxPackets:I

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    .line 60
    iput p1, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->maxPackets:I

    .line 61
    return-void
.end method


# virtual methods
.method public declared-synchronized nextResult()Lorg/jivesoftware/smack/packet/Packet;
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 73
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextResult(J)Lorg/jivesoftware/smack/packet/Packet;
    .locals 1
    .parameter "timeout"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pollResult()Lorg/jivesoftware/smack/packet/Packet;
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 132
    monitor-enter p0

    if-nez p1, :cond_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->maxPackets:I

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
