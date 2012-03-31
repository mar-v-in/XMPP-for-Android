.class public Lorg/jivesoftware/smackx/pubsub/PublishItem;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "PublishItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/jivesoftware/smackx/pubsub/Item;",
        ">",
        "Lorg/jivesoftware/smackx/pubsub/NodeExtension;"
    }
.end annotation


# instance fields
.field protected items:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter "nodeId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/PublishItem;,"Lorg/jivesoftware/smackx/pubsub/PublishItem<TT;>;"
    .local p2, toPublish:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PUBLISH:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/PublishItem;->items:Ljava/util/Collection;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Item;)V
    .locals 2
    .parameter "nodeId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/PublishItem;,"Lorg/jivesoftware/smackx/pubsub/PublishItem<TT;>;"
    .local p2, toPublish:Lorg/jivesoftware/smackx/pubsub/Item;,"TT;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PUBLISH:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PublishItem;->items:Ljava/util/Collection;

    .line 51
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PublishItem;->items:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method


# virtual methods
.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/PublishItem;,"Lorg/jivesoftware/smackx/pubsub/PublishItem<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PublishItem;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, " node=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PublishItem;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/PublishItem;->items:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    const-string v2, "</publish>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 62
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/Item;

    .line 63
    .local v1, item:Lorg/jivesoftware/smackx/pubsub/Item;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/Item;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
