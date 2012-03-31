.class public Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider;
.super Ljava/lang/Object;
.source "OfferRevokeProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    const/4 v8, 0x2

    .line 88
    const-string v0, ""

    const-string v1, "jid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, userJID:Ljava/lang/String;
    move-object v3, v2

    .line 91
    .local v3, userID:Ljava/lang/String;
    const/4 v4, 0x0

    .line 92
    .local v4, reason:Ljava/lang/String;
    const/4 v5, 0x0

    .line 93
    .local v5, sessionID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 95
    .local v6, done:Z
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 113
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;-><init>(Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 96
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 98
    .local v7, eventType:I
    if-ne v7, v8, :cond_2

    .line 99
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 101
    :cond_2
    if-ne v7, v8, :cond_3

    .line 102
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 104
    :cond_3
    if-ne v7, v8, :cond_4

    .line 105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 107
    :cond_4
    const/4 v0, 0x3

    if-ne v7, v0, :cond_0

    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offer-revoke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v6, 0x1

    goto :goto_0
.end method
