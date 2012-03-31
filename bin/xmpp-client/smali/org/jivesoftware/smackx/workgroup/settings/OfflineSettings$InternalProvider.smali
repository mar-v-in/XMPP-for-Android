.class public Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings$InternalProvider;
.super Ljava/lang/Object;
.source "OfflineSettings.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
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
    .locals 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v9, :cond_0

    .line 36
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 37
    const-string v8, "Parser not in proper position, or bad XML."

    .line 36
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 40
    :cond_0
    new-instance v3, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;-><init>()V

    .line 42
    .local v3, offlineSettings:Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;
    const/4 v0, 0x0

    .line 43
    .local v0, done:Z
    const/4 v5, 0x0

    .line 44
    .local v5, redirectPage:Ljava/lang/String;
    const/4 v6, 0x0

    .line 45
    .local v6, subject:Ljava/lang/String;
    const/4 v4, 0x0

    .line 46
    .local v4, offlineText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 48
    .local v1, emailAddress:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setEmailAddress(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, v5}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setRedirectURL(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3, v6}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setSubject(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setOfflineText(Ljava/lang/String;)V

    .line 72
    return-object v3

    .line 49
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 50
    .local v2, eventType:I
    if-ne v2, v9, :cond_3

    .line 51
    const-string v7, "redirectPage"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 53
    :cond_3
    if-ne v2, v9, :cond_4

    .line 54
    const-string v7, "subject"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 56
    :cond_4
    if-ne v2, v9, :cond_5

    .line 57
    const-string v7, "offlineText"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 59
    :cond_5
    if-ne v2, v9, :cond_6

    .line 60
    const-string v7, "emailAddress"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_6
    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    .line 63
    const-string v7, "offline-settings"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method
