.class public Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties$InternalProvider;
.super Ljava/lang/Object;
.source "WorkgroupProperties.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
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

    .line 36
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 37
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 38
    const-string v4, "Parser not in proper position, or bad XML."

    .line 37
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;-><init>()V

    .line 43
    .local v2, props:Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
    const/4 v0, 0x0

    .line 45
    .local v0, done:Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 63
    return-object v2

    .line 46
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 47
    .local v1, eventType:I
    if-ne v1, v5, :cond_3

    .line 48
    const-string v3, "authRequired"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    new-instance v3, Ljava/lang/Boolean;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 49
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setAuthRequired(Z)V

    goto :goto_0

    .line 51
    :cond_3
    if-ne v1, v5, :cond_4

    .line 52
    const-string v3, "email"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_4
    if-ne v1, v5, :cond_5

    .line 55
    const-string v3, "name"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setFullName(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_5
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 58
    const-string v3, "workgroup-properties"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method
