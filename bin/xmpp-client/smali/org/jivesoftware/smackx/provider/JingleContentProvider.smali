.class public Lorg/jivesoftware/smackx/provider/JingleContentProvider;
.super Ljava/lang/Object;
.source "JingleContentProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, result:Lorg/jivesoftware/smack/packet/PacketExtension;
    const-string v3, ""

    .line 51
    const-string v4, "creator"

    .line 50
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, creator:Ljava/lang/String;
    const-string v3, ""

    const-string v4, "name"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, name:Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/packet/JingleContent;

    .end local v2           #result:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-direct {v2, v0, v1}, Lorg/jivesoftware/smackx/packet/JingleContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .restart local v2       #result:Lorg/jivesoftware/smack/packet/PacketExtension;
    return-object v2
.end method
