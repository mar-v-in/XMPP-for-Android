.class Lorg/jivesoftware/smack/Roster$RosterPacketListener;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/Roster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RosterPacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/Roster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smack/Roster;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/Roster$RosterPacketListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Roster$RosterPacketListener;-><init>(Lorg/jivesoftware/smack/Roster;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 22
    .parameter "packet"

    .prologue
    .line 197
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v8, addedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v20, updatedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, deletedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v19, p1

    .line 201
    check-cast v19, Lorg/jivesoftware/smack/packet/RosterPacket;

    .line 202
    .local v19, rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    monitor-enter v3

    .line 325
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 324
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    move-object/from16 v0, v20

    #calls: Lorg/jivesoftware/smack/Roster;->fireRosterChangedEvent(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    invoke-static {v2, v8, v0, v10}, Lorg/jivesoftware/smack/Roster;->access$8(Lorg/jivesoftware/smack/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 331
    return-void

    .line 202
    :cond_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 203
    .local v13, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    new-instance v1, Lorg/jivesoftware/smack/RosterEntry;

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v4

    .line 205
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v7}, Lorg/jivesoftware/smack/Roster;->access$5(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Connection;

    move-result-object v7

    .line 203
    invoke-direct/range {v1 .. v7}, Lorg/jivesoftware/smack/RosterEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/Connection;)V

    .line 208
    .local v1, entry:Lorg/jivesoftware/smack/RosterEntry;
    sget-object v2, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->remove:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$2(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$2(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->unfiledEntries:Ljava/util/List;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$6(Lorg/jivesoftware/smack/Roster;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->unfiledEntries:Ljava/util/List;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$6(Lorg/jivesoftware/smack/Roster;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 220
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 222
    .local v14, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v14           #key:Ljava/lang/String;
    :cond_4
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v9, currentGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Roster;->getGroups()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    .line 272
    sget-object v2, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->remove:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 274
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v16, newGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getGroupNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    .line 295
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    .line 302
    .end local v16           #newGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Roster;->getGroups()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jivesoftware/smack/RosterGroup;

    .line 317
    .local v11, group:Lorg/jivesoftware/smack/RosterGroup;
    invoke-virtual {v11}, Lorg/jivesoftware/smack/RosterGroup;->getEntryCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->groups:Ljava/util/Map;
    invoke-static {v3}, Lorg/jivesoftware/smack/Roster;->access$7(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v11}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 227
    .end local v9           #currentGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #group:Lorg/jivesoftware/smack/RosterGroup;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$2(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$2(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_a
    :goto_6
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getGroupNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->unfiledEntries:Ljava/util/List;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$6(Lorg/jivesoftware/smack/Roster;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 234
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$2(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v2

    .line 235
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/jivesoftware/smack/RosterEntry;

    .line 238
    .local v17, oldEntry:Lorg/jivesoftware/smack/RosterEntry;
    invoke-static/range {v17 .. v17}, Lorg/jivesoftware/smack/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/RosterEntry;)Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    move-result-object v18

    .line 241
    .local v18, oldItem:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    if-eqz v17, :cond_c

    .line 242
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/RosterEntry;->equalsDeep(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 243
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getGroupNames()Ljava/util/Set;

    move-result-object v2

    .line 244
    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getGroupNames()Ljava/util/Set;

    move-result-object v3

    .line 243
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 245
    :cond_c
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 256
    .end local v17           #oldEntry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v18           #oldItem:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->unfiledEntries:Ljava/util/List;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$6(Lorg/jivesoftware/smack/Roster;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->unfiledEntries:Ljava/util/List;
    invoke-static {v2}, Lorg/jivesoftware/smack/Roster;->access$6(Lorg/jivesoftware/smack/Roster;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 264
    .restart local v9       #currentGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jivesoftware/smack/RosterGroup;

    .line 265
    .restart local v11       #group:Lorg/jivesoftware/smack/RosterGroup;
    invoke-virtual {v11, v1}, Lorg/jivesoftware/smack/RosterGroup;->contains(Lorg/jivesoftware/smack/RosterEntry;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 266
    invoke-virtual {v11}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 275
    .end local v11           #group:Lorg/jivesoftware/smack/RosterGroup;
    .restart local v16       #newGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 277
    .local v12, groupName:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v3, v12}, Lorg/jivesoftware/smack/Roster;->getGroup(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterGroup;

    move-result-object v11

    .line 281
    .restart local v11       #group:Lorg/jivesoftware/smack/RosterGroup;
    if-nez v11, :cond_10

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v3, v12}, Lorg/jivesoftware/smack/Roster;->createGroup(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterGroup;

    move-result-object v11

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->groups:Ljava/util/Map;
    invoke-static {v3}, Lorg/jivesoftware/smack/Roster;->access$7(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_10
    invoke-virtual {v11, v1}, Lorg/jivesoftware/smack/RosterGroup;->addEntryLocal(Lorg/jivesoftware/smack/RosterEntry;)V

    goto/16 :goto_2

    .line 295
    .end local v11           #group:Lorg/jivesoftware/smack/RosterGroup;
    .end local v12           #groupName:Ljava/lang/String;
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 296
    .local v15, newGroupName:Ljava/lang/String;
    invoke-interface {v9, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 302
    .end local v15           #newGroupName:Ljava/lang/String;
    .end local v16           #newGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 303
    .restart local v12       #groupName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v3, v12}, Lorg/jivesoftware/smack/Roster;->getGroup(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterGroup;

    move-result-object v11

    .line 304
    .restart local v11       #group:Lorg/jivesoftware/smack/RosterGroup;
    invoke-virtual {v11, v1}, Lorg/jivesoftware/smack/RosterGroup;->removeEntryLocal(Lorg/jivesoftware/smack/RosterEntry;)V

    .line 305
    invoke-virtual {v11}, Lorg/jivesoftware/smack/RosterGroup;->getEntryCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->groups:Ljava/util/Map;
    invoke-static {v3}, Lorg/jivesoftware/smack/Roster;->access$7(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 324
    .end local v1           #entry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v9           #currentGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #group:Lorg/jivesoftware/smack/RosterGroup;
    .end local v12           #groupName:Ljava/lang/String;
    .end local v13           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
