.class public Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider;
.super Ljava/lang/Object;
.source "AdHocCommandDataProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$BadActionError;,
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$BadLocaleError;,
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$BadPayloadError;,
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$BadSessionIDError;,
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$MalformedActionError;,
        Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$SessionExpiredError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 16
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, done:Z
    new-instance v2, Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;-><init>()V

    .line 101
    .local v2, adHocCommandData:Lorg/jivesoftware/smackx/packet/AdHocCommandData;
    new-instance v3, Lorg/jivesoftware/smackx/provider/DataFormProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/DataFormProvider;-><init>()V

    .line 107
    .local v3, dataFormProvider:Lorg/jivesoftware/smackx/provider/DataFormProvider;
    const-string v14, ""

    const-string v15, "sessionid"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setSessionID(Ljava/lang/String;)V

    .line 108
    const-string v14, ""

    const-string v15, "node"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setNode(Ljava/lang/String;)V

    .line 111
    const-string v14, ""

    const-string v15, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, status:Ljava/lang/String;
    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v14}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 113
    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 123
    :cond_0
    :goto_0
    const-string v14, ""

    const-string v15, "action"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, action:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 125
    invoke-static {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v10

    .line 126
    .local v10, realAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    if-eqz v10, :cond_1

    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v10, v14}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 127
    :cond_1
    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    .line 132
    .end local v10           #realAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    :cond_2
    :goto_1
    if-eqz v4, :cond_6

    .line 170
    return-object v2

    .line 114
    .end local v1           #action:Ljava/lang/String;
    :cond_3
    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v14}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 116
    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    goto :goto_0

    .line 117
    :cond_4
    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v14}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 119
    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    goto :goto_0

    .line 129
    .restart local v1       #action:Ljava/lang/String;
    .restart local v10       #realAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    :cond_5
    invoke-virtual {v2, v10}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_1

    .line 133
    .end local v10           #realAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 134
    .local v7, eventType:I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, elementName:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, namespace:Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v7, v14, :cond_d

    .line 137
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "actions"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 138
    const-string v14, ""

    .line 139
    const-string v15, "execute"

    .line 138
    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, execute:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 142
    invoke-static {v8}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v14

    .line 141
    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setExecuteAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_1

    .line 144
    .end local v8           #execute:Ljava/lang/String;
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "next"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 145
    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_1

    .line 146
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "complete"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 147
    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto :goto_1

    .line 148
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "prev"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 149
    sget-object v14, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    goto/16 :goto_1

    .line 150
    :cond_a
    const-string v14, "x"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 151
    const-string v14, "jabber:x:data"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 153
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/provider/DataFormProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v14

    check-cast v14, Lorg/jivesoftware/smackx/packet/DataForm;

    .line 152
    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setForm(Lorg/jivesoftware/smackx/packet/DataForm;)V

    goto/16 :goto_1

    .line 154
    :cond_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "note"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 156
    const-string v14, ""

    const-string v15, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    move-result-object v12

    .line 157
    .local v12, type:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    .line 158
    .local v13, value:Ljava/lang/String;
    new-instance v14, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;

    invoke-direct {v14, v12, v13}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->addNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V

    goto/16 :goto_1

    .line 159
    .end local v12           #type:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
    .end local v13           #value:Ljava/lang/String;
    :cond_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "error"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 161
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    .line 162
    .local v6, error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual {v2, v6}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_1

    .line 164
    .end local v6           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_d
    const/4 v14, 0x3

    if-ne v7, v14, :cond_2

    .line 165
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "command"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 166
    const/4 v4, 0x1

    goto/16 :goto_1
.end method
