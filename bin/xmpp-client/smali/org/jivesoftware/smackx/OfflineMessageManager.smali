.class public Lorg/jivesoftware/smackx/OfflineMessageManager;
.super Ljava/lang/Object;
.source "OfflineMessageManager.java"


# static fields
.field private static final namespace:Ljava/lang/String; = "http://jabber.org/protocol/offline"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 6
    .parameter "connection"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 74
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v4, "offline"

    .line 75
    const-string v5, "http://jabber.org/protocol/offline"

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v4, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 74
    iput-object v0, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 76
    return-void
.end method


# virtual methods
.method public deleteMessages()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;-><init>()V

    .line 87
    .local v1, request:Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->setPurge(Z)V

    .line 89
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 90
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v4, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 92
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 94
    .local v2, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 97
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 96
    invoke-virtual {v2, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 99
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 101
    if-nez v0, :cond_0

    .line 102
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 104
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 106
    :cond_1
    return-void
.end method

.method public deleteMessages(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
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
    .line 120
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;-><init>()V

    .line 121
    .local v3, request:Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 128
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 129
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->getPacketID()Ljava/lang/String;

    move-result-object v6

    .line 128
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v5, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v6, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 131
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v4

    .line 133
    .local v4, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v6, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 136
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 135
    invoke-virtual {v4, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 138
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 140
    if-nez v0, :cond_1

    .line 141
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 121
    .end local v0           #answer:Lorg/jivesoftware/smack/packet/IQ;
    .end local v4           #response:Lorg/jivesoftware/smack/PacketCollector;
    .end local v5           #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, node:Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, item:Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    const-string v7, "remove"

    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;->setAction(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->addItem(Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;)V

    goto :goto_0

    .line 142
    .end local v1           #item:Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    .end local v2           #node:Ljava/lang/String;
    .restart local v0       #answer:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4       #response:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v5       #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 143
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 145
    :cond_2
    return-void
.end method

.method public getHeaders()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/OfflineMessageHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/OfflineMessageHeader;>;"
    iget-object v4, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 161
    invoke-static {v4}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v4

    .line 162
    const/4 v5, 0x0

    const-string v6, "http://jabber.org/protocol/offline"

    invoke-virtual {v4, v5, v6}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v3

    .line 163
    .local v3, items:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    return-object v4

    .line 164
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 165
    .local v2, item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    new-instance v4, Lorg/jivesoftware/smackx/OfflineMessageHeader;

    invoke-direct {v4, v2}, Lorg/jivesoftware/smackx/OfflineMessageHeader;-><init>(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMessageCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v3, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 179
    invoke-static {v3}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v3

    .line 180
    const/4 v4, 0x0

    const-string v5, "http://jabber.org/protocol/offline"

    invoke-virtual {v3, v4, v5}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    .line 181
    .local v1, info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    invoke-static {v1}, Lorg/jivesoftware/smackx/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;

    move-result-object v0

    .line 182
    .local v0, extendedInfo:Lorg/jivesoftware/smackx/Form;
    if-eqz v0, :cond_0

    .line 183
    const-string v3, "number_of_messages"

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 187
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMessages()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v3, messages:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/Message;>;"
    new-instance v4, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;-><init>()V

    .line 203
    .local v4, request:Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->setFetch(Z)V

    .line 205
    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 206
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->getPacketID()Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 207
    .local v6, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v7, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 208
    invoke-virtual {v7, v6}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v5

    .line 210
    .local v5, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v7, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 211
    iget-object v8, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 213
    .local v2, messageCollector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v7, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 216
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v7, v7

    .line 215
    invoke-virtual {v5, v7, v8}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 218
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 220
    if-nez v0, :cond_0

    .line 221
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string v8, "No response from server."

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 222
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 223
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v7

    .line 228
    :cond_1
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 227
    check-cast v1, Lorg/jivesoftware/smack/packet/Message;

    .line 229
    .local v1, message:Lorg/jivesoftware/smack/packet/Message;
    :goto_0
    if-nez v1, :cond_2

    .line 235
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 236
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    return-object v7

    .line 230
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v7, v7

    .line 231
    invoke-virtual {v2, v7, v8}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .end local v1           #message:Lorg/jivesoftware/smack/packet/Message;
    check-cast v1, Lorg/jivesoftware/smack/packet/Message;

    .restart local v1       #message:Lorg/jivesoftware/smack/packet/Message;
    goto :goto_0
.end method

.method public getMessages(Ljava/util/List;)Ljava/util/Iterator;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 256
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v5, messages:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/Message;>;"
    new-instance v7, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;

    invoke-direct {v7}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;-><init>()V

    .line 258
    .local v7, request:Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 265
    new-instance v9, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 266
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->getPacketID()Ljava/lang/String;

    move-result-object v10

    .line 265
    invoke-direct {v9, v10}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 267
    .local v9, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v10, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 268
    invoke-virtual {v10, v9}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v8

    .line 270
    .local v8, response:Lorg/jivesoftware/smack/PacketCollector;
    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v10, 0x2

    new-array v10, v10, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 271
    new-instance v12, Lorg/jivesoftware/smackx/OfflineMessageManager$1;

    invoke-direct {v12, p0, p1}, Lorg/jivesoftware/smackx/OfflineMessageManager$1;-><init>(Lorg/jivesoftware/smackx/OfflineMessageManager;Ljava/util/List;)V

    .line 270
    aput-object v12, v10, v11

    invoke-direct {v4, v10}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 279
    .local v4, messageFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v10, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 280
    invoke-virtual {v10, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v3

    .line 282
    .local v3, messageCollector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v10, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v10, v7}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 285
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v10

    int-to-long v10, v10

    .line 284
    invoke-virtual {v8, v10, v11}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 287
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v8}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 289
    if-nez v0, :cond_1

    .line 290
    new-instance v10, Lorg/jivesoftware/smack/XMPPException;

    const-string v11, "No response from server."

    invoke-direct {v10, v11}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 258
    .end local v0           #answer:Lorg/jivesoftware/smack/packet/IQ;
    .end local v3           #messageCollector:Lorg/jivesoftware/smack/PacketCollector;
    .end local v4           #messageFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    .end local v8           #response:Lorg/jivesoftware/smack/PacketCollector;
    .end local v9           #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 259
    .local v6, node:Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;

    invoke-direct {v1, v6}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, item:Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    const-string v11, "view"

    invoke-virtual {v1, v11}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;->setAction(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v7, v1}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->addItem(Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;)V

    goto :goto_0

    .line 291
    .end local v1           #item:Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    .end local v6           #node:Ljava/lang/String;
    .restart local v0       #answer:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v3       #messageCollector:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v4       #messageFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    .restart local v8       #response:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v9       #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 292
    new-instance v10, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v10

    .line 297
    :cond_2
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 296
    check-cast v2, Lorg/jivesoftware/smack/packet/Message;

    .line 298
    .local v2, message:Lorg/jivesoftware/smack/packet/Message;
    :goto_1
    if-nez v2, :cond_3

    .line 304
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 305
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    return-object v10

    .line 299
    :cond_3
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v10

    int-to-long v10, v10

    .line 300
    invoke-virtual {v3, v10, v11}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .end local v2           #message:Lorg/jivesoftware/smack/packet/Message;
    check-cast v2, Lorg/jivesoftware/smack/packet/Message;

    .restart local v2       #message:Lorg/jivesoftware/smack/packet/Message;
    goto :goto_1
.end method

.method public supportsFlexibleRetrieval()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v1, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 320
    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 321
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 322
    .local v0, info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v1, "http://jabber.org/protocol/offline"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
