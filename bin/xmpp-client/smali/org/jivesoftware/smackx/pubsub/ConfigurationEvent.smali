.class public Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "ConfigurationEvent.java"

# interfaces
.implements Lorg/jivesoftware/smackx/pubsub/EmbeddedPacketExtension;


# instance fields
.field private form:Lorg/jivesoftware/smackx/pubsub/ConfigureForm;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "nodeId"

    .prologue
    .line 34
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURATION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/ConfigureForm;)V
    .locals 1
    .parameter "nodeId"
    .parameter "configForm"

    .prologue
    .line 38
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURATION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;->form:Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    .line 40
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/jivesoftware/smackx/pubsub/ConfigureForm;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;->form:Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 3
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
    .line 48
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;->getConfiguration()Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/PacketExtension;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ConfigurationEvent;->getConfiguration()Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
