.class public Lorg/jivesoftware/smackx/packet/JingleError$Provider;
.super Ljava/lang/Object;
.source "JingleError.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/JingleError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# instance fields
.field private audioInfo:Lorg/jivesoftware/smack/packet/PacketExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, result:Lorg/jivesoftware/smack/packet/PacketExtension;
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/JingleError$Provider;->audioInfo:Lorg/jivesoftware/smack/packet/PacketExtension;

    if-eqz v3, :cond_1

    .line 49
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleError$Provider;->audioInfo:Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 60
    :cond_0
    :goto_0
    return-object v2

    .line 51
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, elementName:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/media/ContentInfo$Audio;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/media/ContentInfo;

    move-result-object v1

    .line 56
    .local v1, mi:Lorg/jivesoftware/smackx/jingle/media/ContentInfo;
    if-eqz v1, :cond_0

    .line 57
    new-instance v2, Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio;

    .end local v2           #result:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-direct {v2, v1}, Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio;-><init>(Lorg/jivesoftware/smackx/jingle/media/ContentInfo;)V

    .restart local v2       #result:Lorg/jivesoftware/smack/packet/PacketExtension;
    goto :goto_0
.end method
