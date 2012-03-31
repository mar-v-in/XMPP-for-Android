.class public Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "PubSub.java"


# instance fields
.field private ns:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 29
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->BASIC:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->ns:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    .line 28
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtensionsXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "pubsub"

    return-object v0
.end method

.method public getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 2
    .parameter "elem"

    .prologue
    .line 69
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->ns:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPubSubNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->ns:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    return-object v0
.end method

.method public setPubSubNamespace(Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V
    .locals 0
    .parameter "ns"

    .prologue
    .line 109
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->ns:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    .line 110
    return-void
.end method
