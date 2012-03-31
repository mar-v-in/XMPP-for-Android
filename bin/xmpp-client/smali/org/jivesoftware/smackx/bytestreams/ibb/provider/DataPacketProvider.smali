.class public Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;
.super Ljava/lang/Object;
.source "DataPacketProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const-string v4, ""

    const-string v5, "sid"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, sessionID:Ljava/lang/String;
    const-string v4, ""

    const-string v5, "seq"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 37
    .local v1, seq:J
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, data:Ljava/lang/String;
    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    invoke-direct {v4, v3, v1, v2, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v4
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    .line 44
    .local v0, data:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;)V

    .line 45
    .local v1, iq:Lorg/jivesoftware/smack/packet/IQ;
    return-object v1
.end method
