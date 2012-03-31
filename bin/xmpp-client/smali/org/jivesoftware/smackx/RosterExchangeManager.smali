.class public Lorg/jivesoftware/smackx/RosterExchangeManager;
.super Ljava/lang/Object;
.source "RosterExchangeManager.java"


# instance fields
.field private final con:Lorg/jivesoftware/smack/Connection;

.field private final packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private packetListener:Lorg/jivesoftware/smack/PacketListener;

.field private final rosterExchangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/RosterExchangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .parameter "con"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->rosterExchangeListeners:Ljava/util/List;

    .line 53
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v1, "x"

    .line 54
    const-string v2, "jabber:x:roster"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 64
    iput-object p1, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->con:Lorg/jivesoftware/smack/Connection;

    .line 65
    invoke-direct {p0}, Lorg/jivesoftware/smackx/RosterExchangeManager;->init()V

    .line 66
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/RosterExchangeManager;Ljava/lang/String;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/RosterExchangeManager;->fireRosterExchangeListeners(Ljava/lang/String;Ljava/util/Iterator;)V

    return-void
.end method

.method private fireRosterExchangeListeners(Ljava/lang/String;Ljava/util/Iterator;)V
    .locals 4
    .parameter "from"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/RemoteRosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, remoteRosterEntries:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/RemoteRosterEntry;>;"
    const/4 v1, 0x0

    check-cast v1, [Lorg/jivesoftware/smackx/RosterExchangeListener;

    .line 102
    .local v1, listeners:[Lorg/jivesoftware/smackx/RosterExchangeListener;
    iget-object v3, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->rosterExchangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->rosterExchangeListeners:Ljava/util/List;

    .line 104
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 103
    new-array v1, v2, [Lorg/jivesoftware/smackx/RosterExchangeListener;

    .line 105
    iget-object v2, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->rosterExchangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 110
    return-void

    .line 102
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 107
    :cond_0
    aget-object v0, v1, v2

    .line 108
    .local v0, listener:Lorg/jivesoftware/smackx/RosterExchangeListener;
    invoke-interface {v0, p1, p2}, Lorg/jivesoftware/smackx/RosterExchangeListener;->entriesReceived(Ljava/lang/String;Ljava/util/Iterator;)V

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lorg/jivesoftware/smackx/RosterExchangeManager$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/RosterExchangeManager$1;-><init>(Lorg/jivesoftware/smackx/RosterExchangeManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 127
    iget-object v0, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->con:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v2, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 128
    return-void
.end method


# virtual methods
.method public addRosterListener(Lorg/jivesoftware/smackx/RosterExchangeListener;)V
    .locals 2
    .parameter "rosterExchangeListener"

    .prologue
    .line 76
    iget-object v1, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->rosterExchangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->rosterExchangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->rosterExchangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    monitor-exit v1

    .line 81
    return-void

    .line 76
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
    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->con:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->con:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 88
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
    .line 92
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/RosterExchangeManager;->destroy()V

    .line 93
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    return-void
.end method

.method public removeRosterListener(Lorg/jivesoftware/smackx/RosterExchangeListener;)V
    .locals 2
    .parameter "rosterExchangeListener"

    .prologue
    .line 139
    iget-object v1, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->rosterExchangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->rosterExchangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v1

    .line 142
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public send(Lorg/jivesoftware/smack/Roster;Ljava/lang/String;)V
    .locals 3
    .parameter "roster"
    .parameter "targetUserID"

    .prologue
    .line 155
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0, p2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, msg:Lorg/jivesoftware/smack/packet/Message;
    new-instance v1, Lorg/jivesoftware/smackx/packet/RosterExchange;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/packet/RosterExchange;-><init>(Lorg/jivesoftware/smack/Roster;)V

    .line 158
    .local v1, rosterExchange:Lorg/jivesoftware/smackx/packet/RosterExchange;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 161
    iget-object v2, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 162
    return-void
.end method

.method public send(Lorg/jivesoftware/smack/RosterEntry;Ljava/lang/String;)V
    .locals 3
    .parameter "rosterEntry"
    .parameter "targetUserID"

    .prologue
    .line 174
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0, p2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, msg:Lorg/jivesoftware/smack/packet/Message;
    new-instance v1, Lorg/jivesoftware/smackx/packet/RosterExchange;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/RosterExchange;-><init>()V

    .line 177
    .local v1, rosterExchange:Lorg/jivesoftware/smackx/packet/RosterExchange;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/packet/RosterExchange;->addRosterEntry(Lorg/jivesoftware/smack/RosterEntry;)V

    .line 178
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 181
    iget-object v2, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 182
    return-void
.end method

.method public send(Lorg/jivesoftware/smack/RosterGroup;Ljava/lang/String;)V
    .locals 5
    .parameter "rosterGroup"
    .parameter "targetUserID"

    .prologue
    .line 195
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1, p2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, msg:Lorg/jivesoftware/smack/packet/Message;
    new-instance v2, Lorg/jivesoftware/smackx/packet/RosterExchange;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/RosterExchange;-><init>()V

    .line 198
    .local v2, rosterExchange:Lorg/jivesoftware/smackx/packet/RosterExchange;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterGroup;->getEntries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 201
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 204
    iget-object v3, p0, Lorg/jivesoftware/smackx/RosterExchangeManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 205
    return-void

    .line 198
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    .line 199
    .local v0, entry:Lorg/jivesoftware/smack/RosterEntry;
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/packet/RosterExchange;->addRosterEntry(Lorg/jivesoftware/smack/RosterEntry;)V

    goto :goto_0
.end method
