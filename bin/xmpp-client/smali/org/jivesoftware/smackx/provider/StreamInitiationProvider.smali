.class public Lorg/jivesoftware/smackx/provider/StreamInitiationProvider;
.super Ljava/lang/Object;
.source "StreamInitiationProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 25
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v6, 0x0

    .line 46
    .local v6, done:Z
    const-string v23, ""

    const-string v24, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 47
    .local v16, id:Ljava/lang/String;
    const-string v23, ""

    const-string v24, "mime-type"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 49
    .local v19, mimeType:Ljava/lang/String;
    new-instance v17, Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-direct/range {v17 .. v17}, Lorg/jivesoftware/smackx/packet/StreamInitiation;-><init>()V

    .line 52
    .local v17, initiation:Lorg/jivesoftware/smackx/packet/StreamInitiation;
    const/16 v20, 0x0

    .line 53
    .local v20, name:Ljava/lang/String;
    const/16 v22, 0x0

    .line 54
    .local v22, size:Ljava/lang/String;
    const/4 v15, 0x0

    .line 55
    .local v15, hash:Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, date:Ljava/lang/String;
    const/4 v5, 0x0

    .line 57
    .local v5, desc:Ljava/lang/String;
    const/16 v18, 0x0

    .line 60
    .local v18, isRanged:Z
    const/4 v14, 0x0

    .line 61
    .local v14, form:Lorg/jivesoftware/smackx/packet/DataForm;
    new-instance v3, Lorg/jivesoftware/smackx/provider/DataFormProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/DataFormProvider;-><init>()V

    .line 66
    .local v3, dataFormProvider:Lorg/jivesoftware/smackx/provider/DataFormProvider;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 116
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setSesssionID(Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setMimeType(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFeatureNegotiationForm(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 121
    return-object v17

    .line 67
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 68
    .local v9, eventType:I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, elementName:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v21

    .line 70
    .local v21, namespace:Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v9, v0, :cond_5

    .line 71
    const-string v23, "file"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 72
    const-string v23, ""

    const-string v24, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 73
    const-string v23, ""

    const-string v24, "size"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 74
    const-string v23, ""

    const-string v24, "hash"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 75
    const-string v23, ""

    const-string v24, "date"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 76
    :cond_2
    const-string v23, "desc"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 77
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 78
    :cond_3
    const-string v23, "range"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 79
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 80
    :cond_4
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 81
    const-string v23, "jabber:x:data"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/provider/DataFormProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v14

    .end local v14           #form:Lorg/jivesoftware/smackx/packet/DataForm;
    check-cast v14, Lorg/jivesoftware/smackx/packet/DataForm;

    .restart local v14       #form:Lorg/jivesoftware/smackx/packet/DataForm;
    goto/16 :goto_0

    .line 84
    :cond_5
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v9, v0, :cond_0

    .line 85
    const-string v23, "si"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 86
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 87
    :cond_6
    const-string v23, "file"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 88
    const-wide/16 v12, 0x0

    .line 89
    .local v12, fileSize:J
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_7

    .line 91
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 97
    :cond_7
    :goto_1
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 98
    .local v11, fileDate:Ljava/util/Date;
    if-eqz v4, :cond_8

    .line 100
    :try_start_1
    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseXEP0082Date(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 106
    :cond_8
    :goto_2
    new-instance v10, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

    move-object/from16 v0, v20

    invoke-direct {v10, v0, v12, v13}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;-><init>(Ljava/lang/String;J)V

    .line 107
    .local v10, file:Lorg/jivesoftware/smackx/packet/StreamInitiation$File;
    invoke-virtual {v10, v15}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->setHash(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v10, v11}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->setDate(Ljava/util/Date;)V

    .line 109
    invoke-virtual {v10, v5}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->setDesc(Ljava/lang/String;)V

    .line 110
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->setRanged(Z)V

    .line 111
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFile(Lorg/jivesoftware/smackx/packet/StreamInitiation$File;)V

    goto/16 :goto_0

    .line 92
    .end local v10           #file:Lorg/jivesoftware/smackx/packet/StreamInitiation$File;
    .end local v11           #fileDate:Ljava/util/Date;
    :catch_0
    move-exception v7

    .line 93
    .local v7, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 101
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #fileDate:Ljava/util/Date;
    :catch_1
    move-exception v23

    goto :goto_2
.end method
