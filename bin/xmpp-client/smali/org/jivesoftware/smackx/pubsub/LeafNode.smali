.class public Lorg/jivesoftware/smackx/pubsub/LeafNode;
.super Lorg/jivesoftware/smackx/pubsub/Node;
.source "LeafNode.java"


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 0
    .parameter "connection"
    .parameter "nodeName"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/Node;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public deleteAllItems()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 50
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PURGE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 51
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PURGE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v3

    .line 49
    invoke-virtual {p0, v1, v2, v3}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 53
    .local v0, request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    .line 54
    return-void
.end method

.method public deleteItem(Ljava/lang/String;)V
    .locals 2
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v0, items:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->deleteItem(Ljava/util/Collection;)V

    .line 87
    return-void
.end method

.method public deleteItem(Ljava/util/Collection;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 65
    .local p1, itemIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Item;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;

    .line 71
    sget-object v5, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->retract:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;Ljava/lang/String;Ljava/util/List;)V

    .line 70
    invoke-virtual {p0, v3, v4}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v2

    .line 72
    .local v2, request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v3, v2}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    .line 73
    return-void

    .line 67
    .end local v2           #request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, id:Ljava/lang/String;
    new-instance v4, Lorg/jivesoftware/smackx/pubsub/Item;

    invoke-direct {v4, v0}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public discoverItems()Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;-><init>()V

    .line 99
    .local v0, items:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setTo(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    return-object v1
.end method

.method public getItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 113
    new-instance v4, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v3, v4}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    .line 115
    .local v1, request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v3, v1}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 117
    .local v2, result:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 116
    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;

    .line 118
    .local v0, itemsElem:Lorg/jivesoftware/smackx/pubsub/ItemsExtension;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getItems()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getItems(I)Ljava/util/List;
    .locals 6
    .parameter "maxItems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 162
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 163
    new-instance v4, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;-><init>(Ljava/lang/String;I)V

    .line 162
    invoke-virtual {p0, v3, v4}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    .line 165
    .local v1, request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v3, v1}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 167
    .local v2, result:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 166
    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;

    .line 168
    .local v0, itemsElem:Lorg/jivesoftware/smackx/pubsub/ItemsExtension;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getItems()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getItems(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "maxItems"
    .parameter "subscriptionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 186
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 187
    new-instance v4, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p2, p1}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    invoke-virtual {p0, v3, v4}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    .line 189
    .local v1, request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v3, v1}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 191
    .local v2, result:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 190
    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;

    .line 192
    .local v0, itemsElem:Lorg/jivesoftware/smackx/pubsub/ItemsExtension;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getItems()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getItems(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "subscriptionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 207
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 208
    new-instance v4, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, v3, v4}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    .line 210
    .local v1, request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v3, v1}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 212
    .local v2, result:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 211
    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;

    .line 213
    .local v0, itemsElem:Lorg/jivesoftware/smackx/pubsub/ItemsExtension;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getItems()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getItems(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 137
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v1, itemList:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Item;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v6, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;

    .line 143
    sget-object v7, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->items:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;Ljava/lang/String;Ljava/util/List;)V

    .line 142
    invoke-virtual {p0, v5, v6}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v3

    .line 145
    .local v3, request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v5, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v5, v3}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 147
    .local v4, result:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v5, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    .line 146
    check-cast v2, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;

    .line 148
    .local v2, itemsElem:Lorg/jivesoftware/smackx/pubsub/ItemsExtension;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getItems()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 139
    .end local v2           #itemsElem:Lorg/jivesoftware/smackx/pubsub/ItemsExtension;
    .end local v3           #request:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .end local v4           #result:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, id:Ljava/lang/String;
    new-instance v6, Lorg/jivesoftware/smackx/pubsub/Item;

    invoke-direct {v6, v0}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public publish()V
    .locals 5

    .prologue
    .line 229
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 230
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PUBLISH:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 232
    .local v0, packet:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 233
    return-void
.end method

.method public publish(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/PublishItem;

    .line 253
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lorg/jivesoftware/smackx/pubsub/PublishItem;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 252
    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 255
    .local v0, packet:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 256
    return-void
.end method

.method public publish(Lorg/jivesoftware/smackx/pubsub/Item;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, item:Lorg/jivesoftware/smackx/pubsub/Item;,"TT;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    .local v0, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-nez p1, :cond_0

    new-instance p1, Lorg/jivesoftware/smackx/pubsub/Item;

    .end local p1           #item:Lorg/jivesoftware/smackx/pubsub/Item;,"TT;"
    invoke-direct {p1}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>()V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->publish(Ljava/util/Collection;)V

    .line 277
    return-void
.end method

.method public send()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 294
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PUBLISH:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 296
    .local v0, packet:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    .line 297
    return-void
.end method

.method public send(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 318
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/PublishItem;

    .line 319
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lorg/jivesoftware/smackx/pubsub/PublishItem;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 318
    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/PacketExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 321
    .local v0, packet:Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/LeafNode;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/pubsub/packet/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    .line 322
    return-void
.end method

.method public send(Lorg/jivesoftware/smackx/pubsub/Item;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 345
    .local p1, item:Lorg/jivesoftware/smackx/pubsub/Item;,"TT;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .local v0, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-nez p1, :cond_0

    new-instance p1, Lorg/jivesoftware/smackx/pubsub/Item;

    .end local p1           #item:Lorg/jivesoftware/smackx/pubsub/Item;,"TT;"
    invoke-direct {p1}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>()V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->send(Ljava/util/Collection;)V

    .line 348
    return-void
.end method
