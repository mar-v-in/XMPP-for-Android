.class public Lorg/jivesoftware/smack/PacketCollector;
.super Ljava/lang/Object;
.source "PacketCollector.java"


# instance fields
.field private cancelled:Z

.field private final conection:Lorg/jivesoftware/smack/Connection;

.field private maxPackets:I

.field private final packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

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
.method protected constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 1
    .parameter "conection"
    .parameter "packetFilter"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketCollectorSize()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/PacketCollector;->maxPackets:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketCollector;->cancelled:Z

    .line 66
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketCollector;->conection:Lorg/jivesoftware/smack/Connection;

    .line 67
    iput-object p2, p0, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    .line 69
    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/filter/PacketFilter;I)V
    .locals 0
    .parameter "conection"
    .parameter "packetFilter"
    .parameter "maxSize"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 86
    iput p3, p0, Lorg/jivesoftware/smack/PacketCollector;->maxPackets:I

    .line 87
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/jivesoftware/smack/PacketCollector;->cancelled:Z

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketCollector;->cancelled:Z

    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->conection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Connection;->removePacketCollector(Lorg/jivesoftware/smack/PacketCollector;)V

    .line 100
    :cond_0
    return-void
.end method

.method public getPacketFilter()Lorg/jivesoftware/smack/filter/PacketFilter;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    return-object v0
.end method

.method public declared-synchronized nextResult()Lorg/jivesoftware/smack/packet/Packet;
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextResult(J)Lorg/jivesoftware/smack/packet/Packet;
    .locals 8
    .parameter "timeout"

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 143
    move-wide v4, p1

    .line 144
    .local v4, waitTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 149
    .local v2, start:J
    :goto_0
    :try_start_1
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 162
    :cond_0
    :goto_1
    :try_start_2
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 163
    const/4 v6, 0x0

    .line 172
    .end local v2           #start:J
    .end local v4           #waitTime:J
    :goto_2
    monitor-exit p0

    return-object v6

    .line 150
    .restart local v2       #start:J
    .restart local v4       #waitTime:J
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 153
    :try_start_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v0

    .line 155
    .local v0, now:J
    sub-long v6, v0, v2

    sub-long/2addr v4, v6

    .line 156
    move-wide v2, v0

    goto :goto_0

    .line 167
    .end local v0           #now:J
    :cond_2
    :try_start_4
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/packet/Packet;

    goto :goto_2

    .line 172
    .end local v2           #start:J
    .end local v4           #waitTime:J
    :cond_3
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/packet/Packet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 142
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 158
    .restart local v2       #start:J
    .restart local v4       #waitTime:J
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public declared-synchronized pollResult()Lorg/jivesoftware/smack/packet/Packet;
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 200
    monitor-enter p0

    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lorg/jivesoftware/smack/PacketCollector;->maxPackets:I

    if-ne v0, v1, :cond_3

    .line 207
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 210
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
