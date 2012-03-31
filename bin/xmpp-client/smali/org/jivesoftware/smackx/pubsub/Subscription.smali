.class public Lorg/jivesoftware/smackx/pubsub/Subscription;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/pubsub/Subscription$State;
    }
.end annotation


# instance fields
.field protected configRequired:Z

.field protected id:Ljava/lang/String;

.field protected jid:Ljava/lang/String;

.field protected state:Lorg/jivesoftware/smackx/pubsub/Subscription$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "subscriptionJid"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/jivesoftware/smackx/pubsub/Subscription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Subscription$State;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "subscriptionJid"
    .parameter "nodeId"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/jivesoftware/smackx/pubsub/Subscription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Subscription$State;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Subscription$State;)V
    .locals 1
    .parameter "jid"
    .parameter "nodeId"
    .parameter "subscriptionId"
    .parameter "state"

    .prologue
    .line 72
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->configRequired:Z

    .line 73
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->jid:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->id:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->state:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Subscription$State;Z)V
    .locals 1
    .parameter "jid"
    .parameter "nodeId"
    .parameter "subscriptionId"
    .parameter "state"
    .parameter "configRequired"

    .prologue
    .line 96
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->configRequired:Z

    .line 97
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->jid:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->id:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->state:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    .line 100
    iput-boolean p5, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->configRequired:Z

    .line 101
    return-void
.end method

.method private appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "builder"
    .parameter "att"
    .parameter "value"

    .prologue
    .line 104
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, "=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lorg/jivesoftware/smackx/pubsub/Subscription$State;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->state:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    return-object v0
.end method

.method public isConfigRequired()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->configRequired:Z

    return v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<subscription"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "jid"

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->jid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Subscription;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Subscription;->getNode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "node"

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Subscription;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Subscription;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 158
    const-string v1, "subid"

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Subscription;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->state:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    if-eqz v1, :cond_2

    .line 162
    const-string v1, "subscription"

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Subscription;->state:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Subscription;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_2
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
