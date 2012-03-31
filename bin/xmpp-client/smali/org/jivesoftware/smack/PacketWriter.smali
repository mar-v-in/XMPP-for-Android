.class Lorg/jivesoftware/smack/PacketWriter;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;
    }
.end annotation


# instance fields
.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private done:Z

.field private keepAliveThread:Ljava/lang/Thread;

.field private lastActive:J

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/jivesoftware/smack/packet/Packet;",
            ">;"
        }
    .end annotation
.end field

.field private writer:Ljava/io/Writer;

.field private writerThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    .line 116
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 117
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 118
    invoke-virtual {p0}, Lorg/jivesoftware/smack/PacketWriter;->init()V

    .line 119
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/PacketWriter;)Z
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    return v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smack/PacketWriter;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->keepAliveThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/Writer;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smack/PacketWriter;)J
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    return-wide v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smack/PacketWriter;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketWriter;->writePackets(Ljava/lang/Thread;)V

    return-void
.end method

.method private nextPacket()Lorg/jivesoftware/smack/packet/Packet;
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, packet:Lorg/jivesoftware/smack/packet/Packet;
    :goto_0
    iget-boolean v1, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #packet:Lorg/jivesoftware/smack/packet/Packet;
    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;

    .restart local v0       #packet:Lorg/jivesoftware/smack/packet/Packet;
    if-eqz v0, :cond_1

    .line 166
    :cond_0
    return-object v0

    .line 159
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 159
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private writePackets(Ljava/lang/Thread;)V
    .locals 7
    .parameter "thisThread"

    .prologue
    .line 268
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 270
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, p1, :cond_3

    .line 288
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    :goto_1
    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 293
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 288
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 300
    :goto_2
    :try_start_3
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 304
    :try_start_4
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    const-string v4, "</stream:stream>"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 305
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 310
    :try_start_5
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 321
    :cond_2
    :goto_3
    return-void

    .line 271
    :cond_3
    :try_start_6
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketWriter;->nextPacket()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 272
    .local v2, packet:Lorg/jivesoftware/smack/packet/Packet;
    if-eqz v2, :cond_0

    .line 273
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    monitor-enter v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 274
    :try_start_7
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    .line 273
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 315
    .end local v2           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :catch_0
    move-exception v1

    .line 316
    .local v1, ioe:Ljava/io/IOException;
    iget-boolean v3, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v3, :cond_2

    .line 317
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 318
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v3, v3, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 290
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_4
    :try_start_9
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Packet;

    .line 291
    .restart local v2       #packet:Lorg/jivesoftware/smack/packet/Packet;
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 288
    .end local v2           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 295
    :catch_1
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_2

    .line 306
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 310
    :try_start_c
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_3

    .line 311
    :catch_3
    move-exception v3

    goto :goto_3

    .line 308
    :catchall_2
    move-exception v3

    .line 310
    :try_start_d
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 314
    :goto_4
    :try_start_e
    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 311
    :catch_4
    move-exception v3

    goto :goto_3

    :catch_5
    move-exception v4

    goto :goto_4
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->interceptors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->sendListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 138
    new-instance v0, Lorg/jivesoftware/smack/PacketWriter$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketWriter$1;-><init>(Lorg/jivesoftware/smack/PacketWriter;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    .line 144
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Smack Packet Writer ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->connectionCounterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 147
    return-void
.end method

.method openStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, stream:Ljava/lang/StringBuilder;
    const-string v1, "<stream:stream"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, " xmlns=\"jabber:client\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, " xmlns:stream=\"http://etherx.jabber.org/streams\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, " version=\"1.0\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 187
    return-void
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 196
    iget-boolean v1, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/XMPPConnection;->firePacketInterceptors(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 203
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v2

    .line 209
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 208
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/XMPPConnection;->firePacketSendingListeners(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, ie:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method setWriter(Ljava/io/Writer;)V
    .locals 0
    .parameter "writer"

    .prologue
    .line 220
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;

    .line 221
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 229
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 229
    monitor-exit v1

    .line 232
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startKeepAliveProcess()V
    .locals 5

    .prologue
    .line 244
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getKeepAliveInterval()I

    move-result v0

    .line 245
    .local v0, keepAliveInterval:I
    if-lez v0, :cond_0

    .line 246
    new-instance v1, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;

    invoke-direct {v1, p0, v0}, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;-><init>(Lorg/jivesoftware/smack/PacketWriter;I)V

    .line 247
    .local v1, task:Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->keepAliveThread:Ljava/lang/Thread;

    .line 248
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->keepAliveThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->setThread(Ljava/lang/Thread;)V

    .line 249
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->keepAliveThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 250
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->keepAliveThread:Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Smack Keep Alive ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget v4, v4, Lorg/jivesoftware/smack/XMPPConnection;->connectionCounterValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->keepAliveThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 254
    .end local v1           #task:Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;
    :cond_0
    return-void
.end method

.method public startup()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 263
    return-void
.end method
