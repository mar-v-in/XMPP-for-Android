.class abstract Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;
.super Ljava/io/InputStream;
.source "InBandBytestreamSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "IBBInputStream"
.end annotation


# instance fields
.field private buffer:[B

.field private bufferPointer:I

.field private closeInvoked:Z

.field private final dataPacketListener:Lorg/jivesoftware/smack/PacketListener;

.field protected final dataQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private isClosed:Z

.field private readTimeout:I

.field private seq:J

.field final synthetic this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 128
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 105
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->seq:J

    .line 117
    iput-boolean v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->isClosed:Z

    .line 120
    iput-boolean v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->closeInvoked:Z

    .line 123
    iput v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->readTimeout:I

    .line 130
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->getDataPacketListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->dataPacketListener:Lorg/jivesoftware/smack/PacketListener;

    .line 131
    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->dataPacketListener:Lorg/jivesoftware/smack/PacketListener;

    .line 132
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->getDataPacketFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 133
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->closeInternal()V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->isClosed:Z

    return v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->cleanup()V

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->readTimeout:I

    return v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->readTimeout:I

    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->isClosed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->closeInvoked:Z

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 151
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->dataPacketListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 160
    return-void
.end method

.method private closeInternal()V
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->isClosed:Z

    goto :goto_0
.end method

.method private declared-synchronized loadBuffer()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 211
    monitor-enter p0

    const/4 v1, 0x0

    .line 213
    .local v1, data:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    :try_start_0
    iget v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->readTimeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_4

    .line 214
    :goto_0
    if-eqz v1, :cond_2

    .line 233
    :cond_0
    :try_start_1
    iget-wide v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->seq:J

    const-wide/32 v7, 0xffff

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 234
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->seq:J

    .line 238
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getSeq()J

    move-result-wide v3

    .line 239
    .local v3, seq:J
    const-wide/16 v5, 0x1

    sub-long v5, v3, v5

    iget-wide v7, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->seq:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 241
    iget-object v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->close()V

    .line 242
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Packets out of sequence"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local v3           #seq:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 215
    :cond_2
    :try_start_2
    iget-boolean v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->isClosed:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    .line 250
    :goto_1
    monitor-exit p0

    return v5

    .line 218
    :cond_3
    :try_start_3
    iget-object v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v7, 0x3e8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    move-object v1, v0

    goto :goto_0

    .line 221
    :cond_4
    iget-object v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    iget v7, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->readTimeout:I

    int-to-long v7, v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    move-object v1, v0

    .line 222
    if-nez v1, :cond_0

    .line 223
    new-instance v5, Ljava/net/SocketTimeoutException;

    invoke-direct {v5}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 226
    :catch_0
    move-exception v2

    .line 228
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    move v5, v6

    .line 229
    goto :goto_1

    .line 244
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v3       #seq:J
    :cond_5
    iput-wide v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->seq:J

    .line 248
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getDecodedData()[B

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->buffer:[B

    .line 249
    const/4 v5, 0x0

    iput v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 164
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->closeInvoked:Z

    .line 170
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeByLocal(Z)V

    goto :goto_0
.end method

.method protected abstract getDataPacketFilter()Lorg/jivesoftware/smack/filter/PacketFilter;
.end method

.method protected abstract getDataPacketListener()Lorg/jivesoftware/smack/PacketListener;
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 260
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->checkClosed()V

    .line 263
    iget v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I

    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->buffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 265
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->loadBuffer()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->buffer:[B

    iget v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 282
    monitor-enter p0

    if-nez p1, :cond_0

    .line 283
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 284
    :cond_0
    if-ltz p2, :cond_1

    :try_start_1
    array-length v2, p1

    if-gt p2, v2, :cond_1

    if-ltz p3, :cond_1

    .line 285
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_1

    add-int v2, p2, p3

    if-gez v2, :cond_2

    .line 286
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :cond_2
    if-nez p3, :cond_4

    .line 288
    const/4 v1, 0x0

    .line 309
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 291
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->checkClosed()V

    .line 294
    iget v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I

    if-eq v2, v1, :cond_5

    iget v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I

    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->buffer:[B

    array-length v3, v3

    if-lt v2, v3, :cond_6

    .line 296
    :cond_5
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->loadBuffer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    :cond_6
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I

    sub-int v0, v1, v2

    .line 303
    .local v0, bytesAvailable:I
    if-le p3, v0, :cond_7

    .line 304
    move p3, v0

    .line 307
    :cond_7
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->buffer:[B

    iget v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    iget v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->bufferPointer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, p3

    .line 309
    goto :goto_0
.end method
