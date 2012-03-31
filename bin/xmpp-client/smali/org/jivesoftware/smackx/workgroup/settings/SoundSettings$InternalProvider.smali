.class public Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings$InternalProvider;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;
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
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 36
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 37
    const-string v4, "Parser not in proper position, or bad XML."

    .line 36
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 40
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;-><init>()V

    .line 42
    .local v2, soundSettings:Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;
    const/4 v0, 0x0

    .line 44
    .local v0, done:Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 58
    return-object v2

    .line 45
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 46
    .local v1, eventType:I
    if-ne v1, v5, :cond_3

    .line 47
    const-string v3, "outgoingSound"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->setOutgoingSound(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_3
    if-ne v1, v5, :cond_4

    .line 50
    const-string v3, "incomingSound"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->setIncomingSound(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_4
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 53
    const-string v3, "sound-settings"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method
