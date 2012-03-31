.class public Lorg/jivesoftware/smackx/provider/MUCUserProvider;
.super Ljava/lang/Object;
.source "MUCUserProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private parseDecline(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Decline;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, done:Z
    new-instance v0, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;-><init>()V

    .line 46
    .local v0, decline:Lorg/jivesoftware/smackx/packet/MUCUser$Decline;
    const-string v3, ""

    const-string v4, "from"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setFrom(Ljava/lang/String;)V

    .line 47
    const-string v3, ""

    const-string v4, "to"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setTo(Ljava/lang/String;)V

    .line 48
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 60
    return-object v0

    .line 49
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 50
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private parseDestroy(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, done:Z
    new-instance v0, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;-><init>()V

    .line 66
    .local v0, destroy:Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->setJid(Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 79
    return-object v0

    .line 68
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 69
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 70
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "destroy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private parseInvite(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, done:Z
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;-><init>()V

    .line 132
    .local v2, invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    const-string v3, ""

    const-string v4, "from"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->setFrom(Ljava/lang/String;)V

    .line 133
    const-string v3, ""

    const-string v4, "to"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->setTo(Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 146
    return-object v2

    .line 135
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 136
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "invite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Item;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, done:Z
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    const-string v3, ""

    .line 152
    const-string v4, "affiliation"

    .line 151
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    const-string v4, ""

    const-string v5, "role"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCUser$Item;
    const-string v3, ""

    const-string v4, "nick"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->setNick(Ljava/lang/String;)V

    .line 154
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->setJid(Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 170
    return-object v2

    .line 156
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 157
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "actor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->setActor(Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 165
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    const/4 v0, 0x1

    goto :goto_0
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
    .line 95
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCUser;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;-><init>()V

    .line 96
    .local v2, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    const/4 v0, 0x0

    .line 97
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 126
    return-object v2

    .line 98
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 99
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 100
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "invite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;->parseInvite(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setInvite(Lorg/jivesoftware/smackx/packet/MUCUser$Invite;)V

    .line 103
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setItem(Lorg/jivesoftware/smackx/packet/MUCUser$Item;)V

    .line 106
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setPassword(Ljava/lang/String;)V

    .line 109
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 110
    new-instance v3, Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    .line 111
    const-string v4, ""

    const-string v5, "code"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/packet/MUCUser$Status;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setStatus(Lorg/jivesoftware/smackx/packet/MUCUser$Status;)V

    .line 113
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;->parseDecline(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setDecline(Lorg/jivesoftware/smackx/packet/MUCUser$Decline;)V

    .line 116
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "destroy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;->parseDestroy(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->setDestroy(Lorg/jivesoftware/smackx/packet/MUCUser$Destroy;)V

    goto/16 :goto_0

    .line 119
    :cond_7
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
