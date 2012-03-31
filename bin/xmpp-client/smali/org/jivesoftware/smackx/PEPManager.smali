.class public Lorg/jivesoftware/smackx/PEPManager;
.super Ljava/lang/Object;
.source "PEPManager.java"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private packetListener:Lorg/jivesoftware/smack/PacketListener;

.field private final pepListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/PEPListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/PEPManager;->pepListeners:Ljava/util/List;

    .line 72
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    .line 73
    const-string v1, "event"

    const-string v2, "http://jabber.org/protocol/pubsub#event"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/PEPManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 83
    iput-object p1, p0, Lorg/jivesoftware/smackx/PEPManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 84
    invoke-direct {p0}, Lorg/jivesoftware/smackx/PEPManager;->init()V

    .line 85
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/PEPManager;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/PEPEvent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/PEPManager;->firePEPListeners(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/PEPEvent;)V

    return-void
.end method

.method private firePEPListeners(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/PEPEvent;)V
    .locals 4
    .parameter "from"
    .parameter "event"

    .prologue
    .line 119
    const/4 v1, 0x0

    check-cast v1, [Lorg/jivesoftware/smackx/PEPListener;

    .line 120
    .local v1, listeners:[Lorg/jivesoftware/smackx/PEPListener;
    iget-object v3, p0, Lorg/jivesoftware/smackx/PEPManager;->pepListeners:Ljava/util/List;

    monitor-enter v3

    .line 121
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/PEPManager;->pepListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lorg/jivesoftware/smackx/PEPListener;

    .line 122
    iget-object v2, p0, Lorg/jivesoftware/smackx/PEPManager;->pepListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 120
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 127
    return-void

    .line 120
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 124
    :cond_0
    aget-object v0, v1, v2

    .line 125
    .local v0, listener:Lorg/jivesoftware/smackx/PEPListener;
    invoke-interface {v0, p1, p2}, Lorg/jivesoftware/smackx/PEPListener;->eventReceived(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/PEPEvent;)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lorg/jivesoftware/smackx/PEPManager$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/PEPManager$1;-><init>(Lorg/jivesoftware/smackx/PEPManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/PEPManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 143
    iget-object v0, p0, Lorg/jivesoftware/smackx/PEPManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/PEPManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v2, p0, Lorg/jivesoftware/smackx/PEPManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 144
    return-void
.end method


# virtual methods
.method public addPEPListener(Lorg/jivesoftware/smackx/PEPListener;)V
    .locals 2
    .parameter "pepListener"

    .prologue
    .line 95
    iget-object v1, p0, Lorg/jivesoftware/smackx/PEPManager;->pepListeners:Ljava/util/List;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/PEPManager;->pepListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/PEPManager;->pepListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    monitor-exit v1

    .line 100
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jivesoftware/smackx/PEPManager;->connection:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/PEPManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/PEPManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/PEPManager;->destroy()V

    .line 112
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    return-void
.end method

.method public publish(Lorg/jivesoftware/smackx/packet/PEPItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 154
    new-instance v0, Lorg/jivesoftware/smackx/packet/PEPPubSub;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/packet/PEPPubSub;-><init>(Lorg/jivesoftware/smackx/packet/PEPItem;)V

    .line 155
    .local v0, pubSub:Lorg/jivesoftware/smackx/packet/PEPPubSub;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/PEPPubSub;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 159
    iget-object v1, p0, Lorg/jivesoftware/smackx/PEPManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 160
    return-void
.end method

.method public removePEPListener(Lorg/jivesoftware/smackx/PEPListener;)V
    .locals 2
    .parameter "pepListener"

    .prologue
    .line 169
    iget-object v1, p0, Lorg/jivesoftware/smackx/PEPManager;->pepListeners:Ljava/util/List;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/PEPManager;->pepListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v1

    .line 172
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
