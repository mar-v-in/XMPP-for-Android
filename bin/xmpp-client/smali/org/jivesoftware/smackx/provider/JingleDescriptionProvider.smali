.class public abstract Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider;
.super Ljava/lang/Object;
.source "JingleDescriptionProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider$Audio;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method protected abstract getInstance()Lorg/jivesoftware/smackx/packet/JingleDescription;
.end method

.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, done:Z
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider;->getInstance()Lorg/jivesoftware/smackx/packet/JingleDescription;

    move-result-object v0

    .line 104
    .local v0, desc:Lorg/jivesoftware/smackx/packet/JingleDescription;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 121
    return-object v0

    .line 105
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 106
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 109
    const-string v4, "payload-type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider;->parsePayload(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/packet/JingleDescription;->addPayloadType(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    goto :goto_0

    .line 112
    :cond_2
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknow element \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 113
    const-string v6, "\" in content."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_3
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 116
    const-string v4, "description"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected parsePayload(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, ptId:I
    const/4 v0, 0x0

    .line 139
    .local v0, ptChannels:I
    :try_start_0
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 143
    :goto_0
    const-string v3, ""

    const-string v4, "name"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, ptName:Ljava/lang/String;
    :try_start_1
    const-string v3, ""

    .line 147
    const-string v4, "channels"

    .line 146
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 151
    :goto_1
    new-instance v3, Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    invoke-direct {v3, v1, v2, v0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>(ILjava/lang/String;I)V

    return-object v3

    .line 148
    :catch_0
    move-exception v3

    goto :goto_1

    .line 140
    .end local v2           #ptName:Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
