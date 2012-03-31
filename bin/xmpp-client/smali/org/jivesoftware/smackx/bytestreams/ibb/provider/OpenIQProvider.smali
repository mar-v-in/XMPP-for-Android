.class public Lorg/jivesoftware/smackx/bytestreams/ibb/provider/OpenIQProvider;
.super Ljava/lang/Object;
.source "OpenIQProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const-string v4, ""

    const-string v5, "sid"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, sessionID:Ljava/lang/String;
    const-string v4, ""

    .line 33
    const-string v5, "block-size"

    .line 32
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    .local v0, blockSize:I
    const-string v4, ""

    const-string v5, "stanza"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, stanzaValue:Ljava/lang/String;
    const/4 v2, 0x0

    .line 37
    .local v2, stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;
    if-nez v3, :cond_0

    .line 38
    sget-object v2, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->IQ:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    .line 43
    :goto_0
    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-direct {v4, v1, v0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;)V

    return-object v4

    .line 40
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    move-result-object v2

    goto :goto_0
.end method
