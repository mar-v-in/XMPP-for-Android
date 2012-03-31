.class public Lorg/jivesoftware/smackx/provider/JingleProvider;
.super Ljava/lang/Object;
.source "JingleProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 21
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v11, Lorg/jivesoftware/smackx/packet/Jingle;

    invoke-direct {v11}, Lorg/jivesoftware/smackx/packet/Jingle;-><init>()V

    .line 56
    .local v11, jingle:Lorg/jivesoftware/smackx/packet/Jingle;
    const-string v17, ""

    .line 58
    .local v17, sid:Ljava/lang/String;
    const-string v8, ""

    .line 59
    .local v8, initiator:Ljava/lang/String;
    const-string v16, ""

    .line 60
    .local v16, responder:Ljava/lang/String;
    const/4 v5, 0x0

    .line 61
    .local v5, done:Z
    const/4 v4, 0x0

    .line 64
    .local v4, currentContent:Lorg/jivesoftware/smackx/packet/JingleContent;
    new-instance v9, Lorg/jivesoftware/smackx/provider/JingleContentProvider;

    invoke-direct {v9}, Lorg/jivesoftware/smackx/provider/JingleContentProvider;-><init>()V

    .line 65
    .local v9, jcp:Lorg/jivesoftware/smackx/provider/JingleContentProvider;
    new-instance v10, Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider$Audio;

    invoke-direct {v10}, Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider$Audio;-><init>()V

    .line 66
    .local v10, jdpAudio:Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider;
    new-instance v14, Lorg/jivesoftware/smackx/provider/JingleTransportProvider$RawUdp;

    invoke-direct {v14}, Lorg/jivesoftware/smackx/provider/JingleTransportProvider$RawUdp;-><init>()V

    .line 67
    .local v14, jtpRawUdp:Lorg/jivesoftware/smackx/provider/JingleTransportProvider;
    new-instance v13, Lorg/jivesoftware/smackx/provider/JingleTransportProvider$Ice;

    invoke-direct {v13}, Lorg/jivesoftware/smackx/provider/JingleTransportProvider$Ice;-><init>()V

    .line 68
    .local v13, jtpIce:Lorg/jivesoftware/smackx/provider/JingleTransportProvider;
    new-instance v12, Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider$Audio;

    invoke-direct {v12}, Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider$Audio;-><init>()V

    .line 75
    .local v12, jmipAudio:Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider;
    const-string v18, ""

    const-string v19, "sid"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 76
    const-string v18, ""

    .line 77
    const-string v19, "action"

    .line 76
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->getAction(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    move-result-object v3

    .line 78
    .local v3, action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;
    const-string v18, ""

    const-string v19, "initiator"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 79
    const-string v18, ""

    const-string v19, "responder"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 81
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smackx/packet/Jingle;->setSid(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v11, v3}, Lorg/jivesoftware/smackx/packet/Jingle;->setAction(Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)V

    .line 83
    invoke-virtual {v11, v8}, Lorg/jivesoftware/smackx/packet/Jingle;->setInitiator(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smackx/packet/Jingle;->setResponder(Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 141
    return-object v11

    .line 88
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 89
    .local v7, eventType:I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, elementName:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v15

    .line 92
    .local v15, namespace:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v7, v0, :cond_8

    .line 97
    const-string v18, "content"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smackx/provider/JingleContentProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v4

    .end local v4           #currentContent:Lorg/jivesoftware/smackx/packet/JingleContent;
    check-cast v4, Lorg/jivesoftware/smackx/packet/JingleContent;

    .line 100
    .restart local v4       #currentContent:Lorg/jivesoftware/smackx/packet/JingleContent;
    invoke-virtual {v11, v4}, Lorg/jivesoftware/smackx/packet/Jingle;->addContent(Lorg/jivesoftware/smackx/packet/JingleContent;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v18, "description"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 102
    const-string v18, "urn:xmpp:tmp:jingle:apps:rtp"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 105
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v18

    check-cast v18, Lorg/jivesoftware/smackx/packet/JingleDescription;

    .line 104
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smackx/packet/JingleContent;->setDescription(Lorg/jivesoftware/smackx/packet/JingleDescription;)V

    goto :goto_0

    .line 106
    :cond_3
    const-string v18, "transport"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 111
    const-string v18, "http://www.xmpp.org/extensions/xep-0177.html#ns"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 114
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/jivesoftware/smackx/provider/JingleTransportProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v18

    .line 113
    check-cast v18, Lorg/jivesoftware/smackx/packet/JingleTransport;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smackx/packet/JingleContent;->addJingleTransport(Lorg/jivesoftware/smackx/packet/JingleTransport;)V

    goto :goto_0

    .line 115
    :cond_4
    const-string v18, "urn:xmpp:tmp:jingle:transports:ice-udp"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/jivesoftware/smackx/provider/JingleTransportProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v18

    .line 117
    check-cast v18, Lorg/jivesoftware/smackx/packet/JingleTransport;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smackx/packet/JingleContent;->addJingleTransport(Lorg/jivesoftware/smackx/packet/JingleTransport;)V

    goto/16 :goto_0

    .line 120
    :cond_5
    new-instance v18, Lorg/jivesoftware/smack/XMPPException;

    .line 121
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Unknown transport namespace \""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 122
    const-string v20, "\" in Jingle packet."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 121
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 120
    invoke-direct/range {v18 .. v19}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 124
    :cond_6
    const-string v18, "urn:xmpp:tmp:jingle:apps:rtp"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 126
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v18

    check-cast v18, Lorg/jivesoftware/smackx/packet/JingleContentInfo;

    .line 125
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smackx/packet/Jingle;->setContentInfo(Lorg/jivesoftware/smackx/packet/JingleContentInfo;)V

    goto/16 :goto_0

    .line 128
    :cond_7
    new-instance v18, Lorg/jivesoftware/smack/XMPPException;

    .line 129
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Unknown combination of namespace \""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 130
    const-string v20, "\" and element name \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 131
    const-string v20, "\" in Jingle packet."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 129
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 128
    invoke-direct/range {v18 .. v19}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 134
    :cond_8
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    .line 135
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lorg/jivesoftware/smackx/packet/Jingle;->getElementName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 136
    const/4 v5, 0x1

    goto/16 :goto_0
.end method
