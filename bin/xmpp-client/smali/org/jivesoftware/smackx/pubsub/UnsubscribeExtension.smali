.class public Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "UnsubscribeExtension.java"


# instance fields
.field protected id:Ljava/lang/String;

.field protected jid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "subscriptionJid"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v0}, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "subscriptionJid"
    .parameter "nodeId"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "jid"
    .parameter "nodeId"
    .parameter "subscriptionId"

    .prologue
    .line 36
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->UNSUBSCRIBE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;->jid:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;->id:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "jid"

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;->jid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/util/XmlUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;->getNode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    const-string v1, "node"

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/util/XmlUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 60
    const-string v1, "subid"

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/util/XmlUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
