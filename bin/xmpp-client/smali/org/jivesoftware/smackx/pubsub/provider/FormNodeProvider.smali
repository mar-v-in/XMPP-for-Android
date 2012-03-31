.class public Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;
.super Lorg/jivesoftware/smackx/provider/EmbeddedExtensionProvider;
.source "FormNodeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/EmbeddedExtensionProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected createReturnExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 5
    .parameter "currentElement"
    .parameter "currentNamespace"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;)",
            "Lorg/jivesoftware/smack/packet/PacketExtension;"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, attributeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, content:Ljava/util/List;,"Ljava/util/List<+Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/FormNode;

    invoke-static {p1, p2}, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->valueOfFromElementName(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/FormNodeType;

    move-result-object v3

    .line 39
    const-string v0, "node"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lorg/jivesoftware/smackx/Form;

    .line 40
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-direct {v4, v1}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 38
    invoke-direct {v2, v3, v0, v4}, Lorg/jivesoftware/smackx/pubsub/FormNode;-><init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Ljava/lang/String;Lorg/jivesoftware/smackx/Form;)V

    return-object v2
.end method
