.class public Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;
.super Ljava/lang/Object;
.source "AgentSession.java"


# instance fields
.field private final agent:Lorg/jivesoftware/smackx/workgroup/agent/Agent;

.field private agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final invitationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;",
            ">;"
        }
    .end annotation
.end field

.field private maxChats:I

.field private final metaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final offerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;",
            ">;"
        }
    .end annotation
.end field

.field private online:Z

.field private final packetListener:Lorg/jivesoftware/smack/PacketListener;

.field private presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field private final queueUsersListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;",
            ">;"
        }
    .end annotation
.end field

.field private final queues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final transcriptManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;

.field private final transcriptSearchManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;

.field private final workgroupJID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .parameter "workgroupJID"
    .parameter "connection"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    .line 123
    invoke-virtual {p2}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 125
    const-string v2, "Must login to server before creating workgroup."

    .line 124
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 130
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;

    invoke-direct {v1, p2}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;

    .line 131
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;

    invoke-direct {v1, p2}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptSearchManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;

    .line 133
    const/4 v1, -0x1

    iput v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->maxChats:I

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queues:Ljava/util/Map;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    .line 144
    new-instance v0, Lorg/jivesoftware/smack/filter/OrFilter;

    invoke-direct {v0}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>()V

    .line 145
    .local v0, filter:Lorg/jivesoftware/smack/filter/OrFilter;
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 146
    const-class v2, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 145
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 147
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 148
    const-class v2, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 147
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 149
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 150
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 152
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$1;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 162
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {p2, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 164
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/Agent;

    invoke-direct {v1, p2, p1}, Lorg/jivesoftware/smackx/workgroup/agent/Agent;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agent:Lorg/jivesoftware/smackx/workgroup/agent/Agent;

    .line 165
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method private fireInvitationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .parameter "groupChatJID"
    .parameter "sessionID"
    .parameter "body"
    .parameter "from"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p5, metaData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;

    .line 237
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 236
    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    .local v0, invitation:Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    monitor-enter v2

    .line 241
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    monitor-exit v2

    .line 245
    return-void

    .line 241
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;

    .line 242
    .local v8, listener:Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;
    invoke-interface {v8, v0}, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;->invitationReceived(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;)V

    goto :goto_0

    .line 240
    .end local v8           #listener:Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fireOfferRequestEvent(Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;)V
    .locals 13
    .parameter "requestPacket"

    .prologue
    .line 249
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/Offer;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 250
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getUserJID()Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->getWorkgroupJID()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 252
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getTimeout()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v11, v2

    add-long/2addr v7, v11

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 253
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getMetaData()Ljava/util/Map;

    move-result-object v8

    .line 254
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getContent()Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;

    move-result-object v9

    move-object v2, p0

    .line 249
    invoke-direct/range {v0 .. v9}, Lorg/jivesoftware/smackx/workgroup/agent/Offer;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;)V

    .line 256
    .local v0, offer:Lorg/jivesoftware/smackx/workgroup/agent/Offer;
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    monitor-enter v2

    .line 257
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    monitor-exit v2

    .line 261
    return-void

    .line 257
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;

    .line 258
    .local v10, listener:Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;
    invoke-interface {v10, v0}, Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;->offerReceived(Lorg/jivesoftware/smackx/workgroup/agent/Offer;)V

    goto :goto_0

    .line 256
    .end local v10           #listener:Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fireOfferRevokeEvent(Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;)V
    .locals 8
    .parameter "orp"

    .prologue
    .line 264
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->getUserJID()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->getWorkgroupJID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->getSessionID()Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->getReason()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 264
    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 268
    .local v0, revokedOffer:Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    monitor-enter v2

    .line 269
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    monitor-exit v2

    .line 273
    return-void

    .line 269
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;

    .line 270
    .local v7, listener:Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;
    invoke-interface {v7, v0}, Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;->offerRevoked(Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;)V

    goto :goto_0

    .line 268
    .end local v7           #listener:Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fireQueueUsersEvent(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;ILjava/util/Date;Ljava/util/Set;)V
    .locals 4
    .parameter "queue"
    .parameter "status"
    .parameter "averageWaitTime"
    .parameter "oldestEntry"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;",
            "Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;",
            "I",
            "Ljava/util/Date;",
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/QueueUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p5, users:Ljava/util/Set;,"Ljava/util/Set<Lorg/jivesoftware/smackx/workgroup/QueueUser;>;"
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    monitor-enter v2

    .line 279
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    monitor-exit v2

    .line 294
    return-void

    .line 279
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;

    .line 280
    .local v0, listener:Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;
    if-eqz p2, :cond_2

    .line 281
    invoke-interface {v0, p1, p2}, Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;->statusUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V

    .line 283
    :cond_2
    const/4 v3, -0x1

    if-eq p3, v3, :cond_3

    .line 284
    invoke-interface {v0, p1, p3}, Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;->averageWaitTimeUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;I)V

    .line 286
    :cond_3
    if-eqz p4, :cond_4

    .line 287
    invoke-interface {v0, p1, p4}, Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;->oldestEntryUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Ljava/util/Date;)V

    .line 289
    :cond_4
    if-eqz p5, :cond_0

    .line 290
    invoke-interface {v0, p1, p5}, Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;->usersUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Ljava/util/Set;)V

    goto :goto_0

    .line 278
    .end local v0           #listener:Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 23
    .parameter "packet"

    .prologue
    .line 677
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;

    if-eqz v2, :cond_1

    .line 679
    new-instance v21, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$2;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;)V

    .line 685
    .local v21, reply:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 687
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 690
    check-cast p1, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;

    .end local p1
    invoke-direct/range {p0 .. p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->fireOfferRequestEvent(Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;)V

    .line 803
    .end local v21           #reply:Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    :goto_0
    return-void

    .line 691
    .restart local p1
    :cond_1
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v2, :cond_6

    move-object/from16 v17, p1

    .line 692
    check-cast v17, Lorg/jivesoftware/smack/packet/Presence;

    .line 701
    .local v17, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual/range {v17 .. v17}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 702
    .local v19, queueName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queues:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;

    .line 704
    .local v3, queue:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;
    if-nez v3, :cond_2

    .line 705
    new-instance v3, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;

    .end local v3           #queue:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;
    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;-><init>(Ljava/lang/String;)V

    .line 706
    .restart local v3       #queue:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queues:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_2
    sget-object v2, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->ELEMENT_NAME:Ljava/lang/String;

    .line 713
    sget-object v4, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->NAMESPACE:Ljava/lang/String;

    .line 712
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v20

    .line 711
    check-cast v20, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;

    .line 714
    .local v20, queueOverview:Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;
    if-eqz v20, :cond_4

    .line 715
    invoke-virtual/range {v20 .. v20}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getStatus()Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    move-result-object v2

    if-nez v2, :cond_3

    .line 716
    sget-object v2, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setStatus(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V

    .line 720
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getAverageWaitTime()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setAverageWaitTime(I)V

    .line 721
    invoke-virtual/range {v20 .. v20}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getOldestEntry()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setOldestEntry(Ljava/util/Date;)V

    .line 723
    invoke-virtual/range {v20 .. v20}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getStatus()Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    move-result-object v4

    .line 724
    invoke-virtual/range {v20 .. v20}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getAverageWaitTime()I

    move-result v5

    .line 725
    invoke-virtual/range {v20 .. v20}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getOldestEntry()Ljava/util/Date;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 723
    invoke-direct/range {v2 .. v7}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->fireQueueUsersEvent(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;ILjava/util/Date;Ljava/util/Set;)V

    goto :goto_0

    .line 718
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getStatus()Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setStatus(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V

    goto :goto_1

    .line 733
    :cond_4
    const-string v2, "notify-queue-details"

    .line 734
    const-string v4, "http://jabber.org/protocol/workgroup"

    .line 733
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v18

    .line 732
    check-cast v18, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;

    .line 735
    .local v18, queueDetails:Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;
    if-eqz v18, :cond_5

    .line 736
    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->getUsers()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setUsers(Ljava/util/Set;)V

    .line 738
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 739
    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->getUsers()Ljava/util/Set;

    move-result-object v7

    move-object/from16 v2, p0

    .line 738
    invoke-direct/range {v2 .. v7}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->fireQueueUsersEvent(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;ILjava/util/Date;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 746
    :cond_5
    const-string v2, "notify-agents"

    .line 747
    const-string v4, "http://jabber.org/protocol/workgroup"

    .line 746
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v16

    .line 745
    check-cast v16, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    .line 748
    .local v16, notifyAgents:Lorg/jivesoftware/smack/packet/DefaultPacketExtension;
    if-eqz v16, :cond_0

    .line 750
    const-string v2, "current-chats"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 752
    .local v10, currentChats:I
    const-string v2, "max-chats"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 753
    .local v12, maxChats:I
    invoke-virtual {v3, v10}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setCurrentChats(I)V

    .line 754
    invoke-virtual {v3, v12}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setMaxChats(I)V

    goto/16 :goto_0

    .line 760
    .end local v3           #queue:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;
    .end local v10           #currentChats:I
    .end local v12           #maxChats:I
    .end local v16           #notifyAgents:Lorg/jivesoftware/smack/packet/DefaultPacketExtension;
    .end local v17           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v18           #queueDetails:Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;
    .end local v19           #queueName:Ljava/lang/String;
    .end local v20           #queueOverview:Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;
    :cond_6
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v2, :cond_a

    move-object/from16 v13, p1

    .line 761
    check-cast v13, Lorg/jivesoftware/smack/packet/Message;

    .line 765
    .local v13, message:Lorg/jivesoftware/smack/packet/Message;
    const-string v2, "x"

    .line 766
    const-string v4, "http://jabber.org/protocol/muc#user"

    .line 765
    invoke-virtual {v13, v2, v4}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v15

    check-cast v15, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 767
    .local v15, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v11

    .line 769
    .local v11, invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    :goto_2
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    const/4 v6, 0x0

    .line 771
    .local v6, sessionID:Ljava/lang/String;
    const/4 v9, 0x0

    .line 774
    .local v9, metaData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v2, "session"

    .line 775
    const-string v4, "http://jivesoftware.com/protocol/workgroup"

    .line 774
    invoke-virtual {v13, v2, v4}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v22

    .line 773
    check-cast v22, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;

    .line 776
    .local v22, sessionIDExt:Lorg/jivesoftware/smackx/workgroup/packet/SessionID;
    if-eqz v22, :cond_7

    .line 777
    invoke-virtual/range {v22 .. v22}, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;->getSessionID()Ljava/lang/String;

    move-result-object v6

    .line 781
    :cond_7
    const-string v2, "metadata"

    const-string v4, "http://jivesoftware.com/protocol/workgroup"

    .line 780
    invoke-virtual {v13, v2, v4}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v14

    check-cast v14, Lorg/jivesoftware/smackx/workgroup/MetaData;

    .line 782
    .local v14, metaDataExt:Lorg/jivesoftware/smackx/workgroup/MetaData;
    if-eqz v14, :cond_8

    .line 783
    invoke-virtual {v14}, Lorg/jivesoftware/smackx/workgroup/MetaData;->getMetaData()Ljava/util/Map;

    move-result-object v9

    .line 786
    :cond_8
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    .line 787
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    .line 786
    invoke-direct/range {v4 .. v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->fireInvitationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 768
    .end local v6           #sessionID:Ljava/lang/String;
    .end local v9           #metaData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v11           #invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    .end local v14           #metaDataExt:Lorg/jivesoftware/smackx/workgroup/MetaData;
    .end local v22           #sessionIDExt:Lorg/jivesoftware/smackx/workgroup/packet/SessionID;
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    .line 789
    .end local v13           #message:Lorg/jivesoftware/smack/packet/Message;
    .end local v15           #mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    :cond_a
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;

    if-eqz v2, :cond_0

    .line 791
    new-instance v21, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$3;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;)V

    .line 797
    .restart local v21       #reply:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 798
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 801
    check-cast p1, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;

    .end local p1
    invoke-direct/range {p0 .. p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->fireOfferRevokeEvent(Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addInvitationListener(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;)V
    .locals 2
    .parameter "invitationListener"

    .prologue
    .line 175
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    monitor-exit v1

    .line 180
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addOfferListener(Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;)V
    .locals 2
    .parameter "offerListener"

    .prologue
    .line 189
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    monitor-exit v1

    .line 194
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addQueueUsersListener(Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 197
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    monitor-exit v1

    .line 202
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 211
    return-void
.end method

.method public dequeueUser(Ljava/lang/String;)V
    .locals 2
    .parameter "userID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;

    .line 228
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    .line 227
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, departPacket:Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 232
    return-void
.end method

.method public getAgent()Lorg/jivesoftware/smackx/workgroup/agent/Agent;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agent:Lorg/jivesoftware/smackx/workgroup/agent/Agent;

    return-object v0
.end method

.method public getAgentHistory(Ljava/lang/String;ILjava/util/Date;)Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
    .locals 6
    .parameter "jid"
    .parameter "maxSessions"
    .parameter "startDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 321
    if-eqz p3, :cond_0

    .line 322
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;

    invoke-direct {v1, p1, p2, p3}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;-><init>(Ljava/lang/String;ILjava/util/Date;)V

    .line 327
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
    :goto_0
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 328
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->setTo(Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 331
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 332
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 335
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 334
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;

    .line 338
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 339
    if-nez v2, :cond_1

    .line 340
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    .end local v0           #collector:Lorg/jivesoftware/smack/PacketCollector;
    .end local v1           #request:Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
    .end local v2           #response:Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;-><init>(Ljava/lang/String;I)V

    .restart local v1       #request:Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
    goto :goto_0

    .line 342
    .restart local v0       #collector:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v2       #response:Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 343
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 345
    :cond_2
    return-object v2
.end method

.method public getAgentRoster()Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;
    .locals 4

    .prologue
    .line 354
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    if-nez v1, :cond_0

    .line 355
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    .line 367
    :cond_0
    const/4 v0, 0x0

    .line 368
    .local v0, elapsed:I
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    iget-boolean v1, v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->rosterInitialized:Z

    if-nez v1, :cond_1

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_2

    .line 376
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    return-object v1

    .line 370
    :cond_2
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_1
    add-int/lit16 v0, v0, 0x1f4

    goto :goto_0

    .line 371
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getChatMetadata(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;-><init>()V

    .line 390
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 391
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->setTo(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->setSessionID(Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 395
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 396
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 399
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 398
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;

    .line 402
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 403
    if-nez v2, :cond_0

    .line 404
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 406
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 407
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 409
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->getMetadata()Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method public getGenericSettings(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;
    .locals 6
    .parameter "con"
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;-><init>()V

    .line 427
    .local v2, setting:Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 428
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->setTo(Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 431
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 432
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 435
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 434
    check-cast v1, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;

    .line 438
    .local v1, response:Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 439
    if-nez v1, :cond_0

    .line 440
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 442
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 443
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 445
    :cond_1
    return-object v1
.end method

.method public getMacros(Z)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .locals 6
    .parameter "global"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;-><init>()V

    .line 460
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 461
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setTo(Ljava/lang/String;)V

    .line 462
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setPersonal(Z)V

    .line 464
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 465
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 466
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 469
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 468
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;

    .line 472
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 473
    if-nez v2, :cond_1

    .line 474
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 462
    .end local v0           #collector:Lorg/jivesoftware/smack/PacketCollector;
    .end local v2           #response:Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 476
    .restart local v0       #collector:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v2       #response:Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 477
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 479
    :cond_2
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getRootGroup()Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    move-result-object v3

    return-object v3
.end method

.method public getMaxChats()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->maxChats:I

    return v0
.end method

.method public getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 500
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNote(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 513
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;-><init>()V

    .line 514
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 515
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setTo(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setSessionID(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 519
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 520
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 523
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 522
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;

    .line 526
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 527
    if-nez v2, :cond_0

    .line 528
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 530
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 531
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 533
    :cond_1
    return-object v2
.end method

.method public getOccupantsInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;
    .locals 6
    .parameter "roomID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 550
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;-><init>(Ljava/lang/String;)V

    .line 551
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 552
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->setTo(Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 555
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 556
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 559
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 558
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;

    .line 562
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 563
    if-nez v2, :cond_0

    .line 564
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 566
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 567
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 569
    :cond_1
    return-object v2
.end method

.method public getPresenceMode()Lorg/jivesoftware/smack/packet/Presence$Mode;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    return-object v0
.end method

.method public getQueue(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;
    .locals 1
    .parameter "queueName"

    .prologue
    .line 588
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;

    return-object v0
.end method

.method public getQueues()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 594
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 592
    return-object v0
.end method

.method public getSearchSettings()Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 605
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;-><init>()V

    .line 606
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 607
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->setTo(Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 610
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 611
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 614
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 613
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;

    .line 617
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 618
    if-nez v2, :cond_0

    .line 619
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 621
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 622
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 624
    :cond_1
    return-object v2
.end method

.method public getTranscript(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/Transcript;
    .locals 2
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;->getTranscript(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/Transcript;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptSearchForm()Lorg/jivesoftware/smackx/Form;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 664
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptSearchManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;

    .line 665
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;->getSearchForm(Ljava/lang/String;)Lorg/jivesoftware/smackx/Form;

    move-result-object v0

    return-object v0
.end method

.method public getTranscripts(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;
    .locals 2
    .parameter "userID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;->getTranscripts(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;

    move-result-object v0

    return-object v0
.end method

.method public getWorkgroupJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    return-object v0
.end method

.method public hasMonitorPrivileges(Lorg/jivesoftware/smack/Connection;)Z
    .locals 6
    .parameter "con"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 806
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;-><init>()V

    .line 807
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 808
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setTo(Ljava/lang/String;)V

    .line 810
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 811
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 812
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 815
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 814
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;

    .line 818
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 819
    if-nez v2, :cond_0

    .line 820
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 822
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 823
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 825
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->isMonitor()Z

    move-result v3

    return v3
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    return v0
.end method

.method public makeRoomOwner(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 6
    .parameter "con"
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 840
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;-><init>()V

    .line 841
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 842
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setTo(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setSessionID(Ljava/lang/String;)V

    .line 845
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 846
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 847
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 850
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 849
    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 853
    .local v2, response:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 854
    if-nez v2, :cond_0

    .line 855
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 857
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 858
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 860
    :cond_1
    return-void
.end method

.method public removeInvitationListener(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;)V
    .locals 2
    .parameter "invitationListener"

    .prologue
    .line 870
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    monitor-enter v1

    .line 871
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 870
    monitor-exit v1

    .line 873
    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMetaData(Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 888
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    monitor-enter v2

    .line 889
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 891
    .local v0, oldVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 892
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    iget v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->maxChats:I

    invoke-virtual {p0, v1, v3}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;I)V

    .line 888
    :cond_0
    monitor-exit v2

    .line 895
    return-void

    .line 888
    .end local v0           #oldVal:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeOfferListener(Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;)V
    .locals 2
    .parameter "offerListener"

    .prologue
    .line 904
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    monitor-enter v1

    .line 905
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 904
    monitor-exit v1

    .line 907
    return-void

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeQueueUsersListener(Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 910
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    monitor-enter v1

    .line 911
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 910
    monitor-exit v1

    .line 913
    return-void

    .line 910
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveMacros(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V
    .locals 6
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 924
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;-><init>()V

    .line 925
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 926
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setTo(Ljava/lang/String;)V

    .line 927
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setPersonal(Z)V

    .line 928
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setPersonalMacroGroup(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V

    .line 930
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 931
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 932
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 935
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 934
    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 938
    .local v2, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 939
    if-nez v2, :cond_0

    .line 940
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 942
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 943
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 945
    :cond_1
    return-void
.end method

.method public searchTranscripts(Lorg/jivesoftware/smackx/Form;)Lorg/jivesoftware/smackx/ReportedData;
    .locals 2
    .parameter "completedForm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 960
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptSearchManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;

    .line 961
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 960
    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;->submitSearch(Ljava/lang/String;Lorg/jivesoftware/smackx/Form;)Lorg/jivesoftware/smackx/ReportedData;

    move-result-object v0

    return-object v0
.end method

.method public sendRoomInvitation(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "type"
    .parameter "invitee"
    .parameter "sessionID"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1005
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;-><init>(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    .local v1, invitation:Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$4;

    invoke-direct {v2, p0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$4;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;)V

    .line 1014
    .local v2, iq:Lorg/jivesoftware/smack/packet/IQ;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1015
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1016
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1018
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1019
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 1020
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1023
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 1022
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 1026
    .local v3, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1027
    if-nez v3, :cond_0

    .line 1028
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1030
    :cond_0
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1031
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 1033
    :cond_1
    return-void
.end method

.method public sendRoomTransfer(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "type"
    .parameter "invitee"
    .parameter "sessionID"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1075
    new-instance v3, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;-><init>(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    .local v3, transfer:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$5;

    invoke-direct {v1, p0, v3}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$5;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;)V

    .line 1084
    .local v1, iq:Lorg/jivesoftware/smack/packet/IQ;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1085
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1086
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1088
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1089
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 1090
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1093
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 1092
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 1096
    .local v2, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1097
    if-nez v2, :cond_0

    .line 1098
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1100
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1101
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 1103
    :cond_1
    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1118
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    monitor-enter v2

    .line 1119
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1121
    .local v0, oldVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1122
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    iget v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->maxChats:I

    invoke-virtual {p0, v1, v3}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;I)V

    .line 1118
    :cond_1
    monitor-exit v2

    .line 1127
    return-void

    .line 1118
    .end local v0           #oldVal:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "sessionID"
    .parameter "note"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1140
    const-string v3, "\n"

    const-string v4, "\\n"

    invoke-static {p2, v3, v4}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1141
    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1143
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;-><init>()V

    .line 1144
    .local v1, notes:Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1145
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setTo(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setSessionID(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setNotes(Ljava/lang/String;)V

    .line 1148
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1149
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 1151
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1154
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 1153
    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 1157
    .local v2, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1158
    if-nez v2, :cond_0

    .line 1159
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1161
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1162
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 1164
    :cond_1
    return-void
.end method

.method public setOnline(Z)V
    .locals 8
    .parameter "online"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-boolean v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    if-ne v2, p1, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1185
    :cond_0
    if-eqz p1, :cond_3

    .line 1186
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1187
    .local v1, presence:Lorg/jivesoftware/smack/packet/Presence;
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 1188
    new-instance v2, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    .line 1189
    const-string v3, "agent-status"

    const-string v4, "http://jabber.org/protocol/workgroup"

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 1191
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1192
    new-instance v3, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v5, 0x0

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 1193
    const-class v7, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    .line 1194
    iget-object v7, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    .line 1192
    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 1196
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1198
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .end local v1           #presence:Lorg/jivesoftware/smack/packet/Presence;
    check-cast v1, Lorg/jivesoftware/smack/packet/Presence;

    .line 1199
    .restart local v1       #presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1200
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1201
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    .line 1202
    const-string v3, "No response from server on status set."

    .line 1201
    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1205
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1206
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v2

    .line 1210
    :cond_2
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    goto :goto_0

    .line 1215
    .end local v0           #collector:Lorg/jivesoftware/smack/PacketCollector;
    .end local v1           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_3
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    .line 1217
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1218
    .restart local v1       #presence:Lorg/jivesoftware/smack/packet/Presence;
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 1219
    new-instance v2, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    .line 1220
    const-string v3, "agent-status"

    const-string v4, "http://jabber.org/protocol/workgroup"

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 1221
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_0
.end method

.method public setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;I)V
    .locals 1
    .parameter "presenceMode"
    .parameter "maxChats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;ILjava/lang/String;)V

    .line 1258
    return-void
.end method

.method public setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;ILjava/lang/String;)V
    .locals 9
    .parameter "presenceMode"
    .parameter "maxChats"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1294
    iget-boolean v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    if-nez v3, :cond_0

    .line 1295
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 1296
    const-string v4, "Cannot set status when the agent is not online."

    .line 1295
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1299
    :cond_0
    if-nez p1, :cond_1

    .line 1300
    sget-object p1, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 1302
    :cond_1
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 1303
    iput p2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->maxChats:I

    .line 1305
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1306
    .local v2, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 1307
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->getWorkgroupJID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 1309
    if-eqz p3, :cond_2

    .line 1310
    invoke-virtual {v2, p3}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 1314
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    .line 1315
    const-string v3, "agent-status"

    const-string v4, "http://jabber.org/protocol/workgroup"

    .line 1314
    invoke-direct {v0, v3, v4}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    .local v0, agentStatus:Lorg/jivesoftware/smack/packet/DefaultPacketExtension;
    const-string v3, "max-chats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 1318
    new-instance v3, Lorg/jivesoftware/smackx/workgroup/MetaData;

    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/workgroup/MetaData;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 1320
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1321
    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v6, 0x0

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 1322
    const-class v8, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    iget-object v8, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    .line 1321
    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 1324
    .local v1, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1326
    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .end local v2           #presence:Lorg/jivesoftware/smack/packet/Presence;
    check-cast v2, Lorg/jivesoftware/smack/packet/Presence;

    .line 1327
    .restart local v2       #presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1328
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1329
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1332
    :cond_3
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1333
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 1335
    :cond_4
    return-void
.end method

.method public setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;Ljava/lang/String;)V
    .locals 8
    .parameter "presenceMode"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1363
    iget-boolean v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    if-nez v2, :cond_0

    .line 1364
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 1365
    const-string v3, "Cannot set status when the agent is not online."

    .line 1364
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1368
    :cond_0
    if-nez p1, :cond_1

    .line 1369
    sget-object p1, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 1371
    :cond_1
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 1373
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1374
    .local v1, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 1375
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->getWorkgroupJID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 1377
    if-eqz p2, :cond_2

    .line 1378
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 1380
    :cond_2
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/MetaData;

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/workgroup/MetaData;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 1382
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1383
    new-instance v3, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v5, 0x0

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 1384
    const-class v7, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    iget-object v7, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    .line 1383
    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 1386
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1388
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .end local v1           #presence:Lorg/jivesoftware/smack/packet/Presence;
    check-cast v1, Lorg/jivesoftware/smack/packet/Presence;

    .line 1389
    .restart local v1       #presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1390
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1391
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    const-string v3, "No response from server on status set."

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1394
    :cond_3
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1395
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v2

    .line 1397
    :cond_4
    return-void
.end method
