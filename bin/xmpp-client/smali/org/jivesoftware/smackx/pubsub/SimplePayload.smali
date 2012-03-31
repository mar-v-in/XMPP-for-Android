.class public Lorg/jivesoftware/smackx/pubsub/SimplePayload;
.super Ljava/lang/Object;
.source "SimplePayload.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# instance fields
.field private final elemName:Ljava/lang/String;

.field private final ns:Ljava/lang/String;

.field private final payload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "elementName"
    .parameter "namespace"
    .parameter "xmlPayload"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->elemName:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->payload:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->ns:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->elemName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->ns:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "payload ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/SimplePayload;->payload:Ljava/lang/String;

    return-object v0
.end method
