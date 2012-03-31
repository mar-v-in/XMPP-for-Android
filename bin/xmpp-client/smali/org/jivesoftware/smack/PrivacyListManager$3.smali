.class Lorg/jivesoftware/smack/PrivacyListManager$3;
.super Ljava/lang/Object;
.source "PrivacyListManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/PrivacyListManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/PrivacyListManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/PrivacyListManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/PrivacyListManager$3;->this$0:Lorg/jivesoftware/smack/PrivacyListManager;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 10
    .parameter "packet"

    .prologue
    .line 396
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, p1

    .line 400
    check-cast v5, Lorg/jivesoftware/smack/packet/Privacy;

    .line 403
    .local v5, privacy:Lorg/jivesoftware/smack/packet/Privacy;
    iget-object v6, p0, Lorg/jivesoftware/smack/PrivacyListManager$3;->this$0:Lorg/jivesoftware/smack/PrivacyListManager;

    #getter for: Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;
    invoke-static {v6}, Lorg/jivesoftware/smack/PrivacyListManager;->access$3(Lorg/jivesoftware/smack/PrivacyListManager;)Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    .line 404
    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smack/PrivacyListManager$3;->this$0:Lorg/jivesoftware/smack/PrivacyListManager;

    #getter for: Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;
    invoke-static {v6}, Lorg/jivesoftware/smack/PrivacyListManager;->access$3(Lorg/jivesoftware/smack/PrivacyListManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 403
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    new-instance v1, Lorg/jivesoftware/smack/PrivacyListManager$3$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/PrivacyListManager$3$1;-><init>(Lorg/jivesoftware/smack/PrivacyListManager$3;)V

    .line 429
    .local v1, iq:Lorg/jivesoftware/smack/packet/IQ;
    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 430
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 434
    iget-object v6, p0, Lorg/jivesoftware/smack/PrivacyListManager$3;->this$0:Lorg/jivesoftware/smack/PrivacyListManager;

    #getter for: Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v6}, Lorg/jivesoftware/smack/PrivacyListManager;->access$2(Lorg/jivesoftware/smack/PrivacyListManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 404
    .end local v1           #iq:Lorg/jivesoftware/smack/packet/IQ;
    :cond_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/PrivacyListListener;

    .line 407
    .local v4, listener:Lorg/jivesoftware/smack/PrivacyListListener;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 406
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 407
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 408
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 409
    .local v3, listName:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 410
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 411
    invoke-interface {v4, v3}, Lorg/jivesoftware/smack/PrivacyListListener;->updatedPrivacyList(Ljava/lang/String;)V

    goto :goto_1

    .line 403
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;>;"
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    .end local v3           #listName:Ljava/lang/String;
    .end local v4           #listener:Lorg/jivesoftware/smack/PrivacyListListener;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 413
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;>;"
    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    .restart local v3       #listName:Ljava/lang/String;
    .restart local v4       #listener:Lorg/jivesoftware/smack/PrivacyListListener;
    :cond_4
    :try_start_2
    invoke-interface {v4, v3, v2}, Lorg/jivesoftware/smack/PrivacyListListener;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
