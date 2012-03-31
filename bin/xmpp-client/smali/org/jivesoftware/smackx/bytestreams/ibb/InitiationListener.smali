.class Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;
.super Ljava/lang/Object;
.source "InitiationListener.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# instance fields
.field private final initFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private final initiationListenerExecutor:Ljava/util/concurrent/ExecutorService;

.field private final manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V
    .locals 5
    .parameter "manager"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 50
    const-class v4, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/jivesoftware/smack/filter/IQTypeFilter;

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/IQTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->initFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 62
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->initiationListenerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->processRequest(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method private processRequest(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .parameter "packet"

    .prologue
    .line 87
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    .line 90
    .local v0, ibbRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getBlockSize()I

    move-result v4

    iget-object v5, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getMaximumBlockSize()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 91
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->replyResourceConstraintPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getIgnoredBytestreamRequests()Ljava/util/List;

    move-result-object v4

    .line 97
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getSessionID()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    new-instance v2, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;

    .line 103
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 102
    invoke-direct {v2, v4, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;)V

    .line 106
    .local v2, request:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 107
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getUserListener(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    move-result-object v3

    .line 108
    .local v3, userListener:Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    if-eqz v3, :cond_2

    .line 109
    invoke-interface {v3, v2}, Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;->incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getAllRequestListeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 116
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 117
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getAllRequestListeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 116
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    .line 118
    .local v1, listener:Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    invoke-interface {v1, v2}, Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;->incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;)V

    goto :goto_1

    .line 126
    .end local v1           #listener:Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    :cond_3
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->replyRejectPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    goto :goto_0
.end method


# virtual methods
.method protected getFilter()Lorg/jivesoftware/smack/filter/PacketFilter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->initFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    return-object v0
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->initiationListenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener$1;

    invoke-direct {v1, p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener$1;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method protected shutdown()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->initiationListenerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 135
    return-void
.end method
