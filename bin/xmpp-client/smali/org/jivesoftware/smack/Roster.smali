.class public Lorg/jivesoftware/smack/Roster;
.super Ljava/lang/Object;
.source "Roster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/Roster$PresencePacketListener;,
        Lorg/jivesoftware/smack/Roster$RosterPacketListener;,
        Lorg/jivesoftware/smack/Roster$SubscriptionMode;
    }
.end annotation


# static fields
.field private static defaultSubscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/RosterGroup;",
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

.field private final presencePacketListener:Lorg/jivesoftware/smack/Roster$PresencePacketListener;

.field rosterInitialized:Z

.field private final rosterListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/RosterListener;",
            ">;"
        }
    .end annotation
.end field

.field private subscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

.field private final unfiledEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->accept_all:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    sput-object v0, Lorg/jivesoftware/smack/Roster;->defaultSubscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    .line 64
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 5
    .parameter "connection"

    .prologue
    const/4 v4, 0x0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    .line 409
    invoke-static {}, Lorg/jivesoftware/smack/Roster;->getDefaultSubscriptionMode()Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/Roster;->subscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    .line 418
    iput-object p1, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    .line 419
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/Roster;->groups:Ljava/util/Map;

    .line 420
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/Roster;->unfiledEntries:Ljava/util/List;

    .line 421
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;

    .line 422
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/Roster;->rosterListeners:Ljava/util/List;

    .line 423
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;

    .line 425
    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 426
    const-class v3, Lorg/jivesoftware/smack/packet/RosterPacket;

    .line 425
    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 427
    .local v2, rosterFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v3, Lorg/jivesoftware/smack/Roster$RosterPacketListener;

    invoke-direct {v3, p0, v4}, Lorg/jivesoftware/smack/Roster$RosterPacketListener;-><init>(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/Roster$RosterPacketListener;)V

    invoke-virtual {p1, v3, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 429
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v1, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 430
    .local v1, presenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v3, Lorg/jivesoftware/smack/Roster$PresencePacketListener;

    invoke-direct {v3, p0, v4}, Lorg/jivesoftware/smack/Roster$PresencePacketListener;-><init>(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/Roster$PresencePacketListener;)V

    iput-object v3, p0, Lorg/jivesoftware/smack/Roster;->presencePacketListener:Lorg/jivesoftware/smack/Roster$PresencePacketListener;

    .line 431
    iget-object v3, p0, Lorg/jivesoftware/smack/Roster;->presencePacketListener:Lorg/jivesoftware/smack/Roster$PresencePacketListener;

    invoke-virtual {p1, v3, v1}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 434
    new-instance v0, Lorg/jivesoftware/smack/Roster$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/Roster$1;-><init>(Lorg/jivesoftware/smack/Roster;)V

    .line 451
    .local v0, connectionListener:Lorg/jivesoftware/smack/ConnectionListener;
    iget-object v3, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    new-instance v3, Lorg/jivesoftware/smack/Roster$2;

    invoke-direct {v3, p0, v0}, Lorg/jivesoftware/smack/Roster$2;-><init>(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/ConnectionListener;)V

    invoke-static {v3}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/Roster;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 806
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Roster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Roster;->fireRosterPresenceEvent(Lorg/jivesoftware/smack/packet/Presence;)V

    return-void
.end method

.method static synthetic access$4(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Roster$SubscriptionMode;
    .locals 1
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->subscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    return-object v0
.end method

.method static synthetic access$5(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method static synthetic access$6(Lorg/jivesoftware/smack/Roster;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->unfiledEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->groups:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8(Lorg/jivesoftware/smack/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 606
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smack/Roster;->fireRosterChangedEvent(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$9(Lorg/jivesoftware/smack/Roster;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    invoke-direct {p0}, Lorg/jivesoftware/smack/Roster;->setOfflinePresences()V

    return-void
.end method

.method private fireRosterChangedEvent(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, addedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, updatedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, deletedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/Roster;->rosterListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    return-void

    .line 608
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterListener;

    .line 609
    .local v0, listener:Lorg/jivesoftware/smack/RosterListener;
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 610
    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/RosterListener;->entriesAdded(Ljava/util/Collection;)V

    .line 612
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 613
    invoke-interface {v0, p2}, Lorg/jivesoftware/smack/RosterListener;->entriesUpdated(Ljava/util/Collection;)V

    .line 615
    :cond_3
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 616
    invoke-interface {v0, p3}, Lorg/jivesoftware/smack/RosterListener;->entriesDeleted(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private fireRosterPresenceEvent(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 3
    .parameter "presence"

    .prologue
    .line 628
    iget-object v1, p0, Lorg/jivesoftware/smack/Roster;->rosterListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 631
    return-void

    .line 628
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterListener;

    .line 629
    .local v0, listener:Lorg/jivesoftware/smack/RosterListener;
    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/RosterListener;->presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0
.end method

.method public static getDefaultSubscriptionMode()Lorg/jivesoftware/smack/Roster$SubscriptionMode;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lorg/jivesoftware/smack/Roster;->defaultSubscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    return-object v0
.end method

.method private getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "user"

    .prologue
    .line 807
    if-nez p1, :cond_0

    .line 808
    const/4 v1, 0x0

    .line 814
    :goto_0
    return-object v1

    .line 810
    :cond_0
    move-object v0, p1

    .line 811
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/Roster;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 812
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setDefaultSubscriptionMode(Lorg/jivesoftware/smack/Roster$SubscriptionMode;)V
    .locals 0
    .parameter "subscriptionMode"

    .prologue
    .line 390
    sput-object p0, Lorg/jivesoftware/smack/Roster;->defaultSubscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    .line 391
    return-void
.end method

.method private setOfflinePresences()V
    .locals 8

    .prologue
    .line 1011
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1021
    return-void

    .line 1011
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1012
    .local v3, user:Ljava/lang/String;
    iget-object v5, p0, Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1013
    .local v2, resources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-eqz v2, :cond_0

    .line 1014
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1015
    .local v1, resource:Ljava/lang/String;
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v6, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v6}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1016
    .local v0, packetUnavailable:Lorg/jivesoftware/smack/packet/Presence;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 1017
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster;->presencePacketListener:Lorg/jivesoftware/smack/Roster$PresencePacketListener;

    invoke-virtual {v6, v0}, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method


# virtual methods
.method public addRosterListener(Lorg/jivesoftware/smack/RosterListener;)V
    .locals 1
    .parameter "rosterListener"

    .prologue
    .line 477
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->rosterListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->rosterListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_0
    return-void
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->rosterListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 487
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/Roster;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "user"
    .parameter "name"
    .parameter "groups"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 521
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Not logged in to server."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 523
    :cond_0
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/Connection;->isAnonymous()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 524
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 525
    const-string v7, "Anonymous users can\'t have a roster."

    .line 524
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 529
    :cond_1
    new-instance v5, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 530
    .local v5, rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v5, v6}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 531
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    invoke-direct {v2, p1, p2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v2, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    if-eqz p3, :cond_2

    .line 533
    array-length v7, p3

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_3

    .line 539
    :cond_2
    invoke-virtual {v5, v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 541
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    .line 542
    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 543
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;->getPacketID()Ljava/lang/String;

    move-result-object v8

    .line 542
    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 544
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 546
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 545
    invoke-virtual {v0, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/packet/IQ;

    .line 547
    .local v4, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 548
    if-nez v4, :cond_5

    .line 549
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from the server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 533
    .end local v0           #collector:Lorg/jivesoftware/smack/PacketCollector;
    .end local v4           #response:Lorg/jivesoftware/smack/packet/IQ;
    :cond_3
    aget-object v1, p3, v6

    .line 534
    .local v1, group:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 535
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    .line 533
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 552
    .end local v1           #group:Ljava/lang/String;
    .restart local v0       #collector:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v4       #response:Lorg/jivesoftware/smack/packet/IQ;
    :cond_5
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_6

    .line 553
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 557
    :cond_6
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v6, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v6}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 558
    .local v3, presencePacket:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 559
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 560
    return-void
.end method

.method public createGroup(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterGroup;
    .locals 4
    .parameter "name"

    .prologue
    .line 577
    iget-object v1, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not logged in to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->isAnonymous()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 582
    const-string v2, "Anonymous users can\'t have a roster."

    .line 581
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/Roster;->groups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 585
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Group with name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 586
    const-string v3, " alread exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/RosterGroup;

    iget-object v1, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v0, p1, v1}, Lorg/jivesoftware/smack/RosterGroup;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V

    .line 590
    .local v0, group:Lorg/jivesoftware/smack/RosterGroup;
    iget-object v1, p0, Lorg/jivesoftware/smack/Roster;->groups:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    return-object v0
.end method

.method public getEntries()Ljava/util/Collection;
    .locals 4
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
    .line 640
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 642
    .local v0, allEntries:Ljava/util/Set;,"Ljava/util/Set<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Roster;->getGroups()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 646
    iget-object v2, p0, Lorg/jivesoftware/smack/Roster;->unfiledEntries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 648
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2

    .line 642
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/RosterGroup;

    .line 643
    .local v1, rosterGroup:Lorg/jivesoftware/smack/RosterGroup;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/RosterGroup;->getEntries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;
    .locals 2
    .parameter "user"

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 665
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    goto :goto_0
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Roster;->getEntries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterGroup;
    .locals 1
    .parameter "name"

    .prologue
    .line 686
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->groups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterGroup;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getGroups()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPresence(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 11
    .parameter "user"

    .prologue
    .line 741
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/jivesoftware/smack/Roster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, key:Ljava/lang/String;
    iget-object v8, p0, Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 743
    .local v7, userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-nez v7, :cond_0

    .line 744
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v8, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v8}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 745
    .local v3, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    move-object v4, v3

    .line 785
    .end local v3           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .local v4, presence:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 751
    .end local v4           #presence:Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    .line 753
    .restart local v3       #presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 780
    if-nez v3, :cond_7

    .line 781
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    .end local v3           #presence:Lorg/jivesoftware/smack/packet/Presence;
    sget-object v8, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v8}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 782
    .restart local v3       #presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    move-object v4, v3

    .line 783
    .restart local v4       #presence:Ljava/lang/Object;
    goto :goto_0

    .line 753
    .end local v4           #presence:Ljava/lang/Object;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 754
    .local v6, resource:Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/Presence;

    .line 755
    .local v1, p:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 759
    if-eqz v3, :cond_3

    .line 760
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v9

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v10

    if-le v9, v10, :cond_4

    .line 761
    :cond_3
    move-object v3, v1

    goto :goto_1

    .line 764
    :cond_4
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v9

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 765
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v2

    .line 767
    .local v2, pMode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    if-nez v2, :cond_5

    .line 768
    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 770
    :cond_5
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v5

    .line 772
    .local v5, presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    if-nez v5, :cond_6

    .line 773
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 775
    :cond_6
    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Presence$Mode;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_1

    .line 776
    move-object v3, v1

    goto :goto_1

    .end local v1           #p:Lorg/jivesoftware/smack/packet/Presence;
    .end local v2           #pMode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .end local v5           #presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .end local v6           #resource:Ljava/lang/String;
    :cond_7
    move-object v4, v3

    .line 785
    .restart local v4       #presence:Ljava/lang/Object;
    goto :goto_0
.end method

.method public getPresenceResource(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 6
    .parameter "userWithResource"

    .prologue
    .line 830
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Roster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, key:Ljava/lang/String;
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 832
    .local v3, resource:Ljava/lang/String;
    iget-object v5, p0, Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 833
    .local v4, userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-nez v4, :cond_0

    .line 834
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 835
    .local v1, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    move-object v2, v1

    .line 844
    .end local v1           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .local v2, presence:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 838
    .end local v2           #presence:Ljava/lang/Object;
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/Presence;

    .line 839
    .restart local v1       #presence:Lorg/jivesoftware/smack/packet/Presence;
    if-nez v1, :cond_1

    .line 840
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    .end local v1           #presence:Lorg/jivesoftware/smack/packet/Presence;
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 841
    .restart local v1       #presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    move-object v2, v1

    .line 842
    .restart local v2       #presence:Ljava/lang/Object;
    goto :goto_0

    .end local v2           #presence:Ljava/lang/Object;
    :cond_1
    move-object v2, v1

    .line 844
    .restart local v2       #presence:Ljava/lang/Object;
    goto :goto_0
.end method

.method public getPresences(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 8
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 862
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Roster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 864
    .local v3, userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-nez v3, :cond_0

    .line 865
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 866
    .local v2, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 867
    new-array v4, v7, [Lorg/jivesoftware/smack/packet/Presence;

    aput-object v2, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 881
    .end local v2           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :goto_0
    return-object v4

    .line 869
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v0, answer:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/packet/Presence;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 875
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 876
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_0

    .line 870
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Presence;

    .line 871
    .restart local v2       #presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 872
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 878
    .end local v2           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_3
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    .line 879
    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 878
    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 880
    .restart local v2       #presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 881
    new-array v4, v7, [Lorg/jivesoftware/smack/packet/Presence;

    aput-object v2, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_0
.end method

.method public getSubscriptionMode()Lorg/jivesoftware/smack/Roster$SubscriptionMode;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->subscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    return-object v0
.end method

.method public getUnfiledEntries()Ljava/util/Collection;
    .locals 1
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
    .line 909
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->unfiledEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnfiledEntryCount()I
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->unfiledEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not logged in to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 937
    const-string v1, "Anonymous users can\'t have a roster."

    .line 936
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 941
    return-void
.end method

.method public removeEntry(Lorg/jivesoftware/smack/RosterEntry;)V
    .locals 7
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 959
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Not logged in to server."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 961
    :cond_0
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->isAnonymous()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 962
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 963
    const-string v5, "Anonymous users can\'t have a roster."

    .line 962
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 969
    :cond_1
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 991
    :cond_2
    return-void

    .line 972
    :cond_3
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 973
    .local v2, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 974
    invoke-static {p1}, Lorg/jivesoftware/smack/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/RosterEntry;)Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    move-result-object v1

    .line 976
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->remove:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    .line 977
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 978
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    .line 979
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 980
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 982
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 981
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 983
    .local v3, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 984
    if-nez v3, :cond_4

    .line 985
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from the server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 988
    :cond_4
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_2

    .line 989
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4
.end method

.method public removeRosterListener(Lorg/jivesoftware/smack/RosterListener;)V
    .locals 1
    .parameter "rosterListener"

    .prologue
    .line 1001
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster;->rosterListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1002
    return-void
.end method

.method public setSubscriptionMode(Lorg/jivesoftware/smack/Roster$SubscriptionMode;)V
    .locals 0
    .parameter "subscriptionMode"

    .prologue
    .line 1037
    iput-object p1, p0, Lorg/jivesoftware/smack/Roster;->subscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    .line 1038
    return-void
.end method
