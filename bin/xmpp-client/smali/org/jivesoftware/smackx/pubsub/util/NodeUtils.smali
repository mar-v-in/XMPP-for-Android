.class public Lorg/jivesoftware/smackx/pubsub/util/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormFromPacket(Lorg/jivesoftware/smack/packet/Packet;Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smackx/pubsub/ConfigureForm;
    .locals 4
    .parameter "packet"
    .parameter "elem"

    .prologue
    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/FormNode;

    .line 39
    .local v0, config:Lorg/jivesoftware/smackx/pubsub/FormNode;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getForm()Lorg/jivesoftware/smackx/Form;

    move-result-object v1

    .line 40
    .local v1, formReply:Lorg/jivesoftware/smackx/Form;
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smackx/pubsub/ConfigureForm;-><init>(Lorg/jivesoftware/smackx/Form;)V

    return-object v2
.end method
