.class public Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;
.super Ljava/lang/Object;
.source "ItemProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 11
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    .line 40
    const-string v8, "id"

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, id:Ljava/lang/String;
    const-string v8, "node"

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, node:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, elem:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 46
    .local v7, tag:I
    if-ne v7, v9, :cond_0

    .line 47
    new-instance v8, Lorg/jivesoftware/smackx/pubsub/Item;

    invoke-direct {v8, v2, v3}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-object v8

    .line 49
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, payloadElemName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, payloadNS:Ljava/lang/String;
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lorg/jivesoftware/smack/provider/ProviderManager;->getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, done:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v6, payloadText:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 70
    new-instance v8, Lorg/jivesoftware/smackx/pubsub/PayloadItem;

    .line 71
    new-instance v9, Lorg/jivesoftware/smackx/pubsub/SimplePayload;

    .line 72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-direct {v9, v4, v5, v10}, Lorg/jivesoftware/smackx/pubsub/SimplePayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {v8, v2, v3, v9}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 58
    :cond_2
    if-ne v7, v9, :cond_4

    .line 59
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 60
    const/4 v0, 0x1

    .line 66
    :cond_3
    :goto_2
    if-nez v0, :cond_1

    .line 67
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_1

    .line 61
    :cond_4
    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v8

    if-nez v8, :cond_3

    .line 63
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 74
    .end local v0           #done:Z
    .end local v6           #payloadText:Ljava/lang/StringBuilder;
    :cond_6
    new-instance v8, Lorg/jivesoftware/smackx/pubsub/PayloadItem;

    .line 75
    invoke-static {v4, v5, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v9

    .line 74
    invoke-direct {v8, v2, v3, v9}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0
.end method
