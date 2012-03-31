.class public Lorg/jivesoftware/smackx/provider/MUCAdminProvider;
.super Ljava/lang/Object;
.source "MUCAdminProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, done:Z
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    .line 58
    const-string v3, ""

    const-string v4, "affiliation"

    .line 57
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    const-string v4, ""

    const-string v5, "role"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    const-string v3, ""

    const-string v4, "nick"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->setNick(Ljava/lang/String;)V

    .line 60
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->setJid(Ljava/lang/String;)V

    .line 61
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 76
    return-object v2

    .line 62
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 63
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 64
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "actor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->setActor(Ljava/lang/String;)V

    .line 67
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
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
    .line 37
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCAdmin;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCAdmin;-><init>()V

    .line 38
    .local v2, mucAdmin:Lorg/jivesoftware/smackx/packet/MUCAdmin;
    const/4 v0, 0x0

    .line 39
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 52
    return-object v2

    .line 40
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 41
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCAdminProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V

    goto :goto_0

    .line 45
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    const/4 v0, 0x1

    goto :goto_0
.end method
