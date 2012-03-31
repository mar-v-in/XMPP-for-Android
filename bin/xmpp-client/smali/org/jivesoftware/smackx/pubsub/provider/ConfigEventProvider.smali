.class public Lorg/jivesoftware/smackx/pubsub/provider/ConfigEventProvider;
.super Lorg/jivesoftware/smackx/provider/EmbeddedExtensionProvider;
.source "ConfigEventProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
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
    .line 39
    .local p3, attMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, content:Ljava/util/List;,"Ljava/util/List<+Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;

    const-string v0, "node"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 42
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;

    const-string v0, "node"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    new-instance v3, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-direct {v3, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 42
    invoke-direct {v2, v0, v3}, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/ConfigureForm;)V

    move-object v0, v2

    goto :goto_0
.end method
