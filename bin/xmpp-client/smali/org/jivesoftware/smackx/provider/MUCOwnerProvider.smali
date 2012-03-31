.class public Lorg/jivesoftware/smackx/provider/MUCOwnerProvider;
.super Ljava/lang/Object;
.source "MUCOwnerProvider.java"

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

.method private parseDestroy(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, done:Z
    new-instance v0, Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;-><init>()V

    .line 40
    .local v0, destroy:Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;->setJid(Ljava/lang/String;)V

    .line 41
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    return-object v0

    .line 42
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 43
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 44
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "destroy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCOwner$Item;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, done:Z
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;

    .line 87
    const-string v3, ""

    const-string v4, "affiliation"

    .line 86
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCOwner$Item;
    const-string v3, ""

    const-string v4, "nick"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->setNick(Ljava/lang/String;)V

    .line 89
    const-string v3, ""

    const-string v4, "role"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->setRole(Ljava/lang/String;)V

    .line 90
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->setJid(Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 106
    return-object v2

    .line 92
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 93
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "actor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->setActor(Ljava/lang/String;)V

    .line 97
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCOwner;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCOwner;-><init>()V

    .line 59
    .local v2, mucOwner:Lorg/jivesoftware/smackx/packet/MUCOwner;
    const/4 v0, 0x0

    .line 60
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 81
    return-object v2

    .line 61
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 62
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCOwnerProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCOwner$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner;->addItem(Lorg/jivesoftware/smackx/packet/MUCOwner$Item;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "destroy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCOwnerProvider;->parseDestroy(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setDestroy(Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v3, v4, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 74
    :cond_4
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const/4 v0, 0x1

    goto :goto_0
.end method
