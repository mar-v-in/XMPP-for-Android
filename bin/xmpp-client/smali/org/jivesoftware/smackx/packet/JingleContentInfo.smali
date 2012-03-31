.class public Lorg/jivesoftware/smackx/packet/JingleContentInfo;
.super Ljava/lang/Object;
.source "JingleContentInfo.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio;
    }
.end annotation


# instance fields
.field protected mediaInfoElement:Lorg/jivesoftware/smackx/jingle/media/ContentInfo;

.field private namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/packet/JingleContentInfo;-><init>(Lorg/jivesoftware/smackx/jingle/media/ContentInfo;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/media/ContentInfo;)V
    .locals 0
    .parameter "mediaInfoElement"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/JingleContentInfo;->mediaInfoElement:Lorg/jivesoftware/smackx/jingle/media/ContentInfo;

    .line 117
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleContentInfo;->getMediaInfo()Lorg/jivesoftware/smackx/jingle/media/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaInfo()Lorg/jivesoftware/smackx/jingle/media/ContentInfo;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleContentInfo;->mediaInfoElement:Lorg/jivesoftware/smackx/jingle/media/ContentInfo;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleContentInfo;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method protected setNamespace(Ljava/lang/String;)V
    .locals 0
    .parameter "ns"

    .prologue
    .line 152
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/JingleContentInfo;->namespace:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleContentInfo;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleContentInfo;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
