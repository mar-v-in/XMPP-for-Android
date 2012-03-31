.class public Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataIQProvider;
.super Ljava/lang/Object;
.source "PrivateDataManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/PrivateDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateDataIQProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 13
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v8, 0x0

    .line 71
    .local v8, privateData:Lorg/jivesoftware/smackx/packet/PrivateData;
    const/4 v1, 0x0

    .line 72
    .local v1, done:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 122
    new-instance v11, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;

    invoke-direct {v11, v8}, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;-><init>(Lorg/jivesoftware/smackx/packet/PrivateData;)V

    return-object v11

    .line 73
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 74
    .local v4, eventType:I
    const/4 v11, 0x2

    if-ne v4, v11, :cond_7

    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, elementName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, namespace:Ljava/lang/String;
    invoke-static {v2, v7}, Lorg/jivesoftware/smackx/PrivateDataManager;->getPrivateDataProvider(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/provider/PrivateDataProvider;

    move-result-object v9

    .line 82
    .local v9, provider:Lorg/jivesoftware/smackx/provider/PrivateDataProvider;
    if-eqz v9, :cond_2

    .line 83
    invoke-interface {v9, p1}, Lorg/jivesoftware/smackx/provider/PrivateDataProvider;->parsePrivateData(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/PrivateData;

    move-result-object v8

    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Lorg/jivesoftware/smackx/packet/DefaultPrivateData;

    invoke-direct {v0, v2, v7}, Lorg/jivesoftware/smackx/packet/DefaultPrivateData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v0, data:Lorg/jivesoftware/smackx/packet/DefaultPrivateData;
    const/4 v5, 0x0

    .line 91
    .local v5, finished:Z
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 114
    move-object v8, v0

    goto :goto_0

    .line 92
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 93
    .local v3, event:I
    const/4 v11, 0x2

    if-ne v3, v11, :cond_6

    .line 94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, name:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 98
    const-string v11, ""

    invoke-virtual {v0, v6, v11}, Lorg/jivesoftware/smackx/packet/DefaultPrivateData;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 103
    const/4 v11, 0x4

    if-ne v3, v11, :cond_3

    .line 104
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, value:Ljava/lang/String;
    invoke-virtual {v0, v6, v10}, Lorg/jivesoftware/smackx/packet/DefaultPrivateData;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    .end local v6           #name:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x3

    if-ne v3, v11, :cond_3

    .line 109
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 110
    const/4 v5, 0x1

    goto :goto_1

    .line 116
    .end local v0           #data:Lorg/jivesoftware/smackx/packet/DefaultPrivateData;
    .end local v2           #elementName:Ljava/lang/String;
    .end local v3           #event:I
    .end local v5           #finished:Z
    .end local v7           #namespace:Ljava/lang/String;
    .end local v9           #provider:Lorg/jivesoftware/smackx/provider/PrivateDataProvider;
    :cond_7
    const/4 v11, 0x3

    if-ne v4, v11, :cond_0

    .line 117
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "query"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 118
    const/4 v1, 0x1

    goto :goto_0
.end method
