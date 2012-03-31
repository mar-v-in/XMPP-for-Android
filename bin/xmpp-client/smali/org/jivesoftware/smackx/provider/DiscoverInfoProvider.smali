.class public Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;
.super Ljava/lang/Object;
.source "DiscoverInfoProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 39
    .local v1, discoverInfo:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const/4 v2, 0x0

    .line 40
    .local v2, done:Z
    const/4 v4, 0x0

    .line 41
    .local v4, identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    const-string v0, ""

    .line 42
    .local v0, category:Ljava/lang/String;
    const-string v5, ""

    .line 43
    .local v5, name:Ljava/lang/String;
    const-string v6, ""

    .line 44
    .local v6, type:Ljava/lang/String;
    const-string v7, ""

    .line 45
    .local v7, variable:Ljava/lang/String;
    const-string v8, ""

    const-string v9, "node"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 46
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 81
    return-object v1

    .line 47
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 48
    .local v3, eventType:I
    const/4 v8, 0x2

    if-ne v3, v8, :cond_4

    .line 49
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "identity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 51
    const-string v8, ""

    const-string v9, "category"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v8, ""

    const-string v9, "name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    const-string v8, ""

    const-string v9, "type"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 54
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "feature"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 56
    const-string v8, ""

    const-string v9, "var"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 61
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v9

    .line 61
    invoke-static {v8, v9, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v8

    .line 60
    invoke-virtual {v1, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 64
    :cond_4
    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    .line 65
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "identity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 67
    new-instance v4, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .end local v4           #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-direct {v4, v0, v5}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .restart local v4       #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-virtual {v4, v6}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->setType(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addIdentity(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V

    .line 71
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "feature"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 73
    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addFeature(Ljava/lang/String;)V

    .line 75
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "query"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
