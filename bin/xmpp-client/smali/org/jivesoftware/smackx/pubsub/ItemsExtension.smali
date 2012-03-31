.class public Lorg/jivesoftware/smackx/pubsub/ItemsExtension;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "ItemsExtension.java"

# interfaces
.implements Lorg/jivesoftware/smackx/pubsub/EmbeddedPacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;
    }
.end annotation


# instance fields
.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field protected notify:Ljava/lang/Boolean;

.field protected type:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .parameter "nodeId"
    .parameter
    .parameter "notify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, items:Ljava/util/List;,"Ljava/util/List<+Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->retract:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->getNodeElement()Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->retract:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->type:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    .line 135
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->items:Ljava/util/List;

    .line 136
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->notify:Ljava/lang/Boolean;

    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "itemsType"
    .parameter "nodeId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, items:Ljava/util/List;,"Ljava/util/List<+Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->getNodeElement()Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->type:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    .line 101
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->items:Ljava/util/List;

    .line 102
    return-void
.end method


# virtual methods
.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->items:Ljava/util/List;

    return-object v0
.end method

.method public getItemsElementType()Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->type:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    return-object v0
.end method

.method public getNotify()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->notify:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Content ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->toXML()Ljava/lang/String;

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
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->items:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    invoke-super {p0}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;->toXML()Ljava/lang/String;

    move-result-object v2

    .line 204
    :goto_0
    return-object v2

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v2, " node=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->notify:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 189
    const-string v2, "\' "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->type:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->getElementAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->notify:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v2, "\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_2
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 192
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 195
    :cond_4
    const-string v2, "\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 197
    .local v1, item:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-interface {v1}, Lorg/jivesoftware/smack/packet/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
