.class public Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;
.super Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
.source "FaultTolerantNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;
    }
.end annotation


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private final primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

.field private secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private final secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V
    .locals 0
    .parameter "connection"
    .parameter "primary"
    .parameter "secondary"

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;-><init>()V

    .line 80
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 81
    iput-object p3, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 82
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 83
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->determineNegotiator(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v0

    return-object v0
.end method

.method private determineNegotiator(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 1
    .parameter "streamInitiation"

    .prologue
    .line 166
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public createIncomingStream(Lorg/jivesoftware/smackx/packet/StreamInitiation;)Ljava/io/InputStream;
    .locals 15
    .parameter "initiation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 92
    iget-object v11, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 94
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v13

    .line 93
    invoke-virtual {p0, v12, v13}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 96
    .local v1, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v11, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 97
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v12

    .line 96
    move-object/from16 v0, p1

    invoke-super {p0, v0, v12}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createInitiationAccept(Lorg/jivesoftware/smackx/packet/StreamInitiation;[Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/StreamInitiation;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 100
    const/4 v11, 0x2

    invoke-static {v11}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 101
    .local v10, threadPoolExecutor:Ljava/util/concurrent/ExecutorService;
    new-instance v8, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v8, v10}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 103
    .local v8, service:Ljava/util/concurrent/CompletionService;,"Ljava/util/concurrent/CompletionService<Ljava/io/InputStream;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v6, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<Ljava/io/InputStream;>;>;"
    const/4 v9, 0x0

    .line 105
    .local v9, stream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 107
    .local v3, exception:Lorg/jivesoftware/smack/XMPPException;
    :try_start_0
    new-instance v11, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;

    invoke-direct {v11, p0, v1}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;-><init>(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v8, v11}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v11, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;

    invoke-direct {v11, p0, v1}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;-><init>(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v8, v11}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    const/4 v7, 0x0

    .local v7, i:I
    move-object v4, v3

    .line 111
    .end local v3           #exception:Lorg/jivesoftware/smack/XMPPException;
    .local v4, exception:Lorg/jivesoftware/smack/XMPPException;
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-lt v7, v11, :cond_2

    .line 133
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 136
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 137
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 139
    if-nez v9, :cond_6

    .line 140
    if-eqz v4, :cond_5

    .line 141
    throw v4

    .line 114
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 115
    const-wide/16 v11, 0xa

    :try_start_2
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v11, v12, v13}, Ljava/util/concurrent/CompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 120
    .local v5, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    if-eqz v5, :cond_0

    .line 125
    :try_start_3
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/io/InputStream;

    move-object v9, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 116
    .end local v5           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 128
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v5       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    :catch_1
    move-exception v2

    .line 129
    .local v2, e:Ljava/util/concurrent/ExecutionException;
    :try_start_4
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-direct {v3, v11}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v4           #exception:Lorg/jivesoftware/smack/XMPPException;
    .restart local v3       #exception:Lorg/jivesoftware/smack/XMPPException;
    move-object v4, v3

    .end local v3           #exception:Lorg/jivesoftware/smack/XMPPException;
    .restart local v4       #exception:Lorg/jivesoftware/smack/XMPPException;
    goto :goto_0

    .line 132
    .end local v2           #e:Ljava/util/concurrent/ExecutionException;
    .end local v4           #exception:Lorg/jivesoftware/smack/XMPPException;
    .end local v5           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    .end local v7           #i:I
    .restart local v3       #exception:Lorg/jivesoftware/smack/XMPPException;
    :catchall_0
    move-exception v11

    .line 133
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 136
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 137
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 138
    throw v11

    .line 133
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 134
    .restart local v5       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    invoke-interface {v5, v14}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    .line 133
    .end local v3           #exception:Lorg/jivesoftware/smack/XMPPException;
    .end local v5           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    .restart local v4       #exception:Lorg/jivesoftware/smack/XMPPException;
    .restart local v7       #i:I
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 134
    .restart local v5       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    invoke-interface {v5, v14}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 143
    .end local v5           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    :cond_5
    new-instance v11, Lorg/jivesoftware/smack/XMPPException;

    const-string v12, "File transfer negotiation failed."

    invoke-direct {v11, v12}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 147
    :cond_6
    return-object v9

    .line 132
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #exception:Lorg/jivesoftware/smack/XMPPException;
    .restart local v3       #exception:Lorg/jivesoftware/smack/XMPPException;
    goto :goto_2

    .line 126
    .end local v3           #exception:Lorg/jivesoftware/smack/XMPPException;
    .restart local v4       #exception:Lorg/jivesoftware/smack/XMPPException;
    .restart local v5       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    :catch_2
    move-exception v11

    goto :goto_0
.end method

.method public createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .parameter "streamID"
    .parameter "initiator"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v2, p1, p2, p3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 162
    .local v1, stream:Ljava/io/OutputStream;
    :goto_0
    return-object v1

    .line 157
    .end local v1           #stream:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 158
    .local v0, ex:Lorg/jivesoftware/smack/XMPPException;
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v2, p1, p2, p3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .restart local v1       #stream:Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;
    .locals 3
    .parameter "from"
    .parameter "streamID"

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-nez v0, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 175
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 178
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/filter/OrFilter;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-object v0
.end method

.method public getNamespaces()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, primary:[Ljava/lang/String;
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, secondary:[Ljava/lang/String;
    array-length v3, v1

    .line 187
    array-length v4, v2

    .line 186
    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/lang/String;

    .line 188
    .local v0, namespaces:[Ljava/lang/String;
    array-length v3, v1

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    array-length v3, v1

    .line 190
    array-length v4, v2

    .line 189
    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    return-object v0
.end method

.method final initiateIncomingStream(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/packet/StreamInitiation;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 2
    .parameter "connection"
    .parameter "initiation"

    .prologue
    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 199
    const-string v1, "Initiation handled by createIncomingStream method"

    .line 198
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;
    .locals 2
    .parameter "streamInitiation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 206
    const-string v1, "Negotiation only handled by create incoming stream method."

    .line 205
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
