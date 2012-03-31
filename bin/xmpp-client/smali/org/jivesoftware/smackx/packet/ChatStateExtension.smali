.class public Lorg/jivesoftware/smackx/packet/ChatStateExtension;
.super Ljava/lang/Object;
.source "ChatStateExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;
    }
.end annotation


# instance fields
.field private final state:Lorg/jivesoftware/smackx/ChatState;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/ChatState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/ChatStateExtension;->state:Lorg/jivesoftware/smackx/ChatState;

    .line 63
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/ChatStateExtension;->state:Lorg/jivesoftware/smackx/ChatState;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/ChatState;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "http://jabber.org/protocol/chatstates"

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/ChatStateExtension;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/ChatStateExtension;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
