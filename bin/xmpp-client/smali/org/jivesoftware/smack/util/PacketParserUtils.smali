.class public Lorg/jivesoftware/smack/util/PacketParserUtils;
.super Ljava/lang/Object;
.source "PacketParserUtils.java"


# static fields
.field private static final PROPERTIES_NAMESPACE:Ljava/lang/String; = "http://www.jivesoftware.com/xmlns/xmpp/properties"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    .end local p1
    :goto_0
    return-object p1

    .line 81
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 96
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_6
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static getLanguageAttribute(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .parameter "parser"

    .prologue
    .line 103
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 111
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 104
    :cond_0
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, attributeName:Ljava/lang/String;
    const-string v2, "xml:lang"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    const-string v2, "lang"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "xml"

    .line 107
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    :cond_1
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 103
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static parseAuthentication(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Authentication;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lorg/jivesoftware/smack/packet/Authentication;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Authentication;-><init>()V

    .line 117
    .local v0, authentication:Lorg/jivesoftware/smack/packet/Authentication;
    const/4 v1, 0x0

    .line 118
    .local v1, done:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 136
    return-object v0

    .line 119
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 120
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 121
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Authentication;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Authentication;->setPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "digest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 126
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Authentication;->setDigest(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Authentication;->setResource(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 131
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseCompressionMethods(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v3, methods:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 154
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 168
    return-object v3

    .line 155
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 157
    .local v2, eventType:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 158
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, elementName:Ljava/lang/String;
    const-string v4, "method"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v1           #elementName:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 163
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "compression"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static parseContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v0, ""

    .line 185
    .local v0, content:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 186
    .local v1, parserDepth:I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 189
    return-object v0

    .line 187
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 15
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    const-string v9, "urn:ietf:params:xml:ns:xmpp-stanzas"

    .line 203
    .local v9, errorNamespace:Ljava/lang/String;
    const-string v8, "-1"

    .line 204
    .local v8, errorCode:Ljava/lang/String;
    const/4 v14, 0x0

    .line 205
    .local v14, type:Ljava/lang/String;
    const/4 v4, 0x0

    .line 206
    .local v4, message:Ljava/lang/String;
    const/4 v3, 0x0

    .line 207
    .local v3, condition:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v5, extensions:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lt v11, v0, :cond_2

    .line 218
    const/4 v6, 0x0

    .line 220
    .local v6, done:Z
    :cond_0
    :goto_1
    if-eqz v6, :cond_5

    .line 244
    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 246
    .local v2, errorType:Lorg/jivesoftware/smack/packet/XMPPError$Type;
    if-eqz v14, :cond_1

    .line 247
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/XMPPError$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/XMPPError$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 253
    :cond_1
    :goto_2
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILorg/jivesoftware/smack/packet/XMPPError$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 211
    .end local v2           #errorType:Lorg/jivesoftware/smack/packet/XMPPError$Type;
    .end local v6           #done:Z
    :cond_2
    invoke-interface {p0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    const-string v0, ""

    const-string v1, "code"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 214
    :cond_3
    invoke-interface {p0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    const-string v0, ""

    const-string v1, "type"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 210
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 221
    .restart local v6       #done:Z
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 222
    .local v10, eventType:I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_8

    .line 223
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 228
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, elementName:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v13

    .line 230
    .local v13, namespace:Ljava/lang/String;
    const-string v0, "urn:ietf:params:xml:ns:xmpp-stanzas"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    move-object v3, v7

    goto :goto_1

    .line 233
    :cond_7
    invoke-static {v7, v13, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    .end local v7           #elementName:Ljava/lang/String;
    .end local v13           #namespace:Ljava/lang/String;
    :cond_8
    const/4 v0, 0x3

    if-ne v10, v0, :cond_0

    .line 238
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 249
    .end local v10           #eventType:I
    .restart local v2       #errorType:Lorg/jivesoftware/smack/packet/XMPPError$Type;
    :catch_0
    move-exception v12

    .line 251
    .local v12, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2
.end method

.method public static parseIQ(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 13
    .parameter "parser"
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v6, 0x0

    .line 270
    .local v6, iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    const-string v11, ""

    const-string v12, "id"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, id:Ljava/lang/String;
    const-string v11, ""

    const-string v12, "to"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, to:Ljava/lang/String;
    const-string v11, ""

    const-string v12, "from"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, from:Ljava/lang/String;
    const-string v11, ""

    .line 274
    const-string v12, "type"

    .line 273
    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/jivesoftware/smack/packet/IQ$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v10

    .line 275
    .local v10, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    const/4 v2, 0x0

    .line 277
    .local v2, error:Lorg/jivesoftware/smack/packet/XMPPError;
    const/4 v0, 0x0

    .line 278
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 321
    if-nez v6, :cond_b

    .line 322
    sget-object v11, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v11, v10, :cond_1

    sget-object v11, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v11, v10, :cond_a

    .line 328
    :cond_1
    new-instance v6, Lorg/jivesoftware/smack/util/PacketParserUtils$1;

    .end local v6           #iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    invoke-direct {v6}, Lorg/jivesoftware/smack/util/PacketParserUtils$1;-><init>()V

    .line 334
    .restart local v6       #iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v6, v4}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v6, v9}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 337
    sget-object v11, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v6, v11}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 338
    new-instance v11, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 339
    sget-object v12, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v11, v12}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 338
    invoke-virtual {v6, v11}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 340
    invoke-virtual {p1, v6}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 341
    const/4 v11, 0x0

    .line 361
    :goto_1
    return-object v11

    .line 279
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 281
    .local v3, eventType:I
    const/4 v11, 0x2

    if-ne v3, v11, :cond_9

    .line 282
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, elementName:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, namespace:Ljava/lang/String;
    const-string v11, "error"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 285
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v2

    goto :goto_0

    .line 286
    :cond_3
    const-string v11, "query"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 287
    const-string v11, "jabber:iq:auth"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 288
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseAuthentication(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Authentication;

    move-result-object v6

    goto :goto_0

    .line 289
    :cond_4
    const-string v11, "query"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 290
    const-string v11, "jabber:iq:roster"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 291
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseRoster(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/RosterPacket;

    move-result-object v6

    goto :goto_0

    .line 292
    :cond_5
    const-string v11, "query"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 293
    const-string v11, "jabber:iq:register"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 294
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseRegistration(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v6

    goto/16 :goto_0

    .line 295
    :cond_6
    const-string v11, "bind"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 296
    const-string v11, "urn:ietf:params:xml:ns:xmpp-bind"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 297
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseResourceBinding(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Bind;

    move-result-object v6

    goto/16 :goto_0

    .line 302
    :cond_7
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v11

    .line 303
    invoke-virtual {v11, v1, v7}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 304
    .local v8, provider:Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 305
    instance-of v11, v8, Lorg/jivesoftware/smack/provider/IQProvider;

    if-eqz v11, :cond_8

    .line 306
    check-cast v8, Lorg/jivesoftware/smack/provider/IQProvider;

    .end local v8           #provider:Ljava/lang/Object;
    invoke-interface {v8, p0}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v6

    goto/16 :goto_0

    .line 307
    .restart local v8       #provider:Ljava/lang/Object;
    :cond_8
    instance-of v11, v8, Ljava/lang/Class;

    if-eqz v11, :cond_0

    .line 310
    check-cast v8, Ljava/lang/Class;

    .line 309
    .end local v8           #provider:Ljava/lang/Object;
    invoke-static {v1, v8, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v6

    .line 308
    .end local v6           #iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    check-cast v6, Lorg/jivesoftware/smack/packet/IQ;

    .restart local v6       #iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    goto/16 :goto_0

    .line 314
    .end local v1           #elementName:Ljava/lang/String;
    .end local v7           #namespace:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x3

    if-ne v3, v11, :cond_0

    .line 315
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "iq"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 316
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 345
    .end local v3           #eventType:I
    :cond_a
    new-instance v6, Lorg/jivesoftware/smack/util/PacketParserUtils$2;

    .end local v6           #iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    invoke-direct {v6}, Lorg/jivesoftware/smack/util/PacketParserUtils$2;-><init>()V

    .line 355
    .restart local v6       #iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    :cond_b
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v6, v9}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v6, v4}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v6, v10}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 359
    invoke-virtual {v6, v2}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    move-object v11, v6

    .line 361
    goto/16 :goto_1
.end method

.method public static parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v3, mechanisms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 379
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 393
    return-object v3

    .line 380
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 382
    .local v2, eventType:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 383
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, elementName:Ljava/lang/String;
    const-string v4, "mechanism"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    .end local v1           #elementName:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 388
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mechanisms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 19
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v10, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v10}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 407
    .local v10, message:Lorg/jivesoftware/smack/packet/Message;
    const-string v17, ""

    const-string v18, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, id:Ljava/lang/String;
    if-nez v8, :cond_0

    const-string v8, "ID_NOT_AVAILABLE"

    .end local v8           #id:Ljava/lang/String;
    :cond_0
    invoke-virtual {v10, v8}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 409
    const-string v17, ""

    const-string v18, "to"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 410
    const-string v17, ""

    const-string v18, "from"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 411
    const-string v17, ""

    .line 412
    const-string v18, "type"

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/jivesoftware/smack/packet/Message$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 413
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLanguageAttribute(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, language:Ljava/lang/String;
    const/4 v4, 0x0

    .line 417
    .local v4, defaultLanguage:Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v17, ""

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 418
    invoke-virtual {v10, v9}, Lorg/jivesoftware/smack/packet/Message;->setLanguage(Ljava/lang/String;)V

    .line 419
    move-object v4, v9

    .line 428
    :goto_0
    const/4 v5, 0x0

    .line 429
    .local v5, done:Z
    const/4 v15, 0x0

    .line 430
    .local v15, thread:Ljava/lang/String;
    const/4 v13, 0x0

    .line 431
    .local v13, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_1
    if-eqz v5, :cond_4

    .line 481
    invoke-virtual {v10, v15}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 483
    if-eqz v13, :cond_2

    .line 484
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_d

    .line 488
    :cond_2
    return-object v10

    .line 421
    .end local v5           #done:Z
    .end local v13           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15           #thread:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lorg/jivesoftware/smack/packet/Packet;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 432
    .restart local v5       #done:Z
    .restart local v13       #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v15       #thread:Ljava/lang/String;
    :cond_4
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 433
    .local v7, eventType:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v7, v0, :cond_c

    .line 434
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, elementName:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v12

    .line 436
    .local v12, namespace:Ljava/lang/String;
    const-string v17, "subject"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 437
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLanguageAttribute(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v16

    .line 438
    .local v16, xmlLang:Ljava/lang/String;
    if-nez v16, :cond_5

    .line 439
    move-object/from16 v16, v4

    .line 442
    :cond_5
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v14

    .line 444
    .local v14, subject:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/Message;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_1

    .line 445
    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v14}, Lorg/jivesoftware/smack/packet/Message;->addSubject(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Subject;

    goto :goto_1

    .line 447
    .end local v14           #subject:Ljava/lang/String;
    .end local v16           #xmlLang:Ljava/lang/String;
    :cond_6
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 448
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLanguageAttribute(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v16

    .line 449
    .restart local v16       #xmlLang:Ljava/lang/String;
    if-nez v16, :cond_7

    .line 450
    move-object/from16 v16, v4

    .line 453
    :cond_7
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, body:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/Message;->getBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_1

    .line 456
    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v3}, Lorg/jivesoftware/smack/packet/Message;->addBody(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Body;

    goto :goto_1

    .line 458
    .end local v3           #body:Ljava/lang/String;
    .end local v16           #xmlLang:Ljava/lang/String;
    :cond_8
    const-string v17, "thread"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 459
    if-nez v15, :cond_1

    .line 460
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 462
    :cond_9
    const-string v17, "error"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 463
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/Message;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_1

    .line 464
    :cond_a
    const-string v17, "properties"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 465
    const-string v17, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 466
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseProperties(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v13

    goto/16 :goto_1

    .line 471
    :cond_b
    move-object/from16 v0, p0

    invoke-static {v6, v12, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v17

    .line 470
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto/16 :goto_1

    .line 474
    .end local v6           #elementName:Ljava/lang/String;
    .end local v12           #namespace:Ljava/lang/String;
    :cond_c
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v7, v0, :cond_1

    .line 475
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "message"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 476
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 484
    .end local v7           #eventType:I
    :cond_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 485
    .local v11, name:Ljava/lang/String;
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v11, v0}, Lorg/jivesoftware/smack/packet/Message;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public static parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 7
    .parameter "elementName"
    .parameter "namespace"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 508
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v6

    .line 509
    invoke-virtual {v6, p0, p1}, Lorg/jivesoftware/smack/provider/ProviderManager;->getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 510
    .local v4, provider:Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 511
    instance-of v6, v4, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    if-eqz v6, :cond_0

    .line 512
    check-cast v4, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    .line 513
    .end local v4           #provider:Ljava/lang/Object;
    invoke-interface {v4, p2}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v6

    .line 545
    :goto_0
    return-object v6

    .line 514
    .restart local v4       #provider:Ljava/lang/Object;
    :cond_0
    instance-of v6, v4, Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 516
    check-cast v4, Ljava/lang/Class;

    .line 515
    .end local v4           #provider:Ljava/lang/Object;
    invoke-static {p0, v4, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/packet/PacketExtension;

    goto :goto_0

    .line 520
    .restart local v4       #provider:Ljava/lang/Object;
    :cond_1
    new-instance v2, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .local v2, extension:Lorg/jivesoftware/smack/packet/DefaultPacketExtension;
    const/4 v0, 0x0

    .line 523
    .local v0, done:Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    move-object v6, v2

    .line 545
    goto :goto_0

    .line 524
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 525
    .local v1, eventType:I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    .line 526
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, name:Ljava/lang/String;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 529
    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 533
    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 534
    const/4 v6, 0x4

    if-ne v1, v6, :cond_2

    .line 535
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v2, v3, v5}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 539
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    .line 540
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 541
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 20
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 558
    sget-object v15, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 559
    .local v15, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    const-string v17, ""

    const-string v18, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 560
    .local v16, typeString:Ljava/lang/String;
    if-eqz v16, :cond_0

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 562
    :try_start_0
    invoke-static/range {v16 .. v16}, Lorg/jivesoftware/smack/packet/Presence$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 567
    :cond_0
    :goto_0
    new-instance v12, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v12, v15}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 568
    .local v12, presence:Lorg/jivesoftware/smack/packet/Presence;
    const-string v17, ""

    const-string v18, "to"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 569
    const-string v17, ""

    const-string v18, "from"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 570
    const-string v17, ""

    const-string v18, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 571
    .local v7, id:Ljava/lang/String;
    if-nez v7, :cond_4

    const-string v17, "ID_NOT_AVAILABLE"

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 573
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLanguageAttribute(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    .line 574
    .local v8, language:Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v17, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 575
    invoke-virtual {v12, v8}, Lorg/jivesoftware/smack/packet/Presence;->setLanguage(Ljava/lang/String;)V

    .line 577
    :cond_1
    if-nez v7, :cond_2

    const-string v7, "ID_NOT_AVAILABLE"

    .end local v7           #id:Ljava/lang/String;
    :cond_2
    invoke-virtual {v12, v7}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 580
    const/4 v3, 0x0

    .line 581
    .local v3, done:Z
    :cond_3
    :goto_2
    if-eqz v3, :cond_5

    .line 630
    return-object v12

    .line 563
    .end local v3           #done:Z
    .end local v8           #language:Ljava/lang/String;
    .end local v12           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :catch_0
    move-exception v6

    .line 564
    .local v6, iae:Ljava/lang/IllegalArgumentException;
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Found invalid presence type "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v6           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v7       #id:Ljava/lang/String;
    .restart local v12       #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_4
    move-object/from16 v17, v7

    .line 571
    goto :goto_1

    .line 582
    .end local v7           #id:Ljava/lang/String;
    .restart local v3       #done:Z
    .restart local v8       #language:Ljava/lang/String;
    :cond_5
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 583
    .local v5, eventType:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_b

    .line 584
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, elementName:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v11

    .line 586
    .local v11, namespace:Ljava/lang/String;
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 587
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    goto :goto_2

    .line 588
    :cond_6
    const-string v17, "priority"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 591
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 592
    .local v13, priority:I
    invoke-virtual {v12, v13}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 593
    .end local v13           #priority:I
    :catch_1
    move-exception v17

    goto :goto_2

    .line 595
    :catch_2
    move-exception v6

    .line 598
    .restart local v6       #iae:Ljava/lang/IllegalArgumentException;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    goto :goto_2

    .line 600
    .end local v6           #iae:Ljava/lang/IllegalArgumentException;
    :cond_7
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 601
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 603
    .local v9, modeText:Ljava/lang/String;
    :try_start_2
    invoke-static {v9}, Lorg/jivesoftware/smack/packet/Presence$Mode;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 604
    :catch_3
    move-exception v6

    .line 605
    .restart local v6       #iae:Ljava/lang/IllegalArgumentException;
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Found invalid presence mode "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 605
    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 608
    .end local v6           #iae:Ljava/lang/IllegalArgumentException;
    .end local v9           #modeText:Ljava/lang/String;
    :cond_8
    const-string v17, "error"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 609
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smack/packet/Presence;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_2

    .line 610
    :cond_9
    const-string v17, "properties"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 611
    const-string v17, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 612
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseProperties(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v14

    .line 614
    .local v14, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 615
    .local v10, name:Ljava/lang/String;
    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v10, v0}, Lorg/jivesoftware/smack/packet/Presence;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 621
    .end local v10           #name:Ljava/lang/String;
    .end local v14           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    move-object/from16 v0, p0

    invoke-static {v4, v11, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v17

    .line 620
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto/16 :goto_2

    .line 624
    .end local v4           #elementName:Ljava/lang/String;
    .end local v11           #namespace:Ljava/lang/String;
    :cond_b
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v5, v0, :cond_3

    .line 625
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "presence"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 626
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method public static parseProperties(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 15
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    .line 649
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 651
    .local v7, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 652
    .local v4, eventType:I
    if-ne v4, v13, :cond_c

    .line 653
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "property"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 655
    const/4 v1, 0x0

    .line 656
    .local v1, done:Z
    const/4 v6, 0x0

    .line 657
    .local v6, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 658
    .local v8, type:Ljava/lang/String;
    const/4 v10, 0x0

    .line 659
    .local v10, valueText:Ljava/lang/String;
    const/4 v9, 0x0

    .line 660
    :cond_1
    :goto_0
    if-nez v1, :cond_0

    .line 661
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 662
    if-ne v4, v13, :cond_3

    .line 663
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, elementName:Ljava/lang/String;
    const-string v11, "name"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 665
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 666
    :cond_2
    const-string v11, "value"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 667
    const-string v11, ""

    const-string v12, "type"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 668
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 670
    .end local v3           #elementName:Ljava/lang/String;
    :cond_3
    if-ne v4, v14, :cond_1

    .line 671
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "property"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 672
    const-string v11, "integer"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 673
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 695
    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    if-eqz v9, :cond_5

    .line 696
    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 674
    :cond_6
    const-string v11, "long"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 675
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .local v9, value:Ljava/lang/Long;
    goto :goto_1

    .line 676
    .end local v9           #value:Ljava/lang/Long;
    :cond_7
    const-string v11, "float"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 677
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    .local v9, value:Ljava/lang/Float;
    goto :goto_1

    .line 678
    .end local v9           #value:Ljava/lang/Float;
    :cond_8
    const-string v11, "double"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 679
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    .local v9, value:Ljava/lang/Double;
    goto :goto_1

    .line 680
    .end local v9           #value:Ljava/lang/Double;
    :cond_9
    const-string v11, "boolean"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 681
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    .local v9, value:Ljava/lang/Boolean;
    goto :goto_1

    .line 682
    .end local v9           #value:Ljava/lang/Boolean;
    :cond_a
    const-string v11, "string"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 683
    move-object v9, v10

    .local v9, value:Ljava/lang/String;
    goto :goto_1

    .line 684
    .end local v9           #value:Ljava/lang/String;
    :cond_b
    const-string v11, "java-object"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 687
    :try_start_0
    invoke-static {v10}, Lorg/jivesoftware/smack/util/StringUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 688
    .local v0, bytes:[B
    new-instance v5, Ljava/io/ObjectInputStream;

    .line 689
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 688
    invoke-direct {v5, v11}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 690
    .local v5, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .local v9, value:Ljava/lang/Object;
    goto :goto_1

    .line 691
    .end local v0           #bytes:[B
    .end local v5           #in:Ljava/io/ObjectInputStream;
    .end local v9           #value:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 692
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 702
    .end local v1           #done:Z
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    .end local v10           #valueText:Ljava/lang/String;
    :cond_c
    if-ne v4, v14, :cond_0

    .line 703
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "properties"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 708
    return-object v7
.end method

.method private static parseRegistration(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Registration;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 713
    new-instance v4, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v4}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 714
    .local v4, registration:Lorg/jivesoftware/smack/packet/Registration;
    const/4 v2, 0x0

    .line 715
    .local v2, fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 716
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/packet/Registration;->setAttributes(Ljava/util/Map;)V

    .line 752
    return-object v4

    .line 717
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 718
    .local v1, eventType:I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    .line 721
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jabber:iq:register"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 722
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, name:Ljava/lang/String;
    const-string v5, ""

    .line 724
    .local v5, value:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 725
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 728
    .restart local v2       #fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 729
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 733
    :cond_3
    const-string v6, "instructions"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 734
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 736
    :cond_4
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/Registration;->setInstructions(Ljava/lang/String;)V

    goto :goto_0

    .line 742
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 743
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 742
    invoke-static {v6, v7, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v6

    .line 741
    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/packet/Registration;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 745
    :cond_6
    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 746
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "query"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 747
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static parseResourceBinding(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Bind;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 757
    new-instance v0, Lorg/jivesoftware/smack/packet/Bind;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Bind;-><init>()V

    .line 758
    .local v0, bind:Lorg/jivesoftware/smack/packet/Bind;
    const/4 v1, 0x0

    .line 759
    .local v1, done:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 774
    return-object v0

    .line 760
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 761
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 762
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 763
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Bind;->setResource(Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Bind;->setJid(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 768
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 769
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static parseRoster(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/RosterPacket;
    .locals 13
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 779
    new-instance v7, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v7}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 780
    .local v7, roster:Lorg/jivesoftware/smack/packet/RosterPacket;
    const/4 v1, 0x0

    .line 781
    .local v1, done:Z
    const/4 v4, 0x0

    .line 782
    .local v4, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 818
    return-object v7

    .line 783
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 784
    .local v2, eventType:I
    const/4 v11, 0x2

    if-ne v2, v11, :cond_4

    .line 785
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "item"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 786
    const-string v11, ""

    const-string v12, "jid"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 787
    .local v5, jid:Ljava/lang/String;
    const-string v11, ""

    const-string v12, "name"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 789
    .local v6, name:Ljava/lang/String;
    new-instance v4, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .end local v4           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-direct {v4, v5, v6}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    .restart local v4       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    const-string v11, ""

    const-string v12, "ask"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, ask:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v8

    .line 794
    .local v8, status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    invoke-virtual {v4, v8}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V

    .line 796
    const-string v11, ""

    .line 797
    const-string v12, "subscription"

    .line 796
    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 799
    .local v9, subscription:Ljava/lang/String;
    if-eqz v9, :cond_3

    .end local v9           #subscription:Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v10

    .line 801
    .local v10, type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    invoke-virtual {v4, v10}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    .line 803
    .end local v0           #ask:Ljava/lang/String;
    .end local v5           #jid:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v10           #type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "group"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v4, :cond_0

    .line 804
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, groupName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 806
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    goto :goto_0

    .line 800
    .end local v3           #groupName:Ljava/lang/String;
    .restart local v0       #ask:Ljava/lang/String;
    .restart local v5       #jid:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v8       #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .restart local v9       #subscription:Ljava/lang/String;
    :cond_3
    const-string v9, "none"

    goto :goto_1

    .line 809
    .end local v0           #ask:Ljava/lang/String;
    .end local v5           #jid:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v9           #subscription:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x3

    if-ne v2, v11, :cond_0

    .line 810
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "item"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 811
    invoke-virtual {v7, v4}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 813
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "query"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 814
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static parseSASLFailure(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, condition:Ljava/lang/String;
    const/4 v1, 0x0

    .line 834
    .local v1, done:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 847
    new-instance v3, Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;

    invoke-direct {v3, v0}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 835
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 837
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 838
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 839
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 841
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 842
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 861
    const/4 v2, 0x0

    .line 862
    .local v2, streamError:Lorg/jivesoftware/smack/packet/StreamError;
    const/4 v0, 0x0

    .line 863
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 874
    return-object v2

    .line 864
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 866
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 867
    new-instance v2, Lorg/jivesoftware/smack/packet/StreamError;

    .end local v2           #streamError:Lorg/jivesoftware/smack/packet/StreamError;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/packet/StreamError;-><init>(Ljava/lang/String;)V

    .restart local v2       #streamError:Lorg/jivesoftware/smack/packet/StreamError;
    goto :goto_0

    .line 868
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 869
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 12
    .parameter "elementName"
    .parameter
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, done:Z
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 881
    .local v3, object:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 908
    return-object v3

    .line 882
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 883
    .local v1, eventType:I
    const/4 v7, 0x2

    if-ne v1, v7, :cond_2

    .line 884
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, name:Ljava/lang/String;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 888
    .local v5, stringValue:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 889
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 891
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 892
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 891
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Class;

    .line 890
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 892
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 895
    .local v4, propertyType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v4, v5}, Lorg/jivesoftware/smack/util/PacketParserUtils;->decode(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 897
    .local v6, value:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 899
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "set"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 900
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 899
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Class;

    .line 900
    aput-object v4, v9, v10

    .line 898
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 901
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 902
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #propertyType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #stringValue:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :cond_2
    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    .line 903
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 904
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
