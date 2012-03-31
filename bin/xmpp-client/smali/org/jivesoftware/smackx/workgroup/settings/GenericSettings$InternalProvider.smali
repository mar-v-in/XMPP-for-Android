.class public Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings$InternalProvider;
.super Ljava/lang/Object;
.source "GenericSettings.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 40
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 41
    const-string v6, "Parser not in proper position, or bad XML."

    .line 40
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 44
    :cond_0
    new-instance v3, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;-><init>()V

    .line 46
    .local v3, setting:Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;
    const/4 v0, 0x0

    .line 48
    .local v0, done:Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 63
    return-object v3

    .line 49
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 50
    .local v1, eventType:I
    if-ne v1, v7, :cond_3

    .line 51
    const-string v5, "entry"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, name:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->getMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 58
    const-string v5, "generic-metadata"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method
