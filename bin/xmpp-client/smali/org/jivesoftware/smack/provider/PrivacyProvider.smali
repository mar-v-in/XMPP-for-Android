.class public Lorg/jivesoftware/smack/provider/PrivacyProvider;
.super Ljava/lang/Object;
.source "PrivacyProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 27
    new-instance v4, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v4}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 32
    .local v4, privacy:Lorg/jivesoftware/smack/packet/Privacy;
    new-instance v5, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/Privacy;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, done:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 64
    return-object v4

    .line 36
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 37
    .local v3, eventType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 39
    const-string v5, ""

    .line 40
    const-string v6, "name"

    .line 39
    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, activeName:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 42
    invoke-virtual {v4, v8}, Lorg/jivesoftware/smack/packet/Privacy;->setDeclineActiveList(Z)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v4, v0}, Lorg/jivesoftware/smack/packet/Privacy;->setActiveName(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v0           #activeName:Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 47
    const-string v5, ""

    .line 48
    const-string v6, "name"

    .line 47
    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, defaultName:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 50
    invoke-virtual {v4, v8}, Lorg/jivesoftware/smack/packet/Privacy;->setDeclineDefaultList(Z)V

    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setDefaultName(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v1           #defaultName:Ljava/lang/String;
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {p0, p1, v4}, Lorg/jivesoftware/smack/provider/PrivacyProvider;->parseList(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/packet/Privacy;)V

    goto :goto_0

    .line 57
    :cond_6
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "query"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PrivacyItem;
    .locals 11
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, done:Z
    const-string v8, ""

    const-string v9, "action"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, actionValue:Ljava/lang/String;
    const-string v8, ""

    const-string v9, "order"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, orderValue:Ljava/lang/String;
    const-string v8, ""

    const-string v9, "type"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, type:Ljava/lang/String;
    const/4 v1, 0x1

    .line 80
    .local v1, allow:Z
    const-string v8, "allow"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 81
    const/4 v1, 0x1

    .line 86
    :cond_0
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 89
    .local v5, order:I
    new-instance v4, Lorg/jivesoftware/smack/packet/PrivacyItem;

    invoke-direct {v4, v7, v1, v5}, Lorg/jivesoftware/smack/packet/PrivacyItem;-><init>(Ljava/lang/String;ZI)V

    .line 90
    .local v4, item:Lorg/jivesoftware/smack/packet/PrivacyItem;
    const-string v8, ""

    const-string v9, "value"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setValue(Ljava/lang/String;)V

    .line 92
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 113
    return-object v4

    .line 82
    .end local v4           #item:Lorg/jivesoftware/smack/packet/PrivacyItem;
    .end local v5           #order:I
    :cond_2
    const-string v8, "deny"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    const/4 v1, 0x0

    goto :goto_0

    .line 93
    .restart local v4       #item:Lorg/jivesoftware/smack/packet/PrivacyItem;
    .restart local v5       #order:I
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 94
    .local v3, eventType:I
    const/4 v8, 0x2

    if-ne v3, v8, :cond_7

    .line 95
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "iq"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 96
    invoke-virtual {v4, v10}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setFilterIQ(Z)V

    .line 98
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "message"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 99
    invoke-virtual {v4, v10}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setFilterMessage(Z)V

    .line 101
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "presence-in"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 102
    invoke-virtual {v4, v10}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setFilterPresence_in(Z)V

    .line 104
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "presence-out"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 105
    invoke-virtual {v4, v10}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setFilterPresence_out(Z)V

    goto :goto_1

    .line 107
    :cond_7
    const/4 v8, 0x3

    if-ne v3, v8, :cond_1

    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 109
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public parseList(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/packet/Privacy;)V
    .locals 6
    .parameter "parser"
    .parameter "privacy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, done:Z
    const-string v4, ""

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, listName:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p2, v3, v2}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 136
    return-void

    .line 123
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 124
    .local v1, eventType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/provider/PrivacyProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PrivacyItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_2
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    const/4 v0, 0x1

    goto :goto_0
.end method
