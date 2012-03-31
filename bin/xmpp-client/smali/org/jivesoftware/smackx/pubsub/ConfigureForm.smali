.class public Lorg/jivesoftware/smackx/pubsub/ConfigureForm;
.super Lorg/jivesoftware/smackx/Form;
.source "ConfigureForm.java"


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/Form;)V
    .locals 1
    .parameter "nodeConfigForm"

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 0
    .parameter "configDataForm"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/FormType;)V
    .locals 1
    .parameter "formType"

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/FormType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/Form;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V
    .locals 3
    .parameter "nodeField"
    .parameter "type"

    .prologue
    .line 76
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, fieldName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v2

    if-nez v2, :cond_0

    .line 79
    new-instance v0, Lorg/jivesoftware/smackx/FormField;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/FormField;->setType(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/FormField;)V

    .line 83
    .end local v0           #field:Lorg/jivesoftware/smackx/FormField;
    :cond_0
    return-void
.end method

.method private getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;
    .locals 2
    .parameter "field"

    .prologue
    .line 190
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 192
    .local v0, formField:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private getFieldValues(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/util/Iterator;
    .locals 2
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 198
    .local v0, formField:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method private getListSingle(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-object v0
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "fieldValue"

    .prologue
    .line 37
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAccessModel()Lorg/jivesoftware/smackx/pubsub/AccessModel;
    .locals 2

    .prologue
    .line 91
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->access_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 96
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/AccessModel;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/AccessModel;

    move-result-object v1

    goto :goto_0
.end method

.method public getBodyXSLT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->body_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValues(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenAssociationPolicy()Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;
    .locals 2

    .prologue
    .line 127
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_policy:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 132
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildrenAssociationWhitelist()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_whitelist:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValues(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenMax()I
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_max:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 155
    return v0
.end method

.method public getCollection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->collection:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataformXSLT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->dataform_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemReply()Lorg/jivesoftware/smackx/pubsub/ItemReply;
    .locals 2

    .prologue
    .line 207
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->itemreply:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 212
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/ItemReply;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/ItemReply;

    move-result-object v1

    goto :goto_0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxPayloadSize()I
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_payload_size:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 238
    return v0
.end method

.method public getNodeType()Lorg/jivesoftware/smackx/pubsub/NodeType;
    .locals 2

    .prologue
    .line 248
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 251
    const/4 v1, 0x0

    .line 253
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/NodeType;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/NodeType;

    move-result-object v1

    goto :goto_0
.end method

.method public getPublishModel()Lorg/jivesoftware/smackx/pubsub/PublishModel;
    .locals 2

    .prologue
    .line 264
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->publish_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 267
    const/4 v1, 0x0

    .line 269
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/PublishModel;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PublishModel;

    move-result-object v1

    goto :goto_0
.end method

.method public getReplyRoom()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyroom:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValues(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getReplyTo()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyto:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValues(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getRosterGroupsAllowed()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->roster_groups_allowed:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValues(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->title:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeliverPayloads()Z
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->deliver_payloads:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotifyConfig()Z
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_config:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotifyDelete()Z
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_delete:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotifyRetract()Z
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_retract:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPersistItems()Z
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->persist_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPresenceBasedDelivery()Z
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->presence_based_delivery:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscibe()Z
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->subscribe:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAccessModel(Lorg/jivesoftware/smackx/pubsub/AccessModel;)V
    .locals 2
    .parameter "accessModel"

    .prologue
    .line 383
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->access_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "list-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->access_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/AccessModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getListSingle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 384
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 386
    return-void
.end method

.method public setBodyXSLT(Ljava/lang/String;)V
    .locals 2
    .parameter "bodyXslt"

    .prologue
    .line 396
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->body_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "text-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 397
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->body_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, children:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "text-multi"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 408
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 409
    return-void
.end method

.method public setChildrenAssociationPolicy(Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;)V
    .locals 3
    .parameter "policy"

    .prologue
    .line 418
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_policy:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 419
    const-string v2, "list-single"

    .line 418
    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 421
    .local v0, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_policy:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual {p0, v1, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 425
    return-void
.end method

.method public setChildrenAssociationWhitelist(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, whitelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_whitelist:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 438
    const-string v1, "jid-multi"

    .line 437
    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 440
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_whitelist:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 441
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 443
    return-void
.end method

.method public setChildrenMax(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 453
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_max:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "text-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 454
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_max:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;I)V

    .line 455
    return-void
.end method

.method public setCollection(Ljava/lang/String;)V
    .locals 2
    .parameter "collection"

    .prologue
    .line 464
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->collection:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "text-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 465
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->collection:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 489
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "text-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 490
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public setDataformXSLT(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 477
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->dataform_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "text-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 478
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->dataform_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public setDeliverPayloads(Z)V
    .locals 2
    .parameter "deliver"

    .prologue
    .line 500
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->deliver_payloads:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 501
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->deliver_payloads:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Z)V

    .line 502
    return-void
.end method

.method public setItemReply(Lorg/jivesoftware/smackx/pubsub/ItemReply;)V
    .locals 2
    .parameter "reply"

    .prologue
    .line 511
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->itemreply:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "list-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 512
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->itemreply:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/ItemReply;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getListSingle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 512
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 514
    return-void
.end method

.method public setMaxItems(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 524
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "text-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 525
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;I)V

    .line 526
    return-void
.end method

.method public setMaxPayloadSize(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 535
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_payload_size:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 536
    const-string v1, "text-single"

    .line 535
    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 537
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_payload_size:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;I)V

    .line 538
    return-void
.end method

.method public setNodeType(Lorg/jivesoftware/smackx/pubsub/NodeType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 547
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "list-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 548
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/NodeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getListSingle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 548
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 550
    return-void
.end method

.method public setNotifyConfig(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 560
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_config:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 561
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_config:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Z)V

    .line 562
    return-void
.end method

.method public setNotifyDelete(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 571
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_delete:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 572
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_delete:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Z)V

    .line 573
    return-void
.end method

.method public setNotifyRetract(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 583
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_retract:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 584
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_retract:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Z)V

    .line 585
    return-void
.end method

.method public setPersistentItems(Z)V
    .locals 2
    .parameter "persist"

    .prologue
    .line 594
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->persist_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 595
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->persist_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Z)V

    .line 596
    return-void
.end method

.method public setPresenceBasedDelivery(Z)V
    .locals 2
    .parameter "presenceBased"

    .prologue
    .line 605
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->presence_based_delivery:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 606
    const-string v1, "boolean"

    .line 605
    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 607
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->presence_based_delivery:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Z)V

    .line 609
    return-void
.end method

.method public setPublishModel(Lorg/jivesoftware/smackx/pubsub/PublishModel;)V
    .locals 2
    .parameter "publish"

    .prologue
    .line 620
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->publish_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "list-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 621
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->publish_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/PublishModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getListSingle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 621
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 623
    return-void
.end method

.method public setReplyRoom(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p1, replyRooms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyroom:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "list-multi"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 633
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyroom:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 634
    return-void
.end method

.method public setReplyTo(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p1, replyTos:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyto:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "list-multi"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 644
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyto:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 645
    return-void
.end method

.method public setRosterGroupsAllowed(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->roster_groups_allowed:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 655
    const-string v1, "list-multi"

    .line 654
    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 656
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->roster_groups_allowed:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 658
    return-void
.end method

.method public setSubscribe(Z)V
    .locals 2
    .parameter "subscribe"

    .prologue
    .line 667
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->subscribe:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 668
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->subscribe:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Z)V

    .line 669
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 679
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->title:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "text-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->addField(Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;Ljava/lang/String;)V

    .line 680
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->title:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    const-string v7, " Content ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 685
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    .local v2, result:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getFields()Ljava/util/Iterator;

    move-result-object v0

    .line 690
    .local v0, fields:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 713
    const/16 v6, 0x5d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 691
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/FormField;

    .line 692
    .local v1, formField:Lorg/jivesoftware/smackx/FormField;
    const/16 v6, 0x28

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v4

    .line 697
    .local v4, values:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .local v5, valuesBuilder:Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 707
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 708
    const-string v6, "NOT SET"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 711
    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 700
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 701
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 703
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 704
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
