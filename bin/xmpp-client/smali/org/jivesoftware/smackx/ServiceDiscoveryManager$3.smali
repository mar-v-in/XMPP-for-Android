.class Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 7
    .parameter "packet"

    .prologue
    .line 415
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    .line 418
    .local v0, discoverItems:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v5

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v5, v6, :cond_1

    .line 420
    new-instance v4, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;-><init>()V

    .line 421
    .local v4, response:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 422
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setTo(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setPacketID(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 430
    iget-object v5, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 431
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v6

    .line 430
    #calls: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;
    invoke-static {v5, v6}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$2(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;

    move-result-object v3

    .line 432
    .local v3, nodeInformationProvider:Lorg/jivesoftware/smackx/NodeInformationProvider;
    if-eqz v3, :cond_3

    .line 435
    invoke-interface {v3}, Lorg/jivesoftware/smackx/NodeInformationProvider;->getNodeItems()Ljava/util/List;

    move-result-object v2

    .line 436
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    if-eqz v2, :cond_0

    .line 437
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 449
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    :cond_0
    :goto_1
    iget-object v5, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v5}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$1(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 451
    .end local v3           #nodeInformationProvider:Lorg/jivesoftware/smackx/NodeInformationProvider;
    .end local v4           #response:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    :cond_1
    return-void

    .line 437
    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    .restart local v3       #nodeInformationProvider:Lorg/jivesoftware/smackx/NodeInformationProvider;
    .restart local v4       #response:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 438
    .local v1, item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    invoke-virtual {v4, v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->addItem(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V

    goto :goto_0

    .line 441
    .end local v1           #item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    :cond_3
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 445
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 446
    new-instance v5, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 447
    sget-object v6, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 446
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_1
.end method
