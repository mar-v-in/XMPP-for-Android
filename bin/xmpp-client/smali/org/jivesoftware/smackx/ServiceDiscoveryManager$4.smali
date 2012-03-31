.class Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;
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
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 10
    .parameter "packet"

    .prologue
    .line 462
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .line 465
    .local v0, discoverInfo:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v8

    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v8, v9, :cond_2

    .line 467
    new-instance v7, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 468
    .local v7, response:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    sget-object v8, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 469
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setTo(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getPacketID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setPacketID(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    .line 476
    new-instance v4, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 477
    const-string v8, "client"

    invoke-static {}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getIdentityName()Ljava/lang/String;

    move-result-object v9

    .line 476
    invoke-direct {v4, v8, v9}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .local v4, identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-static {}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getIdentityType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->setType(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v7, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addIdentity(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V

    .line 481
    iget-object v8, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;
    invoke-static {v8}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$3(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    .line 482
    :try_start_0
    iget-object v8, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getFeatures()Ljava/util/Iterator;

    move-result-object v5

    .line 483
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    .line 482
    if-nez v8, :cond_3

    .line 486
    iget-object v8, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;
    invoke-static {v8}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$4(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 487
    iget-object v8, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;
    invoke-static {v8}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$4(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 481
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    .end local v4           #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v8}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$1(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 523
    .end local v7           #response:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :cond_2
    return-void

    .line 484
    .restart local v4       #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7       #response:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addFeature(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 494
    .end local v4           #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    :cond_4
    iget-object v8, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 495
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v9

    .line 494
    #calls: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;
    invoke-static {v8, v9}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$2(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;

    move-result-object v6

    .line 496
    .local v6, nodeInformationProvider:Lorg/jivesoftware/smackx/NodeInformationProvider;
    if-eqz v6, :cond_7

    .line 499
    invoke-interface {v6}, Lorg/jivesoftware/smackx/NodeInformationProvider;->getNodeFeatures()Ljava/util/List;

    move-result-object v2

    .line 500
    .local v2, features:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_5

    .line 501
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 507
    :cond_5
    invoke-interface {v6}, Lorg/jivesoftware/smackx/NodeInformationProvider;->getNodeIdentities()Ljava/util/List;

    move-result-object v3

    .line 508
    .local v3, identities:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    if-eqz v3, :cond_1

    .line 509
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 510
    .restart local v4       #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-virtual {v7, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addIdentity(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V

    goto :goto_3

    .line 501
    .end local v3           #identities:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    .end local v4           #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    .local v1, feature:Ljava/lang/String;
    invoke-virtual {v7, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addFeature(Ljava/lang/String;)V

    goto :goto_2

    .line 516
    .end local v1           #feature:Ljava/lang/String;
    .end local v2           #features:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    sget-object v8, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 517
    new-instance v8, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 518
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 517
    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_1
.end method
