.class public abstract Lorg/jivesoftware/smackx/provider/JingleContentDescriptionProvider;
.super Ljava/lang/Object;
.source "JingleContentDescriptionProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/provider/JingleContentDescriptionProvider$Audio;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method protected abstract getInstance()Lorg/jivesoftware/smackx/packet/JingleContentDescription;
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
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, done:Z
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/provider/JingleContentDescriptionProvider;->getInstance()Lorg/jivesoftware/smackx/packet/JingleContentDescription;

    move-result-object v0

    .line 106
    .local v0, desc:Lorg/jivesoftware/smackx/packet/JingleContentDescription;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 123
    return-object v0

    .line 107
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 108
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 111
    const-string v4, "payload-type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/provider/JingleContentDescriptionProvider;->parsePayload(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/packet/JingleContentDescription;->addJinglePayloadType(Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;)V

    goto :goto_0

    .line 114
    :cond_2
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknow element \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 115
    const-string v6, "\" in content."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_3
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 118
    const-string v4, "description"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected parsePayload(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, ptId:I
    const/4 v0, 0x0

    .line 141
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

    .line 145
    :goto_0
    const-string v3, ""

    const-string v4, "name"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, ptName:Ljava/lang/String;
    :try_start_1
    const-string v3, ""

    .line 149
    const-string v4, "channels"

    .line 148
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 153
    :goto_1
    new-instance v3, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;

    new-instance v4, Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    invoke-direct {v4, v1, v2, v0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>(ILjava/lang/String;I)V

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;-><init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    return-object v3

    .line 150
    :catch_0
    move-exception v3

    goto :goto_1

    .line 142
    .end local v2           #ptName:Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
