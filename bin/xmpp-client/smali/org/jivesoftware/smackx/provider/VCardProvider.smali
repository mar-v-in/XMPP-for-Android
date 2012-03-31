.class public Lorg/jivesoftware/smackx/provider/VCardProvider;
.super Ljava/lang/Object;
.source "VCardProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;
    }
.end annotation


# static fields
.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVCardFromXML(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/VCard;
    .locals 6
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v3, Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/VCard;-><init>()V

    .line 229
    .local v3, vCard:Lorg/jivesoftware/smackx/packet/VCard;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 231
    .local v2, documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 233
    .local v1, documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 234
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 233
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 236
    .local v0, document:Lorg/w3c/dom/Document;
    new-instance v4, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;

    invoke-direct {v4, v3, v0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;-><init>(Lorg/jivesoftware/smackx/packet/VCard;Lorg/w3c/dom/Document;)V

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->initializeFields()V

    .line 237
    return-object v3
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
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v2, sb:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 247
    .local v1, event:I
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 262
    :goto_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 263
    const-string v4, "vCard"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    .end local v1           #event:I
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, xmlText:Ljava/lang/String;
    invoke-static {v3}, Lorg/jivesoftware/smackx/provider/VCardProvider;->createVCardFromXML(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/VCard;

    move-result-object v4

    return-object v4

    .line 251
    .end local v3           #xmlText:Ljava/lang/String;
    .restart local v1       #event:I
    :pswitch_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 269
    .end local v1           #event:I
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 254
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #event:I
    :pswitch_1
    const/16 v4, 0x3c

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 271
    .end local v1           #event:I
    :catch_1
    move-exception v0

    .line 272
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 257
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #event:I
    :pswitch_2
    :try_start_3
    const-string v4, "</"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 267
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    .line 246
    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
