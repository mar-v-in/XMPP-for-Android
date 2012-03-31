.class public Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;
.super Ljava/lang/Object;
.source "AgentRoster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;,
        Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;
    }
.end annotation


# static fields
.field private static final EVENT_AGENT_ADDED:I = 0x0

.field private static final EVENT_AGENT_REMOVED:I = 0x1

.field private static final EVENT_PRESENCE_CHANGED:I = 0x2


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final presenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;>;"
        }
    .end annotation
.end field

.field rosterInitialized:Z

.field private final workgroupJID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 5
    .parameter "connection"
    .parameter "workgroupJID"

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->rosterInitialized:Z

    .line 197
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->connection:Lorg/jivesoftware/smack/Connection;

    .line 198
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->workgroupJID:Ljava/lang/String;

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    .line 201
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;

    .line 203
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 204
    const-class v2, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    .line 203
    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 205
    .local v1, rosterFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;

    invoke-direct {v2, p0, v3}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;)V

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 207
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;

    invoke-direct {v2, p0, v3}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;)V

    .line 208
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v4, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 207
    invoke-virtual {p1, v2, v3}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 211
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;-><init>()V

    .line 212
    .local v0, request:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->setTo(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 214
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->fireEvent(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->workgroupJID:Ljava/lang/String;

    return-object v0
.end method

.method private fireEvent(ILjava/lang/Object;)V
    .locals 5
    .parameter "eventType"
    .parameter "eventObject"

    .prologue
    .line 280
    const/4 v1, 0x0

    check-cast v1, [Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;

    .line 281
    .local v1, listeners:[Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 282
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;

    .line 283
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 281
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    array-length v4, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 298
    return-void

    .line 281
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 285
    :cond_0
    aget-object v0, v1, v3

    .line 286
    .local v0, listener:Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :pswitch_0
    move-object v2, p2

    .line 288
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;->agentAdded(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    move-object v2, p2

    .line 291
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;->agentRemoved(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    move-object v2, p2

    .line 294
    check-cast v2, Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v0, v2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;->presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_1

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "user"

    .prologue
    .line 388
    move-object v0, p1

    .line 389
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    .line 224
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    monitor-enter v4

    .line 225
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->getAgents()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 224
    :cond_1
    monitor-exit v4

    .line 251
    return-void

    .line 230
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    .local v0, jid:Ljava/lang/String;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-interface {p1, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;->agentAdded(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;

    .line 238
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 239
    .local v2, userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-eqz v2, :cond_0

    .line 241
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 242
    .local v1, presences:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smack/packet/Presence;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {p1, v3}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;->presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0

    .line 224
    .end local v0           #jid:Ljava/lang/String;
    .end local v1           #presences:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smack/packet/Presence;>;"
    .end local v2           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 6
    .parameter "jid"

    .prologue
    const/4 v1, 0x0

    .line 263
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return v1

    .line 266
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    monitor-enter v2

    .line 267
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 266
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 267
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, entry:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAgentCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAgents()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 316
    .local v0, agents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    monitor-enter v3

    .line 317
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 316
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 317
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    .local v1, string:Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v1           #string:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getPresence(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 7
    .parameter "user"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 340
    .local v4, userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-nez v4, :cond_1

    .line 341
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 342
    .local v3, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 367
    :cond_0
    :goto_0
    return-object v3

    .line 348
    .end local v3           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 350
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 352
    .restart local v3       #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 362
    if-nez v3, :cond_0

    .line 363
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    .end local v3           #presence:Lorg/jivesoftware/smack/packet/Presence;
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 364
    .restart local v3       #presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Presence;

    .line 354
    .local v2, p:Lorg/jivesoftware/smack/packet/Presence;
    if-nez v3, :cond_4

    .line 355
    move-object v3, v2

    goto :goto_1

    .line 357
    :cond_4
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v5

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 358
    move-object v3, v2

    goto :goto_1
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 402
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;-><init>()V

    .line 403
    .local v0, request:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->setTo(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 405
    return-void
.end method

.method public removeListener(Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 415
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 415
    monitor-exit v1

    .line 418
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
