.class public Lorg/jivesoftware/smack/RosterGroup;
.super Ljava/lang/Object;
.source "RosterGroup.java"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "name"
    .parameter "connection"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smack/RosterGroup;->name:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/jivesoftware/smack/RosterGroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public addEntry(Lorg/jivesoftware/smack/RosterEntry;)V
    .locals 8
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    monitor-enter v5

    .line 75
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 77
    .local v2, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 78
    invoke-static {p1}, Lorg/jivesoftware/smack/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/RosterEntry;)Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    move-result-object v1

    .line 79
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 83
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterGroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 84
    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 85
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->getPacketID()Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 86
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterGroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 74
    .end local v1           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v2           #packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-eqz v0, :cond_2

    .line 91
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 90
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 92
    .local v3, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 93
    if-nez v3, :cond_1

    .line 94
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from the server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    .end local v3           #response:Lorg/jivesoftware/smack/packet/IQ;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 97
    .restart local v3       #response:Lorg/jivesoftware/smack/packet/IQ;
    :cond_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_2

    .line 98
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 101
    .end local v3           #response:Lorg/jivesoftware/smack/packet/IQ;
    :cond_2
    return-void
.end method

.method addEntryLocal(Lorg/jivesoftware/smack/RosterEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 105
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v1

    .line 109
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/RosterGroup;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/jivesoftware/smack/RosterEntry;)Z
    .locals 2
    .parameter "entry"

    .prologue
    .line 119
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEntries()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    monitor-enter v1

    .line 142
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 143
    iget-object v2, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    .line 142
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;
    .locals 6
    .parameter "user"

    .prologue
    const/4 v2, 0x0

    .line 157
    if-nez p1, :cond_0

    move-object v0, v2

    .line 171
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, userLowerCase:Ljava/lang/String;
    iget-object v3, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    monitor-enter v3

    .line 165
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 164
    monitor-exit v3

    move-object v0, v2

    .line 171
    goto :goto_0

    .line 165
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    .line 166
    .local v0, entry:Lorg/jivesoftware/smack/RosterEntry;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    monitor-exit v3

    goto :goto_0

    .line 164
    .end local v0           #entry:Lorg/jivesoftware/smack/RosterEntry;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getEntryCount()I
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public removeEntry(Lorg/jivesoftware/smack/RosterEntry;)V
    .locals 8
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 215
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    monitor-enter v5

    .line 216
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 218
    .local v2, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 219
    invoke-static {p1}, Lorg/jivesoftware/smack/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/RosterEntry;)Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    move-result-object v1

    .line 220
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->removeGroupName(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 224
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterGroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 225
    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 226
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->getPacketID()Ljava/lang/String;

    move-result-object v7

    .line 225
    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 227
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterGroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 215
    .end local v1           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v2           #packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    if-eqz v0, :cond_2

    .line 232
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 231
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 233
    .local v3, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 234
    if-nez v3, :cond_1

    .line 235
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from the server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 215
    .end local v3           #response:Lorg/jivesoftware/smack/packet/IQ;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 238
    .restart local v3       #response:Lorg/jivesoftware/smack/packet/IQ;
    :cond_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_2

    .line 239
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 242
    .end local v3           #response:Lorg/jivesoftware/smack/packet/IQ;
    :cond_2
    return-void
.end method

.method removeEntryLocal(Lorg/jivesoftware/smack/RosterEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 246
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    monitor-exit v1

    .line 251
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 264
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    monitor-enter v4

    .line 265
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/RosterGroup;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 264
    monitor-exit v4

    .line 275
    return-void

    .line 265
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    .line 266
    .local v0, entry:Lorg/jivesoftware/smack/RosterEntry;
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 267
    .local v2, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 268
    invoke-static {v0}, Lorg/jivesoftware/smack/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/RosterEntry;)Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    move-result-object v1

    .line 269
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    iget-object v5, p0, Lorg/jivesoftware/smack/RosterGroup;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->removeGroupName(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 272
    iget-object v5, p0, Lorg/jivesoftware/smack/RosterGroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 264
    .end local v0           #entry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v1           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v2           #packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
