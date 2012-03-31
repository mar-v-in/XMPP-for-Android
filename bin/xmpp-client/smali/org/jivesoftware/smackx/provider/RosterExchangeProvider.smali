.class public Lorg/jivesoftware/smackx/provider/RosterExchangeProvider;
.super Ljava/lang/Object;
.source "RosterExchangeProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v6, Lorg/jivesoftware/smackx/packet/RosterExchange;

    invoke-direct {v6}, Lorg/jivesoftware/smackx/packet/RosterExchange;-><init>()V

    .line 61
    .local v6, rosterExchange:Lorg/jivesoftware/smackx/packet/RosterExchange;
    const/4 v0, 0x0

    .line 62
    .local v0, done:Z
    const/4 v5, 0x0

    .line 63
    .local v5, remoteRosterEntry:Lorg/jivesoftware/smackx/RemoteRosterEntry;
    const-string v3, ""

    .line 64
    .local v3, jid:Ljava/lang/String;
    const-string v4, ""

    .line 65
    .local v4, name:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, groupsName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 92
    return-object v6

    .line 67
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 68
    .local v1, eventType:I
    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    .line 69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #groupsName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .restart local v2       #groupsName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ""

    const-string v8, "jid"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string v7, ""

    const-string v8, "name"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "group"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_3
    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    .line 80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 82
    new-instance v5, Lorg/jivesoftware/smackx/RemoteRosterEntry;

    .line 83
    .end local v5           #remoteRosterEntry:Lorg/jivesoftware/smackx/RemoteRosterEntry;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 82
    invoke-direct {v5, v3, v4, v7}, Lorg/jivesoftware/smackx/RemoteRosterEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    .restart local v5       #remoteRosterEntry:Lorg/jivesoftware/smackx/RemoteRosterEntry;
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smackx/packet/RosterExchange;->addRosterEntry(Lorg/jivesoftware/smackx/RemoteRosterEntry;)V

    .line 86
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method
