.class public Lorg/jivesoftware/smackx/pubsub/provider/ItemsProvider;
.super Lorg/jivesoftware/smackx/provider/EmbeddedExtensionProvider;
.source "ItemsProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/EmbeddedExtensionProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected createReturnExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 3
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
    .line 37
    .local p3, attributeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, content:Ljava/util/List;,"Ljava/util/List<+Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->items:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    .line 38
    const-string v0, "node"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-direct {v1, v2, v0, p4}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method
