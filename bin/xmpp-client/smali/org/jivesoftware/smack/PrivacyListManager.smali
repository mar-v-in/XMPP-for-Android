.class public Lorg/jivesoftware/smack/PrivacyListManager;
.super Ljava/lang/Object;
.source "PrivacyListManager.java"


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smack/PrivacyListManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PrivacyListListener;",
            ">;"
        }
    .end annotation
.end field

.field packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    .line 70
    new-instance v0, Lorg/jivesoftware/smack/PrivacyListManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/PrivacyListManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 6
    .parameter "connection"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    .line 60
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/IQTypeFilter;

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/IQTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 61
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v4, "query"

    const-string v5, "jabber:iq:privacy"

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 100
    iput-object p1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 101
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->init()V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/PrivacyListManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PrivacyListManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    return-void
.end method

.method static synthetic access$1()Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smack/PrivacyListManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smack/PrivacyListManager;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/PrivacyListManager;
    .locals 1
    .parameter "connection"

    .prologue
    .line 87
    sget-object v0, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PrivacyListManager;

    return-object v0
.end method

.method private getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "listName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v1, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 254
    .local v1, request:Lorg/jivesoftware/smack/packet/Privacy;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v2}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 257
    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PrivacyListManager;->getRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v0

    .line 259
    .local v0, privacyAnswer:Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->getPrivacyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 300
    .local v0, request:Lorg/jivesoftware/smack/packet/Privacy;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v1

    return-object v1
.end method

.method private getRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Privacy;
    .locals 5
    .parameter "requestPrivacy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 317
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/Privacy;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 318
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/Privacy;->setFrom(Ljava/lang/String;)V

    .line 321
    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 322
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Privacy;->getPacketID()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 323
    .local v2, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v3, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 324
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 327
    .local v1, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 331
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 330
    check-cast v0, Lorg/jivesoftware/smack/packet/Privacy;

    .line 334
    .local v0, privacyAnswer:Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 337
    if-nez v0, :cond_0

    .line 338
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 339
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 340
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 342
    :cond_1
    return-object v0
.end method

.method private getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 360
    sget-object v0, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smack/PrivacyListManager$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/PrivacyListManager$2;-><init>(Lorg/jivesoftware/smack/PrivacyListManager;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 392
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smack/PrivacyListManager$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/PrivacyListManager$3;-><init>(Lorg/jivesoftware/smack/PrivacyListManager;)V

    .line 436
    iget-object v2, p0, Lorg/jivesoftware/smack/PrivacyListManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 392
    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 437
    return-void
.end method

.method private setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 5
    .parameter "requestPrivacy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 492
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/Privacy;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 493
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/Privacy;->setFrom(Ljava/lang/String;)V

    .line 496
    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 497
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Privacy;->getPacketID()Ljava/lang/String;

    move-result-object v3

    .line 496
    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 498
    .local v2, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v3, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 499
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 502
    .local v1, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 506
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 505
    invoke-virtual {v1, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 509
    .local v0, privacyAnswer:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 512
    if-nez v0, :cond_0

    .line 513
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 514
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 515
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 517
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/jivesoftware/smack/PrivacyListListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 114
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v1

    .line 117
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createPrivacyList(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "listName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 132
    .local p2, privacyItems:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/PrivacyListManager;->updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V

    .line 133
    return-void
.end method

.method public declineActiveList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 145
    .local v0, request:Lorg/jivesoftware/smack/packet/Privacy;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setDeclineActiveList(Z)V

    .line 148
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 149
    return-void
.end method

.method public declineDefaultList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 161
    .local v0, request:Lorg/jivesoftware/smack/packet/Privacy;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setDeclineDefaultList(Z)V

    .line 164
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 165
    return-void
.end method

.method public deletePrivacyList(Ljava/lang/String;)V
    .locals 2
    .parameter "listName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 179
    .local v0, request:Lorg/jivesoftware/smack/packet/Privacy;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 182
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 183
    return-void
.end method

.method public getActiveList()Lorg/jivesoftware/smack/PrivacyList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 193
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v2

    .line 194
    .local v2, privacyAnswer:Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, listName:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 196
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 197
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 199
    .local v0, isDefaultAndActive:Z
    :goto_0
    new-instance v4, Lorg/jivesoftware/smack/PrivacyList;

    .line 200
    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 199
    invoke-direct {v4, v3, v0, v1, v5}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v4

    .line 197
    .end local v0           #isDefaultAndActive:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultList()Lorg/jivesoftware/smack/PrivacyList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 211
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v2

    .line 212
    .local v2, privacyAnswer:Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, listName:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 214
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 215
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 217
    .local v0, isDefaultAndActive:Z
    :goto_0
    new-instance v4, Lorg/jivesoftware/smack/PrivacyList;

    .line 218
    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 217
    invoke-direct {v4, v0, v3, v1, v5}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v4

    .line 215
    .end local v0           #isDefaultAndActive:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivacyList(Ljava/lang/String;)Lorg/jivesoftware/smack/PrivacyList;
    .locals 3
    .parameter "listName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 234
    new-instance v0, Lorg/jivesoftware/smack/PrivacyList;

    .line 235
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 234
    invoke-direct {v0, v2, v2, p1, v1}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public getPrivacyLists()[Lorg/jivesoftware/smack/PrivacyList;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v6

    .line 271
    .local v6, privacyAnswer:Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Privacy;->getPrivacyListNames()Ljava/util/Set;

    move-result-object v5

    .line 272
    .local v5, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v4, v7, [Lorg/jivesoftware/smack/PrivacyList;

    .line 275
    .local v4, lists:[Lorg/jivesoftware/smack/PrivacyList;
    const/4 v0, 0x0

    .line 276
    .local v0, index:I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 283
    return-object v4

    .line 276
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 277
    .local v3, listName:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 278
    .local v1, isActiveList:Z
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 279
    .local v2, isDefaultList:Z
    new-instance v8, Lorg/jivesoftware/smack/PrivacyList;

    .line 280
    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v1, v2, v3, v9}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    .line 279
    aput-object v8, v4, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setActiveListName(Ljava/lang/String;)V
    .locals 1
    .parameter "listName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 451
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 452
    .local v0, request:Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->setActiveName(Ljava/lang/String;)V

    .line 455
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 456
    return-void
.end method

.method public setDefaultListName(Ljava/lang/String;)V
    .locals 1
    .parameter "listName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 471
    .local v0, request:Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->setDefaultName(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 475
    return-void
.end method

.method public updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "listName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 536
    .local p2, privacyItems:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 537
    .local v0, request:Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 540
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 541
    return-void
.end method
