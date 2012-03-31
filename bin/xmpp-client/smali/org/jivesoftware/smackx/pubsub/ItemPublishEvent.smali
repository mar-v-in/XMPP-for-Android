.class public Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;
.super Lorg/jivesoftware/smackx/pubsub/SubscriptionEvent;
.source "ItemPublishEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/jivesoftware/smackx/pubsub/Item;",
        ">",
        "Lorg/jivesoftware/smackx/pubsub/SubscriptionEvent;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private originalDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "nodeId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;,"Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent<TT;>;"
    .local p2, eventItems:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/pubsub/SubscriptionEvent;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;->items:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "nodeId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;,"Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent<TT;>;"
    .local p2, eventItems:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p3, subscriptionIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3}, Lorg/jivesoftware/smackx/pubsub/SubscriptionEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 59
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;->items:Ljava/util/List;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;)V
    .locals 0
    .parameter "nodeId"
    .parameter
    .parameter
    .parameter "publishedDate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;,"Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent<TT;>;"
    .local p2, eventItems:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p3, subscriptionIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3}, Lorg/jivesoftware/smackx/pubsub/SubscriptionEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 81
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;->items:Ljava/util/List;

    .line 83
    if-eqz p4, :cond_0

    .line 84
    iput-object p4, p0, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;->originalDate:Ljava/util/Date;

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;,"Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent<TT;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;->items:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPublishedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 105
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;,"Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent<TT;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;->originalDate:Ljava/util/Date;

    return-object v0
.end method

.method public isDelayed()Z
    .locals 1

    .prologue
    .line 119
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;,"Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent<TT;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;->originalDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;,"Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  [subscriptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;->getSubscriptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    const-string v1, "], [Delayed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;->isDelayed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;->originalDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
