.class public Lorg/jivesoftware/smackx/jingle/nat/STUN$Provider;
.super Ljava/lang/Object;
.source "STUN.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/STUN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
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
    .line 69
    const/4 v0, 0x0

    .line 73
    .local v0, done:Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    const-string v8, "google:jingleinfo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 74
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Not a STUN packet"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 77
    :cond_0
    new-instance v5, Lorg/jivesoftware/smackx/jingle/nat/STUN;

    invoke-direct {v5}, Lorg/jivesoftware/smackx/jingle/nat/STUN;-><init>()V

    .line 80
    .local v5, iq:Lorg/jivesoftware/smackx/jingle/nat/STUN;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 116
    return-object v5

    .line 81
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 82
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, elementName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 85
    const/4 v7, 0x2

    if-ne v2, v7, :cond_9

    .line 86
    const-string v7, "server"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, host:Ljava/lang/String;
    const/4 v6, 0x0

    .line 89
    .local v6, port:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-lt v4, v7, :cond_3

    .line 96
    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    .line 97
    #getter for: Lorg/jivesoftware/smackx/jingle/nat/STUN;->servers:Ljava/util/List;
    invoke-static {v5}, Lorg/jivesoftware/smackx/jingle/nat/STUN;->access$0(Lorg/jivesoftware/smackx/jingle/nat/STUN;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lorg/jivesoftware/smackx/jingle/nat/STUN$StunServerAddress;

    invoke-direct {v8, v3, v6}, Lorg/jivesoftware/smackx/jingle/nat/STUN$StunServerAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_3
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "host"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 91
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 92
    :cond_5
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "udp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 99
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #port:Ljava/lang/String;
    :cond_6
    const-string v7, "publicip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    const/4 v3, 0x0

    .line 101
    .restart local v3       #host:Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-lt v4, v7, :cond_7

    .line 106
    if-eqz v3, :cond_1

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 107
    #calls: Lorg/jivesoftware/smackx/jingle/nat/STUN;->setPublicIp(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lorg/jivesoftware/smackx/jingle/nat/STUN;->access$1(Lorg/jivesoftware/smackx/jingle/nat/STUN;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_7
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 103
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 110
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #i:I
    :cond_9
    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    .line 111
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "query"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
