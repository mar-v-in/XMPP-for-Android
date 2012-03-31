.class public final Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
.super Ljava/lang/Object;
.source "Socks5BytestreamManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamManager;


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/bytestreams"

.field private static final SESSION_ID_PREFIX:Ljava/lang/String; = "js5_"

.field private static final managers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final randomGenerator:Ljava/util/Random;


# instance fields
.field private final allRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation
.end field

.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final ignoredBytestreamRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

.field private lastWorkingProxy:Ljava/lang/String;

.field private final proxyBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private proxyConnectionTimeout:I

.field private proxyPrioritizationEnabled:Z

.field private targetResponseTimeout:I

.field private final userListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 128
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->randomGenerator:Ljava/util/Random;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->managers:Ljava/util/Map;

    .line 88
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    const/16 v1, 0x2710

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->userListeners:Ljava/util/Map;

    .line 172
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->allRequestListeners:Ljava/util/List;

    .line 181
    iput v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->targetResponseTimeout:I

    .line 184
    iput v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyConnectionTimeout:I

    .line 188
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/List;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->lastWorkingProxy:Ljava/lang/String;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyPrioritizationEnabled:Z

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    .line 210
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 211
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    .line 212
    return-void
.end method

.method private activate()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    .line 222
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->getFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v2

    .line 221
    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 225
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->enableService()V

    .line 226
    return-void
.end method

.method private createBytestreamInitiation(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .locals 4
    .parameter "sessionID"
    .parameter "targetJID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;)",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;"
        }
    .end annotation

    .prologue
    .line 290
    .local p3, streamHosts:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, initiation:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 298
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setTo(Ljava/lang/String;)V

    .line 300
    return-object v0

    .line 293
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 294
    .local v1, streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->addStreamHost(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;)V

    goto :goto_0
.end method

.method private createStreamHostRequest(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .locals 2
    .parameter "proxy"

    .prologue
    .line 311
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;-><init>()V

    .line 312
    .local v0, request:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 313
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setTo(Ljava/lang/String;)V

    .line 314
    return-object v0
.end method

.method private determineProxies()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v9, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v9}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v8

    .line 330
    .local v8, serviceDiscoveryManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v6, proxies:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v9}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v0

    .line 335
    .local v0, discoverItems:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v5

    .line 338
    .local v5, itemIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 376
    return-object v6

    .line 339
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 342
    .local v4, item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    iget-object v9, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/List;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 349
    :try_start_0
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v9

    .line 348
    invoke-virtual {v8, v9}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v7

    .line 350
    .local v7, proxyInfo:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getIdentities()Ljava/util/Iterator;

    move-result-object v2

    .line 353
    .local v2, identities:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 354
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 356
    .local v3, identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    const-string v9, "proxy"

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getCategory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 357
    const-string v9, "bytestreams"

    .line 358
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getType()Ljava/lang/String;

    move-result-object v10

    .line 357
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 359
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    .end local v2           #identities:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    .end local v3           #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    .end local v7           #proxyInfo:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :catch_0
    move-exception v1

    .line 372
    .local v1, e:Lorg/jivesoftware/smack/XMPPException;
    iget-object v9, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/List;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 367
    .end local v1           #e:Lorg/jivesoftware/smack/XMPPException;
    .restart local v2       #identities:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    .restart local v3       #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    .restart local v7       #proxyInfo:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/List;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private determineStreamHostInfos(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, proxies:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v5, streamHosts:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getLocalStreamHost()Ljava/util/List;

    move-result-object v1

    .line 395
    .local v1, localProxies:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    if-eqz v1, :cond_0

    .line 396
    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 412
    return-object v5

    .line 400
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 401
    .local v2, proxy:Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->createStreamHostRequest(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    move-result-object v4

    .line 404
    .local v4, streamHostRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    :try_start_0
    iget-object v7, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v7, v4}, Lorg/jivesoftware/smack/util/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    .line 403
    check-cast v3, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 405
    .local v3, response:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getStreamHosts()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    .end local v3           #response:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    iget-object v7, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enableService()V
    .locals 2

    .prologue
    .line 467
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 468
    .local v0, manager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    const-string v1, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->includesFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    const-string v1, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 471
    :cond_0
    return-void
.end method

.method public static declared-synchronized getBytestreamManager(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    .locals 3
    .parameter "connection"

    .prologue
    .line 146
    const-class v2, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 147
    const/4 v0, 0x0

    .line 155
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 149
    :cond_1
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    .line 150
    .local v0, manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    .end local v0           #manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 152
    .restart local v0       #manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-direct {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->activate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    .end local v0           #manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getLocalStreamHost()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getSocks5Proxy()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    move-result-object v3

    .line 656
    .local v3, socks5Server:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 657
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getLocalAddresses()Ljava/util/List;

    move-result-object v1

    .line 658
    .local v1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getPort()I

    move-result v2

    .line 660
    .local v2, port:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_1

    .line 661
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v5, streamHosts:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 674
    .end local v1           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #port:I
    .end local v5           #streamHosts:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    :goto_1
    return-object v5

    .line 662
    .restart local v1       #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #port:I
    .restart local v5       #streamHosts:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 663
    .local v0, address:Ljava/lang/String;
    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 664
    iget-object v7, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v7

    .line 663
    invoke-direct {v4, v7, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .local v4, streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    invoke-virtual {v4, v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->setPort(I)V

    .line 666
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 674
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #port:I
    .end local v4           #streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    .end local v5           #streamHosts:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getNextSessionID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "js5_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private supportsSocks5(Ljava/lang/String;)Z
    .locals 3
    .parameter "targetJID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 840
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 842
    .local v1, serviceDiscoveryManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 843
    .local v0, discoverInfo:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v2, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 246
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;Ljava/lang/String;)V
    .locals 1
    .parameter "listener"
    .parameter "initiatorJID"

    .prologue
    .line 273
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public declared-synchronized disableService()V
    .locals 3

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 430
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->shutdown()V

    .line 433
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 434
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 437
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->lastWorkingProxy:Ljava/lang/String;

    .line 438
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 439
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 442
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->managers:Ljava/util/Map;

    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 447
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getSocks5Proxy()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->stop()V

    .line 452
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 456
    .local v0, serviceDiscoveryManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    if-eqz v0, :cond_1

    .line 457
    const-string v1, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_1
    monitor-exit p0

    return-void

    .line 427
    .end local v0           #serviceDiscoveryManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic establishSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->establishSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    move-result-object v0

    return-object v0
.end method

.method public establishSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    .locals 2
    .parameter "targetJID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getNextSessionID()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, sessionID:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    move-result-object v1

    return-object v1
.end method

.method public establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    .locals 20
    .parameter "targetJID"
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-direct/range {p0 .. p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->supportsSocks5(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 528
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    const-string v9, " doesn\'t support SOCKS5 Bytestream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 528
    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 533
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->determineProxies()Ljava/util/List;

    move-result-object v12

    .line 536
    .local v12, proxies:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->determineStreamHostInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 540
    .local v19, streamHosts:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v7

    .line 539
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v7, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->createDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 542
    .local v6, digest:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 543
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string v8, "no SOCKS5 proxies available"

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 547
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyPrioritizationEnabled:Z

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->lastWorkingProxy:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 548
    const/4 v14, 0x0

    .line 549
    .local v14, selectedStreamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 555
    :goto_0
    if-eqz v14, :cond_3

    .line 556
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 557
    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v7, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 562
    .end local v14           #selectedStreamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    :cond_3
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getSocks5Proxy()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    move-result-object v16

    .line 566
    .local v16, socks5Proxy:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->addTransfer(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->createBytestreamInitiation(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    move-result-object v11

    .line 573
    .local v11, initiation:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 574
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getTargetResponseTimeout()I

    move-result v8

    int-to-long v8, v8

    .line 573
    invoke-static {v7, v11, v8, v9}, Lorg/jivesoftware/smack/util/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v13

    .line 577
    .local v13, response:Lorg/jivesoftware/smack/packet/Packet;
    check-cast v13, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 578
    .end local v13           #response:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getUsedHost()Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHostUsed;

    move-result-object v18

    .line 580
    .local v18, streamHostUsed:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHostUsed;
    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHostUsed;->getJID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getStreamHost(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    move-result-object v5

    .line 582
    .local v5, usedStreamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    if-nez v5, :cond_5

    .line 583
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    .line 584
    const-string v8, "Remote user responded with unknown host"

    .line 583
    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v5           #usedStreamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    .end local v11           #initiation:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .end local v18           #streamHostUsed:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHostUsed;
    :catch_0
    move-exception v10

    .line 604
    .local v10, e:Ljava/util/concurrent/TimeoutException;
    :try_start_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Timeout while connecting to SOCKS5 proxy"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    .end local v10           #e:Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v7

    .line 610
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->removeTransfer(Ljava/lang/String;)V

    .line 612
    throw v7

    .line 549
    .end local v16           #socks5Proxy:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    .restart local v14       #selectedStreamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 550
    .local v17, streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    invoke-virtual/range {v17 .. v17}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->lastWorkingProxy:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 551
    move-object/from16 v14, v17

    .line 552
    goto :goto_0

    .line 588
    .end local v14           #selectedStreamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    .end local v17           #streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    .restart local v5       #usedStreamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    .restart local v11       #initiation:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .restart local v16       #socks5Proxy:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    .restart local v18       #streamHostUsed:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHostUsed;
    :cond_5
    :try_start_2
    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;

    .line 589
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    .line 588
    invoke-direct/range {v4 .. v9}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v4, socks5Client:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getProxyConnectionTimeout()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->getSocket(I)Ljava/net/Socket;

    move-result-object v15

    .line 597
    .local v15, socket:Ljava/net/Socket;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->lastWorkingProxy:Ljava/lang/String;

    .line 600
    new-instance v7, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v8

    .line 601
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v9}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 600
    invoke-direct {v7, v15, v8}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;-><init>(Ljava/net/Socket;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    .line 610
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->removeTransfer(Ljava/lang/String;)V

    .line 600
    return-object v7
.end method

.method protected getAllRequestListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->allRequestListeners:Ljava/util/List;

    return-object v0
.end method

.method protected getConnection()Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method protected getIgnoredBytestreamRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    return-object v0
.end method

.method public getProxyConnectionTimeout()I
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyConnectionTimeout:I

    if-gtz v0, :cond_0

    .line 698
    const/16 v0, 0x2710

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyConnectionTimeout:I

    .line 700
    :cond_0
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyConnectionTimeout:I

    return v0
.end method

.method public getTargetResponseTimeout()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->targetResponseTimeout:I

    if-gtz v0, :cond_0

    .line 712
    const/16 v0, 0x2710

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->targetResponseTimeout:I

    .line 714
    :cond_0
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->targetResponseTimeout:I

    return v0
.end method

.method protected getUserListener(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    .locals 1
    .parameter "initiator"

    .prologue
    .line 726
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    return-object v0
.end method

.method public ignoreBytestreamRequestOnce(Ljava/lang/String;)V
    .locals 1
    .parameter "sessionID"

    .prologue
    .line 741
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    return-void
.end method

.method public isProxyPrioritizationEnabled()Z
    .locals 1

    .prologue
    .line 753
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyPrioritizationEnabled:Z

    return v0
.end method

.method public removeIncomingBytestreamListener(Ljava/lang/String;)V
    .locals 1
    .parameter "initiatorJID"

    .prologue
    .line 776
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    return-void
.end method

.method public removeIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 765
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 766
    return-void
.end method

.method protected replyRejectPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 787
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 788
    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->no_acceptable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 787
    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 789
    .local v1, xmppError:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-static {p1, v1}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 790
    .local v0, errorIQ:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 791
    return-void
.end method

.method public setProxyConnectionTimeout(I)V
    .locals 0
    .parameter "proxyConnectionTimeout"

    .prologue
    .line 801
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyConnectionTimeout:I

    .line 802
    return-void
.end method

.method public setProxyPrioritizationEnabled(Z)V
    .locals 0
    .parameter "proxyPrioritizationEnabled"

    .prologue
    .line 813
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyPrioritizationEnabled:Z

    .line 814
    return-void
.end method

.method public setTargetResponseTimeout(I)V
    .locals 0
    .parameter "targetResponseTimeout"

    .prologue
    .line 824
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->targetResponseTimeout:I

    .line 825
    return-void
.end method
