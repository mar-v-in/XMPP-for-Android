.class public abstract Lorg/jivesoftware/smackx/pubsub/Node;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;,
        Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;,
        Lorg/jivesoftware/smackx/pubsub/Node$ItemEventTranslator;,
        Lorg/jivesoftware/smackx/pubsub/Node$NodeConfigTranslator;
    }
.end annotation


# instance fields
.field protected con:Lorg/jivesoftware/smack/Connection;

.field protected configEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;",
            "Lorg/jivesoftware/smack/PacketListener;",
            ">;"
        }
    .end annotation
.end field

.field protected id:Ljava/lang/String;

.field protected itemDeleteToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;",
            "Lorg/jivesoftware/smack/PacketListener;",
            ">;"
        }
    .end annotation
.end field

.field protected itemEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;",
            "Lorg/jivesoftware/smack/PacketListener;",
            ">;"
        }
    .end annotation
.end field

.field protected to:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 1
    .parameter "connection"
    .parameter "nodeName"

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 223
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemDeleteToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 225
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->configEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 237
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    .line 238
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Node;->id:Ljava/lang/String;

    .line 239
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/packet/Packet;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 201
    invoke-static {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getSubscriptionIds(Lorg/jivesoftware/smack/packet/Packet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getSubscriptionIds(Lorg/jivesoftware/smack/packet/Packet;)Ljava/util/List;
    .locals 5
    .parameter "packet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/Packet;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .line 203
    const-string v3, "headers"

    const-string v4, "http://jabber.org/protocol/shim"

    invoke-virtual {p0, v3, v4}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 202
    check-cast v1, Lorg/jivesoftware/smackx/packet/HeadersExtension;

    .line 204
    .local v1, headers:Lorg/jivesoftware/smackx/packet/HeadersExtension;
    const/4 v2, 0x0

    .line 206
    .local v2, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/HeadersExtension;->getHeaders()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .restart local v2       #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/HeadersExtension;->getHeaders()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 213
    :cond_0
    return-object v2

    .line 209
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/Header;

    .line 210
    .local v0, header:Lorg/jivesoftware/smackx/packet/Header;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addConfigurationListener(Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 249
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Node$NodeConfigTranslator;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/pubsub/Node$NodeConfigTranslator;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;)V

    .line 250
    .local v0, conListener:Lorg/jivesoftware/smack/PacketListener;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->configEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;

    .line 252
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/EventElementType;->configuration:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/EventElementType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1, v0, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 253
    return-void
.end method

.method public addItemDeleteListener(Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 263
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;)V

    .line 264
    .local v0, delListener:Lorg/jivesoftware/smack/PacketListener;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemDeleteToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;

    .line 266
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/EventElementType;->items:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/EventElementType;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "retract"

    .line 265
    invoke-direct {v1, p0, v3, v4}, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v1, deleteItem:Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;

    .line 268
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/EventElementType;->purge:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/EventElementType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-direct {v2, p0, v3}, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Ljava/lang/String;)V

    .line 270
    .local v2, purge:Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    new-instance v4, Lorg/jivesoftware/smack/filter/OrFilter;

    invoke-direct {v4, v1, v2}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-virtual {v3, v0, v4}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 271
    return-void
.end method

.method public addItemEventListener(Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 281
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Node$ItemEventTranslator;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/pubsub/Node$ItemEventTranslator;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;)V

    .line 282
    .local v0, conListener:Lorg/jivesoftware/smack/PacketListener;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;

    .line 284
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/EventElementType;->items:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/EventElementType;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-direct {v2, p0, v3, v4}, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, v0, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 285
    return-void
.end method

.method protected createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 1
    .parameter "type"
    .parameter "ext"

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    return-object v0
.end method

.method protected createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 1
    .parameter "type"
    .parameter "ext"
    .parameter "ns"

    .prologue
    .line 293
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->to:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->createPubsubPacket(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    return-object v0
.end method

.method public discoverInfo()Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 305
    .local v0, info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setTo(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeConfiguration()Lorg/jivesoftware/smackx/pubsub/ConfigureForm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 326
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 327
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 328
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->OWNER:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    .line 326
    invoke-virtual {p0, v1, v2, v3}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 330
    .local v0, reply:Lorg/jivesoftware/smack/packet/Packet;
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 329
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/pubsub/util/NodeUtils;->getFormFromPacket(Lorg/jivesoftware/smack/packet/Packet;Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    move-result-object v1

    return-object v1
.end method

.method public getSubscriptionOptions(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeForm;
    .locals 1
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->getSubscriptionOptions(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeForm;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionOptions(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeForm;
    .locals 5
    .parameter "jid"
    .parameter "subscriptionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 361
    new-instance v3, Lorg/jivesoftware/smackx/pubsub/OptionsExtension;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, p2}, Lorg/jivesoftware/smackx/pubsub/OptionsExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 363
    .local v1, packet:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->OPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 362
    check-cast v0, Lorg/jivesoftware/smackx/pubsub/FormNode;

    .line 364
    .local v0, ext:Lorg/jivesoftware/smackx/pubsub/FormNode;
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getForm()Lorg/jivesoftware/smackx/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;-><init>(Lorg/jivesoftware/smackx/Form;)V

    return-object v2
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/pubsub/Subscription;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 375
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 376
    new-instance v3, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v4, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 378
    .local v0, reply:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 377
    check-cast v1, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;

    .line 379
    .local v1, subElem:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->getSubscriptions()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public removeConfigurationListener(Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 389
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->configEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 390
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketListener;

    .line 392
    .local v0, conListener:Lorg/jivesoftware/smack/PacketListener;
    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 395
    :cond_0
    return-void
.end method

.method public removeItemDeleteListener(Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 404
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemDeleteToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 405
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketListener;

    .line 407
    .local v0, conListener:Lorg/jivesoftware/smack/PacketListener;
    if-eqz v0, :cond_0

    .line 408
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 410
    :cond_0
    return-void
.end method

.method public removeItemEventListener(Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 419
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 420
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketListener;

    .line 422
    .local v0, conListener:Lorg/jivesoftware/smack/PacketListener;
    if-eqz v0, :cond_0

    .line 423
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 425
    :cond_0
    return-void
.end method

.method public sendConfigurationForm(Lorg/jivesoftware/smackx/Form;)V
    .locals 5
    .parameter "submitForm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 433
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/FormNode;

    .line 434
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->CONFIGURE_OWNER:Lorg/jivesoftware/smackx/pubsub/FormNodeType;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lorg/jivesoftware/smackx/pubsub/FormNode;-><init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Ljava/lang/String;Lorg/jivesoftware/smackx/Form;)V

    .line 435
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->OWNER:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    .line 433
    invoke-virtual {p0, v1, v2, v3}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 436
    .local v0, packet:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    .line 437
    return-void
.end method

.method protected sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 2
    .parameter "type"
    .parameter "ext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->to:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    return-object v0
.end method

.method protected sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 2
    .parameter "type"
    .parameter "ext"
    .parameter "ns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->to:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    return-object v0
.end method

.method setTo(Ljava/lang/String;)V
    .locals 0
    .parameter "toAddress"

    .prologue
    .line 456
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->to:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public subscribe(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Subscription;
    .locals 4
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 478
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 479
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/SubscribeExtension;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 481
    .local v0, reply:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 480
    check-cast v1, Lorg/jivesoftware/smackx/pubsub/Subscription;

    return-object v1
.end method

.method public subscribe(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/SubscribeForm;)Lorg/jivesoftware/smackx/pubsub/Subscription;
    .locals 5
    .parameter "jid"
    .parameter "subForm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 505
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 506
    new-instance v3, Lorg/jivesoftware/smackx/pubsub/SubscribeExtension;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/jivesoftware/smackx/pubsub/SubscribeExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    .line 507
    .local v1, request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/FormNode;

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->OPTIONS:Lorg/jivesoftware/smackx/pubsub/FormNodeType;

    invoke-direct {v2, v3, p2}, Lorg/jivesoftware/smackx/pubsub/FormNode;-><init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Lorg/jivesoftware/smackx/Form;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 508
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Node;->con:Lorg/jivesoftware/smack/Connection;

    .line 509
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 508
    invoke-static {v2, p1, v3, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 511
    .local v0, reply:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    .line 510
    check-cast v2, Lorg/jivesoftware/smackx/pubsub/Subscription;

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->unsubscribe(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "jid"
    .parameter "subscriptionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 545
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-direct {v1, p1, v2, p2}, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smack/packet/Packet;

    .line 547
    return-void
.end method
