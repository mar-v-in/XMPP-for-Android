.class public Lorg/jivesoftware/smackx/pubsub/Node$ItemEventTranslator;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/pubsub/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemEventTranslator"
.end annotation


# instance fields
.field private final listener:Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;

.field final synthetic this$0:Lorg/jivesoftware/smackx/pubsub/Node;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/Node;Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;)V
    .locals 0
    .parameter
    .parameter "eventListener"

    .prologue
    .line 151
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Node$ItemEventTranslator;->this$0:Lorg/jivesoftware/smackx/pubsub/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Node$ItemEventTranslator;->listener:Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;

    .line 153
    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .parameter "packet"

    .prologue
    .line 157
    .line 158
    const-string v4, "event"

    sget-object v5, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->EVENT:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {p1, v4, v5}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/EventElement;

    .line 159
    .local v1, event:Lorg/jivesoftware/smackx/pubsub/EventElement;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/EventElement;->getEvent()Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;

    .line 161
    .local v3, itemsElem:Lorg/jivesoftware/smackx/pubsub/ItemsExtension;
    const-string v4, "delay"

    const-string v5, "urn:xmpp:delay"

    .line 160
    invoke-virtual {p1, v4, v5}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/DelayInformation;

    .line 165
    .local v0, delay:Lorg/jivesoftware/smackx/packet/DelayInformation;
    if-nez v0, :cond_0

    .line 166
    const-string v4, "x"

    .line 167
    const-string v5, "jabber:x:delay"

    .line 166
    invoke-virtual {p1, v4, v5}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .end local v0           #delay:Lorg/jivesoftware/smackx/packet/DelayInformation;
    check-cast v0, Lorg/jivesoftware/smackx/packet/DelayInformation;

    .line 169
    .restart local v0       #delay:Lorg/jivesoftware/smackx/packet/DelayInformation;
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;

    .line 170
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getNode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getItems()Ljava/util/List;

    move-result-object v6

    .line 171
    #calls: Lorg/jivesoftware/smackx/pubsub/Node;->getSubscriptionIds(Lorg/jivesoftware/smack/packet/Packet;)Ljava/util/List;
    invoke-static {p1}, Lorg/jivesoftware/smackx/pubsub/Node;->access$0(Lorg/jivesoftware/smack/packet/Packet;)Ljava/util/List;

    move-result-object v7

    if-nez v0, :cond_1

    const/4 v4, 0x0

    .line 169
    :goto_0
    invoke-direct {v2, v5, v6, v7, v4}, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;)V

    .line 173
    .local v2, eventItems:Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;
    iget-object v4, p0, Lorg/jivesoftware/smackx/pubsub/Node$ItemEventTranslator;->listener:Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;

    invoke-interface {v4, v2}, Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;->handlePublishedItems(Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;)V

    .line 174
    return-void

    .line 172
    .end local v2           #eventItems:Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DelayInformation;->getStamp()Ljava/util/Date;

    move-result-object v4

    goto :goto_0
.end method
