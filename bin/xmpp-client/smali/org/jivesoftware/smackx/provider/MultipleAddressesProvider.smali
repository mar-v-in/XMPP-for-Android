.class public Lorg/jivesoftware/smackx/provider/MultipleAddressesProvider;
.super Ljava/lang/Object;
.source "MultipleAddressesProvider.java"

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
    .locals 12
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v7, 0x0

    .line 46
    .local v7, done:Z
    new-instance v0, Lorg/jivesoftware/smackx/packet/MultipleAddresses;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;-><init>()V

    .line 47
    .local v0, multipleAddresses:Lorg/jivesoftware/smackx/packet/MultipleAddresses;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 68
    return-object v0

    .line 48
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 49
    .local v8, eventType:I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "address"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 51
    const-string v9, ""

    const-string v10, "type"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, type:Ljava/lang/String;
    const-string v9, ""

    const-string v10, "jid"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, jid:Ljava/lang/String;
    const-string v9, ""

    const-string v10, "node"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, node:Ljava/lang/String;
    const-string v9, ""

    const-string v10, "desc"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, desc:Ljava/lang/String;
    const-string v9, "true"

    .line 56
    const-string v10, ""

    const-string v11, "delivered"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 55
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 57
    .local v5, delivered:Z
    const-string v9, ""

    const-string v10, "uri"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, uri:Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v1           #type:Ljava/lang/String;
    .end local v2           #jid:Ljava/lang/String;
    .end local v3           #node:Ljava/lang/String;
    .end local v4           #desc:Ljava/lang/String;
    .end local v5           #delivered:Z
    .end local v6           #uri:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->getElementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 64
    const/4 v7, 0x1

    goto :goto_0
.end method
