.class public Lorg/jivesoftware/smackx/pubsub/FormNode;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "FormNode.java"


# instance fields
.field private final configForm:Lorg/jivesoftware/smackx/Form;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Ljava/lang/String;Lorg/jivesoftware/smackx/Form;)V
    .locals 2
    .parameter "formType"
    .parameter "nodeId"
    .parameter "submitForm"

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->getNodeElement()Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 60
    if-nez p3, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Submit form cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/FormNode;->configForm:Lorg/jivesoftware/smackx/Form;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Lorg/jivesoftware/smackx/Form;)V
    .locals 2
    .parameter "formType"
    .parameter "submitForm"

    .prologue
    .line 38
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->getNodeElement()Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    .line 40
    if-nez p2, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Submit form cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/FormNode;->configForm:Lorg/jivesoftware/smackx/Form;

    .line 44
    return-void
.end method


# virtual methods
.method public getForm()Lorg/jivesoftware/smackx/Form;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/FormNode;->configForm:Lorg/jivesoftware/smackx/Form;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3e

    .line 77
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/FormNode;->configForm:Lorg/jivesoftware/smackx/Form;

    if-nez v1, :cond_0

    .line 78
    invoke-super {p0}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;->toXML()Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getNode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 84
    const-string v1, " node=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/FormNode;->configForm:Lorg/jivesoftware/smackx/Form;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DataForm;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
