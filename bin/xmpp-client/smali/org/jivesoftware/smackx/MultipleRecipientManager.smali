.class public Lorg/jivesoftware/smackx/MultipleRecipientManager;
.super Ljava/lang/Object;
.source "MultipleRecipientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;
    }
.end annotation


# static fields
.field private static services:Lorg/jivesoftware/smack/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/Cache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lorg/jivesoftware/smack/util/Cache;

    const/16 v1, 0x64

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v0, Lorg/jivesoftware/smackx/MultipleRecipientManager;->services:Lorg/jivesoftware/smack/util/Cache;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMultipleRecipienServiceAddress(Lorg/jivesoftware/smack/Connection;)Ljava/lang/String;
    .locals 12
    .parameter "connection"

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, serviceName:Ljava/lang/String;
    sget-object v8, Lorg/jivesoftware/smackx/MultipleRecipientManager;->services:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v8, v7}, Lorg/jivesoftware/smack/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 99
    .local v6, serviceAddress:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 100
    sget-object v9, Lorg/jivesoftware/smackx/MultipleRecipientManager;->services:Lorg/jivesoftware/smack/util/Cache;

    monitor-enter v9

    .line 101
    :try_start_0
    sget-object v8, Lorg/jivesoftware/smackx/MultipleRecipientManager;->services:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v8, v7}, Lorg/jivesoftware/smack/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-nez v6, :cond_1

    .line 107
    :try_start_1
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v2

    .line 110
    .local v2, info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v8, "http://jabber.org/protocol/address"

    invoke-virtual {v2, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 111
    move-object v6, v7

    .line 133
    :cond_0
    :goto_0
    sget-object v10, Lorg/jivesoftware/smackx/MultipleRecipientManager;->services:Lorg/jivesoftware/smack/util/Cache;

    if-nez v6, :cond_6

    const-string v8, ""

    :goto_1
    invoke-virtual {v10, v7, v8}, Lorg/jivesoftware/smack/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .end local v2           #info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :cond_2
    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x0

    .end local v6           #serviceAddress:Ljava/lang/String;
    :cond_3
    return-object v6

    .line 116
    .restart local v2       #info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .restart local v6       #serviceAddress:Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v5

    .line 118
    .local v5, items:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v3

    .line 119
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    .line 118
    if-eqz v8, :cond_0

    .line 121
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 122
    .local v4, item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v8

    .line 124
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getNode()Ljava/lang/String;

    move-result-object v11

    .line 123
    invoke-virtual {v8, v10, v11}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v2

    .line 125
    const-string v8, "http://jabber.org/protocol/address"

    invoke-virtual {v2, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v8

    if-eqz v8, :cond_5

    .line 126
    move-object v6, v7

    .line 127
    goto :goto_0

    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v4           #item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    .end local v5           #items:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    :cond_6
    move-object v8, v6

    .line 134
    goto :goto_1

    .line 135
    .end local v2           #info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Lorg/jivesoftware/smack/XMPPException;
    :try_start_4
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_2

    .line 100
    .end local v1           #e:Lorg/jivesoftware/smack/XMPPException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8
.end method

.method public static getMultipleRecipientInfo(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/MultipleRecipientInfo;
    .locals 3
    .parameter "packet"

    .prologue
    .line 156
    .line 157
    const-string v1, "addresses"

    const-string v2, "http://jabber.org/protocol/address"

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 156
    check-cast v0, Lorg/jivesoftware/smackx/packet/MultipleAddresses;

    .line 158
    .local v0, extension:Lorg/jivesoftware/smackx/packet/MultipleAddresses;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/MultipleRecipientInfo;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;-><init>(Lorg/jivesoftware/smackx/packet/MultipleAddresses;)V

    goto :goto_0
.end method

.method public static reply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 17
    .parameter "connection"
    .parameter "original"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->getMultipleRecipientInfo(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/MultipleRecipientInfo;

    move-result-object v13

    .line 182
    .local v13, info:Lorg/jivesoftware/smackx/MultipleRecipientInfo;
    if-nez v13, :cond_0

    .line 183
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    .line 184
    const-string v3, "Original message does not contain multiple recipient info"

    .line 183
    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;->shouldNotReply()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    const-string v3, "Original message should not be replied"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_1
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;->getReplyRoom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 190
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    const-string v3, "Reply should be sent through a room"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 195
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 197
    :cond_3
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;->getReplyAddress()Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;

    move-result-object v16

    .line 198
    .local v16, replyAddress:Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->getJid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 200
    invoke-virtual/range {v16 .. v16}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->getJid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 243
    :goto_0
    return-void

    .line 204
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v4, to:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v5, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;->getTOAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 207
    .local v14, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 206
    if-nez v2, :cond_7

    .line 212
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;->getCCAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 213
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 212
    if-nez v2, :cond_8

    .line 219
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 220
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 221
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v12

    .line 225
    .local v12, from:Ljava/lang/String;
    invoke-interface {v4, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v5, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 226
    invoke-static {v12}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 227
    .local v11, bareJID:Ljava/lang/String;
    invoke-interface {v4, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v5, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 231
    .end local v11           #bareJID:Ljava/lang/String;
    :cond_6
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->getMultipleRecipienServiceAddress(Lorg/jivesoftware/smack/Connection;)Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, serviceAddress:Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 235
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 236
    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 235
    invoke-static/range {v2 .. v10}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->sendThroughService(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v10           #serviceAddress:Ljava/lang/String;
    .end local v12           #from:Ljava/lang/String;
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;

    .line 209
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->getJid()Ljava/lang/String;

    move-result-object v15

    .line 210
    .local v15, jid:Ljava/lang/String;
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    .end local v15           #jid:Ljava/lang/String;
    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;

    .line 215
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->getJid()Ljava/lang/String;

    move-result-object v15

    .line 216
    .restart local v15       #jid:Ljava/lang/String;
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 240
    .end local v15           #jid:Ljava/lang/String;
    .restart local v10       #serviceAddress:Ljava/lang/String;
    .restart local v12       #from:Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v5, v2}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->sendToIndividualRecipients(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static send(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter "connection"
    .parameter "packet"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smack/packet/Packet;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .local p2, to:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, bcc:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v5, 0x0

    .line 271
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v7}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->send(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    return-void
.end method

.method public static send(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "connection"
    .parameter "packet"
    .parameter
    .parameter
    .parameter
    .parameter "replyTo"
    .parameter "replyRoom"
    .parameter "noReply"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smack/packet/Packet;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 309
    .local p2, to:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, bcc:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-static {p0}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->getMultipleRecipienServiceAddress(Lorg/jivesoftware/smack/Connection;)Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, serviceAddress:Ljava/lang/String;
    if-eqz v8, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 313
    invoke-static/range {v0 .. v8}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->sendThroughService(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 318
    :cond_0
    if-nez p7, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 319
    :cond_1
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 323
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    .line 324
    const-string v1, "Extended Stanza Addressing not supported by server"

    .line 323
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->sendToIndividualRecipients(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static sendThroughService(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 13
    .parameter "connection"
    .parameter "packet"
    .parameter
    .parameter
    .parameter
    .parameter "replyTo"
    .parameter "replyRoom"
    .parameter "noReply"
    .parameter "serviceAddress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smack/packet/Packet;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    .local p2, to:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, bcc:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v1, Lorg/jivesoftware/smackx/packet/MultipleAddresses;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;-><init>()V

    .line 336
    .local v1, multipleAddresses:Lorg/jivesoftware/smackx/packet/MultipleAddresses;
    if-eqz p2, :cond_0

    .line 337
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 343
    .end local v12           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    if-eqz p3, :cond_1

    .line 344
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 350
    .end local v12           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    if-eqz p4, :cond_2

    .line 351
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 357
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_2
    if-eqz p7, :cond_7

    .line 358
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->setNoReply()V

    .line 370
    :cond_3
    :goto_3
    move-object/from16 v0, p8

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Packet;->setTo(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Packet;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 374
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 375
    return-void

    .line 338
    .restart local v12       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 339
    .local v3, jid:Ljava/lang/String;
    const-string v2, "to"

    const/4 v4, 0x0

    .line 340
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 339
    invoke-virtual/range {v1 .. v7}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 345
    .end local v3           #jid:Ljava/lang/String;
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 346
    .restart local v3       #jid:Ljava/lang/String;
    const-string v2, "cc"

    const/4 v4, 0x0

    .line 347
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 346
    invoke-virtual/range {v1 .. v7}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 352
    .end local v3           #jid:Ljava/lang/String;
    .end local v12           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 353
    .restart local v3       #jid:Ljava/lang/String;
    const-string v2, "bcc"

    const/4 v4, 0x0

    .line 354
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 353
    invoke-virtual/range {v1 .. v7}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 360
    .end local v3           #jid:Ljava/lang/String;
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_7
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 361
    const-string v5, "replyto"

    .line 362
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    move-object/from16 v6, p5

    .line 361
    invoke-virtual/range {v4 .. v10}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 364
    :cond_8
    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 365
    const-string v5, "replyroom"

    .line 366
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    move-object/from16 v6, p6

    .line 365
    invoke-virtual/range {v4 .. v10}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_3
.end method

.method private static sendToIndividualRecipients(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter "connection"
    .parameter "packet"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smack/packet/Packet;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, to:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, bcc:Ljava/util/List;,"Ljava/util/List<*>;"
    if-eqz p2, :cond_0

    .line 380
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 386
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    if-eqz p3, :cond_1

    .line 387
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 393
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    if-eqz p4, :cond_2

    .line 394
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 400
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_2
    return-void

    .line 381
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    .local v2, jid:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/Packet;->setTo(Ljava/lang/String;)V

    .line 383
    new-instance v3, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 388
    .end local v2           #jid:Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 389
    .restart local v2       #jid:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/Packet;->setTo(Ljava/lang/String;)V

    .line 390
    new-instance v3, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_1

    .line 395
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #jid:Ljava/lang/String;
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 396
    .restart local v2       #jid:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/Packet;->setTo(Ljava/lang/String;)V

    .line 397
    new-instance v3, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_2
.end method
