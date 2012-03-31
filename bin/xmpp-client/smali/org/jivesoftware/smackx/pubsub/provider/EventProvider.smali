.class public Lorg/jivesoftware/smackx/pubsub/provider/EventProvider;
.super Lorg/jivesoftware/smackx/provider/EmbeddedExtensionProvider;
.source "EventProvider.java"


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
    .locals 4
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
    .local p3, attMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, content:Ljava/util/List;,"Ljava/util/List<+Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    const/4 v3, 0x0

    .line 38
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/EventElement;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 39
    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/EventElementType;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/EventElementType;

    move-result-object v2

    .line 39
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 38
    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smackx/pubsub/EventElement;-><init>(Lorg/jivesoftware/smackx/pubsub/EventElementType;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)V

    return-object v1
.end method
