.class public final Lorg/jivesoftware/smackx/pubsub/PubSubManager;
.super Ljava/lang/Object;
.source "PubSubManager.java"


# instance fields
.field private final con:Lorg/jivesoftware/smack/Connection;

.field private final nodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/pubsub/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    .line 98
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pubsub."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 1
    .parameter "connection"
    .parameter "toAddress"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    .line 112
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    .line 113
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    .line 114
    return-void
.end method

.method static createPubsubPacket(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 1
    .parameter "to"
    .parameter "type"
    .parameter "ext"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->createPubsubPacket(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    return-object v0
.end method

.method static createPubsubPacket(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 1
    .parameter "to"
    .parameter "type"
    .parameter "ext"
    .parameter "ns"

    .prologue
    .line 51
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;-><init>()V

    .line 52
    .local v0, request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->setTo(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 55
    if-eqz p3, :cond_0

    .line 56
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->setPubSubNamespace(Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    .line 58
    :cond_0
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 60
    return-object v0
.end method

.method static sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 1
    .parameter "con"
    .parameter "to"
    .parameter "type"
    .parameter "ext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    return-object v0
.end method

.method static sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 1
    .parameter "con"
    .parameter "to"
    .parameter "type"
    .parameter "ext"
    .parameter "ns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 70
    .line 71
    invoke-static {p1, p2, p3, p4}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->createPubsubPacket(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 70
    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    return-object v0
.end method

.method static sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 1
    .parameter "con"
    .parameter "to"
    .parameter "type"
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/packet/PubSub;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    return-object v0
.end method

.method static sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/packet/PubSub;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 1
    .parameter "con"
    .parameter "to"
    .parameter "type"
    .parameter "packet"
    .parameter "ns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p0, p3}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    return-object v0
.end method

.method private sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 1
    .parameter "type"
    .parameter "ext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    return-object v0
.end method

.method private sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;
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
    .line 327
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createNode()Lorg/jivesoftware/smackx/pubsub/LeafNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 123
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 124
    new-instance v4, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v5, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CREATE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    .line 123
    invoke-direct {p0, v3, v4}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 125
    .local v2, reply:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    const-string v3, "create"

    .line 126
    sget-object v4, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->BASIC:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 128
    .local v0, elem:Lorg/jivesoftware/smackx/pubsub/NodeExtension;
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;->getNode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/jivesoftware/smackx/pubsub/LeafNode;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .line 129
    .local v1, newNode:Lorg/jivesoftware/smackx/pubsub/LeafNode;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->setTo(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-object v1
.end method

.method public createNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->createNode(Ljava/lang/String;Lorg/jivesoftware/smackx/Form;)Lorg/jivesoftware/smackx/pubsub/Node;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    return-object v0
.end method

.method public createNode(Ljava/lang/String;Lorg/jivesoftware/smackx/Form;)Lorg/jivesoftware/smackx/pubsub/Node;
    .locals 8
    .parameter "name"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v4, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 163
    new-instance v6, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v7, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CREATE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v6, v7, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 162
    invoke-static {v4, v5, v6}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->createPubsubPacket(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v3

    .line 164
    .local v3, request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    const/4 v0, 0x1

    .line 166
    .local v0, isLeafNode:Z
    if-eqz p2, :cond_0

    .line 167
    new-instance v4, Lorg/jivesoftware/smackx/pubsub/FormNode;

    sget-object v5, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->CONFIGURE:Lorg/jivesoftware/smackx/pubsub/FormNodeType;

    invoke-direct {v4, v5, p2}, Lorg/jivesoftware/smackx/pubsub/FormNode;-><init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Lorg/jivesoftware/smackx/Form;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 169
    sget-object v4, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v2

    .line 171
    .local v2, nodeTypeField:Lorg/jivesoftware/smackx/FormField;
    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 173
    sget-object v5, Lorg/jivesoftware/smackx/pubsub/NodeType;->leaf:Lorg/jivesoftware/smackx/pubsub/NodeType;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/pubsub/NodeType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 179
    .end local v2           #nodeTypeField:Lorg/jivesoftware/smackx/FormField;
    :cond_0
    iget-object v4, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    iget-object v5, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-static {v4, v5, v6, v3}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smack/packet/Packet;

    .line 180
    if-eqz v0, :cond_1

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    iget-object v4, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v1, v4, p1}, Lorg/jivesoftware/smackx/pubsub/LeafNode;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .line 182
    .local v1, newNode:Lorg/jivesoftware/smackx/pubsub/Node;
    :goto_0
    iget-object v4, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/pubsub/Node;->setTo(Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-object v1

    .line 181
    .end local v1           #newNode:Lorg/jivesoftware/smackx/pubsub/Node;
    :cond_1
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/CollectionNode;

    iget-object v4, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v1, v4, p1}, Lorg/jivesoftware/smackx/pubsub/CollectionNode;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteNode(Ljava/lang/String;)V
    .locals 3
    .parameter "nodeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 195
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DELETE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 196
    invoke-direct {v1, v2, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DELETE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v2

    .line 195
    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;

    .line 197
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public discoverNodes(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .locals 3
    .parameter "nodeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;-><init>()V

    .line 218
    .local v0, items:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 221
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setTo(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v2, v0}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 222
    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    .line 224
    .local v1, nodeItems:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    return-object v1
.end method

.method public getAffiliations()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 235
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 236
    new-instance v3, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v4, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->AFFILIATIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    .line 235
    invoke-direct {p0, v2, v3}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 238
    .local v1, reply:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->AFFILIATIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 237
    check-cast v0, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;

    .line 239
    .local v0, listElem:Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->getAffiliations()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getDefaultConfiguration()Lorg/jivesoftware/smackx/pubsub/ConfigureForm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 250
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 251
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DEFAULT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    .line 252
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DEFAULT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v3

    .line 250
    invoke-direct {p0, v1, v2, v3}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 253
    .local v0, reply:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DEFAULT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/pubsub/util/NodeUtils;->getFormFromPacket(Lorg/jivesoftware/smack/packet/Packet;Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    move-result-object v1

    return-object v1
.end method

.method public getNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Node;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/Node;

    .line 269
    .local v2, node:Lorg/jivesoftware/smackx/pubsub/Node;
    if-nez v2, :cond_0

    .line 270
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 271
    .local v0, info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setTo(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v3, v0}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 274
    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .line 277
    .local v1, infoReply:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getIdentities()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getType()Ljava/lang/String;

    move-result-object v3

    .line 278
    sget-object v4, Lorg/jivesoftware/smackx/pubsub/NodeType;->leaf:Lorg/jivesoftware/smackx/pubsub/NodeType;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/pubsub/NodeType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    .end local v2           #node:Lorg/jivesoftware/smackx/pubsub/Node;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v2, v3, p1}, Lorg/jivesoftware/smackx/pubsub/LeafNode;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .line 283
    .restart local v2       #node:Lorg/jivesoftware/smackx/pubsub/Node;
    :goto_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/pubsub/Node;->setTo(Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .end local v0           #info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .end local v1           #infoReply:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :cond_0
    return-object v2

    .line 281
    .restart local v0       #info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .restart local v1       #infoReply:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :cond_1
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/CollectionNode;

    .end local v2           #node:Lorg/jivesoftware/smackx/pubsub/Node;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v2, v3, p1}, Lorg/jivesoftware/smackx/pubsub/CollectionNode;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .restart local v2       #node:Lorg/jivesoftware/smackx/pubsub/Node;
    goto :goto_0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 5
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
    .line 297
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 298
    sget-object v4, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    .line 297
    invoke-direct {p0, v2, v3}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 300
    .local v0, reply:Lorg/jivesoftware/smack/packet/Packet;
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 301
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {v0, v2, v3}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 299
    check-cast v1, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;

    .line 303
    .local v1, subElem:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->getSubscriptions()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getSupportedFeatures()Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 317
    .local v0, mgr:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    return-object v1
.end method
