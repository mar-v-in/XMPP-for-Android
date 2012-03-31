.class public Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"


# static fields
.field private static identityName:Ljava/lang/String;

.field private static identityType:Ljava/lang/String;

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/ServiceDiscoveryManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeInformationProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/NodeInformationProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "Smack"

    sput-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityName:Ljava/lang/String;

    .line 61
    const-string v0, "pc"

    sput-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityType:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    .line 147
    new-instance v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    .line 169
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 170
    sget-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->init()V

    .line 175
    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection already exists"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0()Ljava/util/Map;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smackx/packet/DataForm;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    return-object v0
.end method

.method public static getIdentityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityName:Ljava/lang/String;

    return-object v0
.end method

.method public static getIdentityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityType:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    .locals 2
    .parameter "connection"

    .prologue
    .line 101
    sget-object v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 102
    .local v0, s:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .end local v0           #s:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 105
    .restart local v0       #s:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    :cond_0
    return-object v0
.end method

.method private getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;
    .locals 1
    .parameter "node"

    .prologue
    .line 351
    if-nez p1, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 354
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/NodeInformationProvider;

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 378
    sget-object v2, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    iget-object v3, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v3, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 411
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 412
    .local v0, packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V

    .line 453
    .local v1, packetListener:Lorg/jivesoftware/smack/PacketListener;
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 458
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .end local v0           #packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    const-class v2, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 459
    .restart local v0       #packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;

    .end local v1           #packetListener:Lorg/jivesoftware/smack/PacketListener;
    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V

    .line 525
    .restart local v1       #packetListener:Lorg/jivesoftware/smack/PacketListener;
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 526
    return-void
.end method

.method public static setIdentityName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 118
    sput-object p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public static setIdentityType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 133
    sput-object p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityType:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public addFeature(Ljava/lang/String;)V
    .locals 2
    .parameter "feature"

    .prologue
    .line 192
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v1

    .line 195
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public canPublishItems(Ljava/lang/String;)Z
    .locals 2
    .parameter "entityID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 212
    .local v0, info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v1, "http://jabber.org/protocol/disco#publish"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 1
    .parameter "entityID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    return-object v0
.end method

.method public discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 6
    .parameter "entityID"
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 246
    .local v1, disco:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 247
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setTo(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 252
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 254
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 258
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 257
    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 260
    .local v2, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 261
    if-nez v2, :cond_0

    .line 262
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from the server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v3, v4, :cond_1

    .line 265
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 267
    :cond_1
    check-cast v2, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .end local v2           #result:Lorg/jivesoftware/smack/packet/IQ;
    return-object v2
.end method

.method public discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .locals 1
    .parameter "entityID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v0

    return-object v0
.end method

.method public discoverItems(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .locals 6
    .parameter "entityID"
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v1, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;-><init>()V

    .line 300
    .local v1, disco:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 301
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setTo(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 305
    iget-object v3, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 306
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 308
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 312
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 311
    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 314
    .local v2, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 315
    if-nez v2, :cond_0

    .line 316
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from the server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v3, v4, :cond_1

    .line 319
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 321
    :cond_1
    check-cast v2, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    .end local v2           #result:Lorg/jivesoftware/smack/packet/IQ;
    return-object v2
.end method

.method public getFeatures()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    monitor-enter v1

    .line 332
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 333
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 331
    monitor-exit v1

    return-object v0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public includesFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "feature"

    .prologue
    .line 367
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public publishItems(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverItems;)V
    .locals 5
    .parameter "entityID"
    .parameter "node"
    .parameter "discoverItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 563
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p3, v2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 564
    invoke-virtual {p3, p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setTo(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p3, p2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 568
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 569
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 570
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 572
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, p3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 576
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 575
    invoke-virtual {v0, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 578
    .local v1, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 579
    if-nez v1, :cond_0

    .line 580
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    const-string v3, "No response from the server."

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 582
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v2, v3, :cond_1

    .line 583
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v2

    .line 585
    :cond_1
    return-void
.end method

.method public publishItems(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverItems;)V
    .locals 1
    .parameter "entityID"
    .parameter "discoverItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->publishItems(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverItems;)V

    .line 544
    return-void
.end method

.method public removeExtendedInfo()V
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 597
    return-void
.end method

.method public removeFeature(Ljava/lang/String;)V
    .locals 2
    .parameter "feature"

    .prologue
    .line 611
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    monitor-enter v1

    .line 612
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 611
    monitor-exit v1

    .line 614
    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNodeInformationProvider(Ljava/lang/String;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 629
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    return-void
.end method

.method public setExtendedInfo(Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 648
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 649
    return-void
.end method

.method public setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/NodeInformationProvider;)V
    .locals 1
    .parameter "node"
    .parameter "listener"

    .prologue
    .line 672
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-void
.end method
