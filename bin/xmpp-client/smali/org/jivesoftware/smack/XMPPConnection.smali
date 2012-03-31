.class public Lorg/jivesoftware/smack/XMPPConnection;
.super Lorg/jivesoftware/smack/Connection;
.source "XMPPConnection.java"


# instance fields
.field private anonymous:Z

.field private authenticated:Z

.field private compressionMethods:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connected:Z

.field connectionID:Ljava/lang/String;

.field packetReader:Lorg/jivesoftware/smack/PacketReader;

.field packetWriter:Lorg/jivesoftware/smack/PacketWriter;

.field roster:Lorg/jivesoftware/smack/Roster;

.field socket:Ljava/net/Socket;

.field private user:Ljava/lang/String;

.field private usingCompression:Z

.field private usingTLS:Z

.field private wasAuthenticated:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "serviceName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/Connection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 69
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 76
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 81
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    .line 82
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 83
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 88
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 160
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    .line 161
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 162
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    sget-boolean v1, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setDebuggerEnabled(Z)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 3
    .parameter "serviceName"
    .parameter "callbackHandler"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/Connection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 69
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 76
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 81
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    .line 82
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 83
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 88
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 198
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    .line 199
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 200
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    sget-boolean v1, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setDebuggerEnabled(Z)V

    .line 201
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCallbackHandler(Ljavax/security/auth/callback/CallbackHandler;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Connection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 69
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 71
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 76
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 81
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    .line 82
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 83
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 88
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/ConnectionConfiguration;Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .parameter "config"
    .parameter "callbackHandler"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Connection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 69
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 71
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 76
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 81
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    .line 82
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 83
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 88
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 143
    invoke-virtual {p1, p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCallbackHandler(Ljavax/security/auth/callback/CallbackHandler;)V

    .line 144
    return-void
.end method

.method private connectUsingConfiguration(Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 8
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPort()I

    move-result v3

    .line 292
    .local v3, port:I
    :try_start_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    if-nez v5, :cond_0

    .line 293
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5, v1, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    :goto_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initConnection()V

    .line 310
    return-void

    .line 295
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 297
    :catch_0
    move-exception v4

    .line 298
    .local v4, uhe:Ljava/net/UnknownHostException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not connect to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 299
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 298
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, errorMessage:Ljava/lang/String;
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 301
    sget-object v7, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v6, v7, v0}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 300
    invoke-direct {v5, v0, v6, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v5

    .line 303
    .end local v0           #errorMessage:Ljava/lang/String;
    .end local v4           #uhe:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 304
    .local v2, ioe:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "XMPPError connecting to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 305
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 304
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .restart local v0       #errorMessage:Ljava/lang/String;
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 307
    sget-object v7, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v6, v7, v0}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 306
    invoke-direct {v5, v0, v6, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private hasAvailableCompressionMethod(Ljava/lang/String;)Z
    .locals 1
    .parameter "method"

    .prologue
    .line 412
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 412
    goto :goto_0
.end method

.method private initConnection()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 424
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    if-eqz v4, :cond_0

    .line 425
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    if-eqz v4, :cond_0

    move v1, v3

    .line 426
    .local v1, isFirstInitialization:Z
    :cond_0
    if-nez v1, :cond_1

    .line 427
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    .line 431
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 434
    if-eqz v1, :cond_4

    .line 435
    :try_start_0
    new-instance v4, Lorg/jivesoftware/smack/PacketWriter;

    invoke-direct {v4, p0}, Lorg/jivesoftware/smack/PacketWriter;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    .line 436
    new-instance v4, Lorg/jivesoftware/smack/PacketReader;

    invoke-direct {v4, p0}, Lorg/jivesoftware/smack/PacketReader;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    .line 441
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isDebuggerEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v4}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getReaderListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 443
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v4}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getWriterListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 444
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v4}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getWriterListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v4

    .line 445
    const/4 v5, 0x0

    .line 444
    invoke-virtual {p0, v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketSendingListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 455
    :cond_2
    :goto_0
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketWriter;->startup()V

    .line 458
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketReader;->startup()V

    .line 461
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 465
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketWriter;->startKeepAliveProcess()V

    .line 467
    if-eqz v1, :cond_b

    .line 469
    invoke-static {}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionCreationListeners()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_a

    .line 522
    :cond_3
    :goto_2
    return-void

    .line 449
    :cond_4
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketWriter;->init()V

    .line 450
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketReader;->init()V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 481
    .local v0, ex:Lorg/jivesoftware/smack/XMPPException;
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    if-eqz v4, :cond_5

    .line 483
    :try_start_1
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketWriter;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 486
    :goto_3
    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    .line 488
    :cond_5
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    if-eqz v4, :cond_6

    .line 490
    :try_start_2
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketReader;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 493
    :goto_4
    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    .line 495
    :cond_6
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_7

    .line 497
    :try_start_3
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 500
    :goto_5
    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    .line 502
    :cond_7
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    if-eqz v4, :cond_8

    .line 504
    :try_start_4
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 507
    :goto_6
    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    .line 509
    :cond_8
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_9

    .line 511
    :try_start_5
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 514
    :goto_7
    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    .line 516
    :cond_9
    iget-boolean v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    invoke-direct {p0, v4}, Lorg/jivesoftware/smack/XMPPConnection;->setWasAuthenticated(Z)V

    .line 517
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 518
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 520
    throw v0

    .line 469
    .end local v0           #ex:Lorg/jivesoftware/smack/XMPPException;
    :cond_a
    :try_start_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/ConnectionCreationListener;

    .line 470
    .local v2, listener:Lorg/jivesoftware/smack/ConnectionCreationListener;
    invoke-interface {v2, p0}, Lorg/jivesoftware/smack/ConnectionCreationListener;->connectionCreated(Lorg/jivesoftware/smack/Connection;)V

    goto :goto_1

    .line 472
    .end local v2           #listener:Lorg/jivesoftware/smack/ConnectionCreationListener;
    :cond_b
    iget-boolean v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    if-nez v4, :cond_3

    .line 473
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketReader;->notifyReconnection()V
    :try_end_6
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 512
    .restart local v0       #ex:Lorg/jivesoftware/smack/XMPPException;
    :catch_1
    move-exception v4

    goto :goto_7

    .line 505
    :catch_2
    move-exception v4

    goto :goto_6

    .line 498
    :catch_3
    move-exception v4

    goto :goto_5

    .line 491
    :catch_4
    move-exception v4

    goto :goto_4

    .line 484
    :catch_5
    move-exception v4

    goto :goto_3
.end method

.method private initReaderAndWriter()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 526
    :try_start_0
    iget-boolean v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    if-nez v8, :cond_0

    .line 527
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 528
    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 527
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    .line 529
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    .line 530
    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 529
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 572
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initDebugger()V

    .line 573
    return-void

    .line 534
    :cond_0
    :try_start_1
    const-string v8, "com.jcraft.jzlib.ZOutputStream"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 535
    .local v7, zoClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    .line 536
    const-class v10, Ljava/io/OutputStream;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 535
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 537
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 538
    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 537
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 539
    .local v5, out:Ljava/lang/Object;
    const-string v8, "setFlushMode"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    .line 540
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    .line 539
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 541
    .local v4, method:Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    .line 543
    check-cast v5, Ljava/io/OutputStream;

    .end local v5           #out:Ljava/lang/Object;
    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 542
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    .line 546
    const-string v8, "com.jcraft.jzlib.ZInputStream"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 547
    .local v6, ziClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/io/InputStream;

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 548
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    .line 549
    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    aput-object v10, v8, v9

    .line 548
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 550
    .local v2, in:Ljava/lang/Object;
    const-string v8, "setFlushMode"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 551
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 553
    check-cast v2, Ljava/io/InputStream;

    .end local v2           #in:Ljava/lang/Object;
    const-string v10, "UTF-8"

    invoke-direct {v9, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 552
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 554
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #ziClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #zoClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 555
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 557
    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 556
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    .line 558
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    .line 559
    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 558
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 562
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 563
    .local v3, ioe:Ljava/io/IOException;
    new-instance v8, Lorg/jivesoftware/smack/XMPPException;

    .line 564
    const-string v9, "XMPPError establishing connection with server."

    .line 565
    new-instance v10, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v11, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 566
    const-string v12, "XMPPError establishing connection with server."

    .line 565
    invoke-direct {v10, v11, v12}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 563
    invoke-direct {v8, v9, v10, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private requestStreamCompression()V
    .locals 3

    .prologue
    .line 885
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    const-string v2, "<compress xmlns=\'http://jabber.org/protocol/compress\'>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 886
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    const-string v2, "<method>zlib</method></compress>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 887
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setWasAuthenticated(Z)V
    .locals 1
    .parameter "wasAuthenticated"

    .prologue
    .line 921
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    if-nez v0, :cond_0

    .line 922
    iput-boolean p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    .line 924
    :cond_0
    return-void
.end method

.method private useCompression()Z
    .locals 3

    .prologue
    .line 1061
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    if-eqz v1, :cond_0

    .line 1062
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1063
    const-string v2, "Compression should be negotiated before authentication."

    .line 1062
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1066
    :cond_0
    :try_start_0
    const-string v1, "com.jcraft.jzlib.ZOutputStream"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    const-string v1, "zlib"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->hasAvailableCompressionMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1072
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->requestStreamCompression()V

    .line 1074
    monitor-enter p0

    .line 1076
    :try_start_1
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1074
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1081
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    .line 1083
    :goto_1
    return v1

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1069
    const-string v2, "Cannot use compression. Add smackx.jar to the classpath"

    .line 1068
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1074
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1083
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1077
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addPacketWriterInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 0
    .parameter "packetInterceptor"
    .parameter "packetFilter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 222
    return-void
.end method

.method public addPacketWriterListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 0
    .parameter "packetListener"
    .parameter "packetFilter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketSendingListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 244
    return-void
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->connectUsingConfiguration(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 270
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    if-eqz v1, :cond_0

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isAnonymous()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->loginAnonymously()V

    .line 280
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketReader;->notifyReconnection()V

    .line 285
    :cond_0
    :goto_1
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 278
    iget-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getResource()Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {p0, v1, v2, v3}, Lorg/jivesoftware/smack/XMPPConnection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized disconnect(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .parameter "unavailablePresence"

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->shutdown(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 321
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Roster;->cleanup()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 326
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    .line 328
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->cleanup()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    .line 330
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketReader;->cleanup()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRoster()Lorg/jivesoftware/smack/Roster;
    .locals 10

    .prologue
    .line 345
    monitor-enter p0

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isAnonymous()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 350
    :cond_0
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-nez v6, :cond_1

    .line 351
    new-instance v6, Lorg/jivesoftware/smack/Roster;

    invoke-direct {v6, p0}, Lorg/jivesoftware/smack/Roster;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 353
    :cond_1
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    monitor-exit p0

    .line 391
    :goto_0
    return-object v6

    .line 345
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isRosterLoadedAtLogin()Z

    move-result v6

    if-nez v6, :cond_3

    .line 358
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/Roster;->reload()V

    .line 372
    :cond_3
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    iget-boolean v6, v6, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    if-nez v6, :cond_5

    .line 374
    :try_start_1
    iget-object v7, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    :try_start_2
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v4, v6

    .line 376
    .local v4, waitTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 377
    .local v2, start:J
    :goto_1
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    iget-boolean v6, v6, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    if-eqz v6, :cond_6

    .line 374
    :cond_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 391
    .end local v2           #start:J
    .end local v4           #waitTime:J
    :cond_5
    :goto_2
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 378
    .restart local v2       #start:J
    .restart local v4       #waitTime:J
    :cond_6
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-lez v6, :cond_4

    .line 381
    :try_start_4
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 383
    .local v0, now:J
    sub-long v8, v0, v2

    sub-long/2addr v4, v8

    .line 384
    move-wide v2, v0

    goto :goto_1

    .line 374
    .end local v0           #now:J
    .end local v2           #start:J
    .end local v4           #waitTime:J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 387
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    return v0
.end method

.method public isSecureConnection()Z
    .locals 1

    .prologue
    .line 592
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isUsingTLS()Z

    move-result v0

    return v0
.end method

.method public isUsingCompression()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    return v0
.end method

.method public isUsingTLS()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    return v0
.end method

.method public declared-synchronized login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "username"
    .parameter "password"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 617
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    if-eqz v1, :cond_1

    .line 618
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already logged in to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 624
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSASLAuthenticationEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 625
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->hasNonAnonymousAuthentication()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 627
    if-eqz p2, :cond_8

    .line 628
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, response:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_a

    .line 642
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 644
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setServiceName(Ljava/lang/String;)V

    .line 654
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isCompressionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 655
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->useCompression()Z

    .line 659
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 660
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 664
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-nez v1, :cond_4

    .line 665
    new-instance v1, Lorg/jivesoftware/smack/Roster;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/Roster;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 667
    :cond_4
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isRosterLoadedAtLogin()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 668
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Roster;->reload()V

    .line 672
    :cond_5
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSendPresence()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 673
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 677
    :cond_6
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isDebuggerEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-eqz v1, :cond_7

    .line 686
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->userHasLogged(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    :cond_7
    monitor-exit p0

    return-void

    .line 631
    .end local v0           #response:Ljava/lang/String;
    :cond_8
    :try_start_2
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    .line 632
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v2

    .line 631
    invoke-virtual {v1, p1, p3, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljavax/security/auth/callback/CallbackHandler;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #response:Ljava/lang/String;
    goto :goto_0

    .line 636
    .end local v0           #response:Ljava/lang/String;
    :cond_9
    new-instance v1, Lorg/jivesoftware/smack/NonSASLAuthentication;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #response:Ljava/lang/String;
    goto :goto_0

    .line 646
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 647
    if-eqz p3, :cond_2

    .line 648
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized loginAnonymously()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 692
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 695
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    if-eqz v1, :cond_1

    .line 696
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already logged in to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 700
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSASLAuthenticationEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 701
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->hasAnonymousAuthentication()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 702
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticateAnonymously()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, response:Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 712
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setServiceName(Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isCompressionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 717
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->useCompression()Z

    .line 721
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 724
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 725
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 733
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isDebuggerEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-eqz v1, :cond_3

    .line 734
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->userHasLogged(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    :cond_3
    monitor-exit p0

    return-void

    .line 705
    .end local v0           #response:Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v1, Lorg/jivesoftware/smack/NonSASLAuthentication;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 706
    invoke-virtual {v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticateAnonymously()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 705
    .restart local v0       #response:Ljava/lang/String;
    goto :goto_0
.end method

.method proceedTLSReceived()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 752
    const-string v18, "TLS"

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 753
    .local v7, context:Ljavax/net/ssl/SSLContext;
    const/4 v11, 0x0

    .line 754
    .local v11, ks:Ljava/security/KeyStore;
    const/4 v10, 0x0

    check-cast v10, [Ljavax/net/ssl/KeyManager;

    .line 755
    .local v10, kms:[Ljavax/net/ssl/KeyManager;
    const/4 v14, 0x0

    .line 757
    .local v14, pcb:Ljavax/security/auth/callback/PasswordCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v18

    if-nez v18, :cond_0

    .line 758
    const/4 v11, 0x0

    .line 818
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lorg/jivesoftware/smack/ServerTrustManager;

    .line 819
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lorg/jivesoftware/smack/ServerTrustManager;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    aput-object v20, v18, v19

    .line 820
    new-instance v19, Ljava/security/SecureRandom;

    invoke-direct/range {v19 .. v19}, Ljava/security/SecureRandom;-><init>()V

    .line 817
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v10, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    move-object/from16 v17, v0

    .line 823
    .local v17, plain:Ljava/net/Socket;
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v18

    .line 824
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getPort()I

    move-result v20

    const/16 v21, 0x1

    .line 823
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 828
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    move-object/from16 v18, v0

    check-cast v18, Ljavax/net/ssl/SSLSocket;

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 841
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jivesoftware/smack/PacketWriter;->setWriter(Ljava/io/Writer;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 847
    return-void

    .line 761
    .end local v17           #plain:Ljava/net/Socket;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getKeystoreType()Ljava/lang/String;

    move-result-object v18

    const-string v19, "NONE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 762
    const/4 v11, 0x0

    .line 763
    const/4 v14, 0x0

    .line 802
    :goto_1
    const-string v18, "SunX509"

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v9

    .line 804
    .local v9, kmf:Ljavax/net/ssl/KeyManagerFactory;
    if-nez v14, :cond_4

    .line 805
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v9, v11, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 810
    :goto_2
    invoke-virtual {v9}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    goto/16 :goto_0

    .line 764
    .end local v9           #kmf:Ljavax/net/ssl/KeyManagerFactory;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getKeystoreType()Ljava/lang/String;

    move-result-object v18

    const-string v19, "PKCS11"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 767
    :try_start_1
    const-string v18, "sun.security.pkcs11.SunPKCS11"

    .line 766
    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 768
    const-class v21, Ljava/io/InputStream;

    aput-object v21, v19, v20

    .line 767
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 769
    .local v5, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "name = SmartCard\nlibrary = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPKCS11Library()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 769
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 771
    .local v16, pkcs11Config:Ljava/lang/String;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 772
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    .line 771
    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 773
    .local v6, config:Ljava/io/ByteArrayInputStream;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/Provider;

    .line 774
    .local v13, p:Ljava/security/Provider;
    invoke-static {v13}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 775
    const-string v18, "PKCS11"

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v11

    .line 776
    new-instance v15, Ljavax/security/auth/callback/PasswordCallback;

    const-string v18, "PKCS11 Password: "

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 777
    .end local v14           #pcb:Ljavax/security/auth/callback/PasswordCallback;
    .local v15, pcb:Ljavax/security/auth/callback/PasswordCallback;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v18

    .line 778
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljavax/security/auth/callback/Callback;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    .line 777
    invoke-interface/range {v18 .. v19}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 779
    const/16 v18, 0x0

    invoke-virtual {v15}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v14, v15

    .end local v15           #pcb:Ljavax/security/auth/callback/PasswordCallback;
    .restart local v14       #pcb:Ljavax/security/auth/callback/PasswordCallback;
    goto/16 :goto_1

    .line 780
    .end local v5           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v6           #config:Ljava/io/ByteArrayInputStream;
    .end local v13           #p:Ljava/security/Provider;
    .end local v16           #pkcs11Config:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 781
    .local v8, e:Ljava/lang/Exception;
    :goto_3
    const/4 v11, 0x0

    .line 782
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 784
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getKeystoreType()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Apple"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 785
    const-string v18, "KeychainStore"

    const-string v19, "Apple"

    invoke-static/range {v18 .. v19}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 786
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto/16 :goto_1

    .line 790
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getKeystoreType()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 792
    :try_start_3
    new-instance v15, Ljavax/security/auth/callback/PasswordCallback;

    const-string v18, "Keystore Password: "

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 793
    .end local v14           #pcb:Ljavax/security/auth/callback/PasswordCallback;
    .restart local v15       #pcb:Ljavax/security/auth/callback/PasswordCallback;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljavax/security/auth/callback/Callback;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    invoke-interface/range {v18 .. v19}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 794
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getKeystorePath()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v15}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v19

    .line 794
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v14, v15

    .end local v15           #pcb:Ljavax/security/auth/callback/PasswordCallback;
    .restart local v14       #pcb:Ljavax/security/auth/callback/PasswordCallback;
    goto/16 :goto_1

    .line 796
    :catch_1
    move-exception v8

    .line 797
    .restart local v8       #e:Ljava/lang/Exception;
    :goto_4
    const/4 v11, 0x0

    .line 798
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 807
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #kmf:Ljavax/net/ssl/KeyManagerFactory;
    :cond_4
    :try_start_5
    invoke-virtual {v14}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v11, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 808
    invoke-virtual {v14}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 811
    :catch_2
    move-exception v12

    .line 812
    .local v12, npe:Ljava/lang/NullPointerException;
    const/4 v10, 0x0

    check-cast v10, [Ljavax/net/ssl/KeyManager;

    goto/16 :goto_0

    .line 796
    .end local v9           #kmf:Ljavax/net/ssl/KeyManagerFactory;
    .end local v12           #npe:Ljava/lang/NullPointerException;
    .end local v14           #pcb:Ljavax/security/auth/callback/PasswordCallback;
    .restart local v15       #pcb:Ljavax/security/auth/callback/PasswordCallback;
    :catch_3
    move-exception v8

    move-object v14, v15

    .end local v15           #pcb:Ljavax/security/auth/callback/PasswordCallback;
    .restart local v14       #pcb:Ljavax/security/auth/callback/PasswordCallback;
    goto :goto_4

    .line 780
    .end local v14           #pcb:Ljavax/security/auth/callback/PasswordCallback;
    .restart local v5       #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v6       #config:Ljava/io/ByteArrayInputStream;
    .restart local v13       #p:Ljava/security/Provider;
    .restart local v15       #pcb:Ljavax/security/auth/callback/PasswordCallback;
    .restart local v16       #pkcs11Config:Ljava/lang/String;
    :catch_4
    move-exception v8

    move-object v14, v15

    .end local v15           #pcb:Ljavax/security/auth/callback/PasswordCallback;
    .restart local v14       #pcb:Ljavax/security/auth/callback/PasswordCallback;
    goto/16 :goto_3
.end method

.method public removePacketWriterInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;)V
    .locals 0
    .parameter "packetInterceptor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 861
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->removePacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;)V

    .line 862
    return-void
.end method

.method public removePacketWriterListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 0
    .parameter "packetListener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->removePacketSendingListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 875
    return-void
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 895
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_0
    if-nez p1, :cond_1

    .line 899
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 902
    return-void
.end method

.method setAvailableCompressionMethods(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, methods:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    .line 912
    return-void
.end method

.method protected shutdown(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 3
    .parameter "unavailablePresence"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 939
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 941
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setWasAuthenticated(Z)V

    .line 942
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 943
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 945
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketReader;->shutdown()V

    .line 946
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->shutdown()V

    .line 949
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 957
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 960
    :goto_1
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    .line 962
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 964
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 967
    :goto_2
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    .line 971
    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 976
    :goto_3
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->init()V

    .line 977
    return-void

    .line 950
    :catch_0
    move-exception v0

    goto :goto_0

    .line 972
    :catch_1
    move-exception v0

    goto :goto_3

    .line 965
    :catch_2
    move-exception v0

    goto :goto_2

    .line 958
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method startStreamCompression()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    .line 990
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 993
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/PacketWriter;->setWriter(Ljava/io/Writer;)V

    .line 995
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 997
    monitor-enter p0

    .line 998
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 997
    monitor-exit p0

    .line 1000
    return-void

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startTLSReceived(Z)V
    .locals 4
    .parameter "required"

    .prologue
    .line 1010
    if-eqz p1, :cond_1

    .line 1011
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    if-ne v1, v2, :cond_1

    .line 1012
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    .line 1013
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 1014
    const-string v3, "TLS required by server but not allowed by connection configuration"

    .line 1013
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    if-eq v1, v2, :cond_0

    .line 1023
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    const-string v2, "<starttls xmlns=\"urn:ietf:params:xml:ns:xmpp-tls\"/>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1024
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method streamCompressionDenied()V
    .locals 1

    .prologue
    .line 1035
    monitor-enter p0

    .line 1036
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1035
    monitor-exit p0

    .line 1038
    return-void

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
