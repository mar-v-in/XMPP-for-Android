.class public Lorg/jivesoftware/smackx/pubsub/provider/RetractEventProvider;
.super Lorg/jivesoftware/smackx/provider/EmbeddedExtensionProvider;
.source "RetractEventProvider.java"


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
    .locals 2
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
    .line 36
    .local p3, attributeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, content:Ljava/util/List;,"Ljava/util/List<+Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/RetractItem;

    const-string v0, "id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/pubsub/RetractItem;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
