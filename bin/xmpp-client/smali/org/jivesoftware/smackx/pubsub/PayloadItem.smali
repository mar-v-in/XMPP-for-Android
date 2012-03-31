.class public Lorg/jivesoftware/smackx/pubsub/PayloadItem;
.super Lorg/jivesoftware/smackx/pubsub/Item;
.source "PayloadItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/jivesoftware/smack/packet/PacketExtension;",
        ">",
        "Lorg/jivesoftware/smackx/pubsub/Item;"
    }
.end annotation


# instance fields
.field private final payload:Lorg/jivesoftware/smack/packet/PacketExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/PacketExtension;)V
    .locals 2
    .parameter "itemId"
    .parameter "nodeId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/PayloadItem;,"Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    .local p3, payloadExt:Lorg/jivesoftware/smack/packet/PacketExtension;,"TE;"
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-nez p3, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload cannot be \'null\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->payload:Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/PacketExtension;)V
    .locals 2
    .parameter "itemId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/PayloadItem;,"Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    .local p2, payloadExt:Lorg/jivesoftware/smack/packet/PacketExtension;,"TE;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Ljava/lang/String;)V

    .line 82
    if-nez p2, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload cannot be \'null\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->payload:Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/PacketExtension;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/PayloadItem;,"Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    .local p1, payloadExt:Lorg/jivesoftware/smack/packet/PacketExtension;,"TE;"
    invoke-direct {p0}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload cannot be \'null\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->payload:Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 68
    return-void
.end method


# virtual methods
.method public getPayload()Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/PayloadItem;,"Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->payload:Lorg/jivesoftware/smack/packet/PacketExtension;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/PayloadItem;,"Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " | Content ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    .local p0, this:Lorg/jivesoftware/smackx/pubsub/PayloadItem;,"Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<item"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, " id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->getNode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    const-string v1, " node=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->payload:Lorg/jivesoftware/smack/packet/PacketExtension;

    invoke-interface {v1}, Lorg/jivesoftware/smack/packet/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "</item>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
