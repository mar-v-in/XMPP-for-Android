.class public Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "GetItemsRequest.java"


# instance fields
.field protected maxItems:I

.field protected subId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "nodeId"

    .prologue
    .line 26
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "nodeId"
    .parameter "maxItemsToReturn"

    .prologue
    .line 30
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 31
    iput p2, p0, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->maxItems:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "nodeId"
    .parameter "subscriptionId"

    .prologue
    .line 35
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->subId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "nodeId"
    .parameter "subscriptionId"
    .parameter "maxItemsToReturn"

    .prologue
    .line 41
    invoke-direct {p0, p1, p3}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->subId:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getMaxItems()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->maxItems:I

    return v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->subId:Ljava/lang/String;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, " node=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, " subid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->getMaxItems()I

    move-result v1

    if-lez v1, :cond_1

    .line 69
    const-string v1, " max_items=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/GetItemsRequest;->getMaxItems()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_1
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
