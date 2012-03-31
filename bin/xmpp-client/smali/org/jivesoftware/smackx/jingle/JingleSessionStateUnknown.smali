.class public Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;
.super Lorg/jivesoftware/smackx/jingle/JingleSessionState;
.source "JingleSessionStateUnknown.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

.field private static INSTANCE:Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;


# direct methods
.method static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->values()[Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_ADD:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_MODIFY:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_REMOVE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_INITIATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_TERMINATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->TRANSPORT_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->UNKNOWN:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;->INSTANCE:Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;

    .line 21
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/JingleSessionState;-><init>()V

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/jivesoftware/smackx/jingle/JingleSessionState;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;->INSTANCE:Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;->INSTANCE:Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;

    .line 33
    :cond_0
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;->INSTANCE:Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private receiveSessionInitiateAction(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 23
    .parameter "session"
    .parameter "inJingle"

    .prologue
    .line 84
    const/4 v14, 0x0

    .line 85
    .local v14, response:Lorg/jivesoftware/smack/packet/IQ;
    const/4 v15, 0x1

    .line 120
    .local v15, shouldAck:Z
    invoke-virtual/range {p1 .. p2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createAck(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v14

    .line 122
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleSessionStatePending;->getInstance()Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->setSessionState(Lorg/jivesoftware/smackx/jingle/JingleSessionState;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smackx/packet/Jingle;->getContentsList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_0

    .line 206
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->setupListeners()V

    .line 209
    return-object v14

    .line 126
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/packet/JingleContent;

    .line 129
    .local v7, jingleContent:Lorg/jivesoftware/smackx/packet/JingleContent;
    new-instance v4, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 130
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/JingleContent;->getCreator()Ljava/lang/String;

    move-result-object v18

    .line 131
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/JingleContent;->getName()Ljava/lang/String;

    move-result-object v19

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v4, contentNeg:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/JingleContent;->getDescription()Lorg/jivesoftware/smackx/packet/JingleDescription;

    move-result-object v8

    .line 144
    .local v8, jingleDescription:Lorg/jivesoftware/smackx/packet/JingleDescription;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getMediaManagers()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

    .line 146
    .local v3, chosenMediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getMediaManagers()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 145
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_3

    .line 164
    new-instance v18, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;

    .line 166
    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getPayloadTypesList()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;Ljava/util/List;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V

    .line 164
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->setMediaNegotiator(Lorg/jivesoftware/smackx/jingle/media/MediaNegotiator;)V

    .line 172
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/JingleContent;->getJingleTransportsList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 171
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_7

    .line 201
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addContentNegotiator(Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V

    goto :goto_0

    .line 146
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

    .line 147
    .local v11, mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;
    const/4 v10, 0x1

    .line 149
    .local v10, matches:Z
    invoke-virtual {v11}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->getPayloads()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 148
    :cond_4
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 149
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 151
    .local v12, mediaPayloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getPayloadTypesList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 150
    :cond_5
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_6

    .line 157
    if-eqz v10, :cond_4

    .line 158
    move-object v3, v11

    goto :goto_1

    .line 151
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 152
    .local v5, descPayloadType2:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    invoke-virtual {v12}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v21

    .line 153
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v22

    .line 152
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 154
    const/4 v10, 0x0

    goto :goto_2

    .line 172
    .end local v5           #descPayloadType2:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    .end local v10           #matches:Z
    .end local v11           #mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;
    .end local v12           #mediaPayloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jivesoftware/smackx/packet/JingleTransport;

    .line 174
    .local v9, jingleTransport:Lorg/jivesoftware/smackx/packet/JingleTransport;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getMediaManagers()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 173
    :cond_8
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 174
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;

    .line 177
    .restart local v11       #mediaManager:Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;
    invoke-virtual {v11}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->getTransportManager()Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;

    move-result-object v16

    .line 178
    .local v16, transportManager:Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;
    const/4 v13, 0x0

    .line 180
    .local v13, resolver:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;->getResolver(Lorg/jivesoftware/smackx/jingle/JingleSession;)Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 185
    :goto_4
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getType()Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    move-result-object v20

    .line 186
    sget-object v21, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;->rawupd:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    .line 185
    invoke-virtual/range {v20 .. v21}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 188
    new-instance v20, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$RawUdp;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$RawUdp;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->setTransportNegotiator(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)V

    .line 191
    :cond_9
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getType()Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    move-result-object v20

    .line 192
    sget-object v21, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;->ice:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    .line 191
    invoke-virtual/range {v20 .. v21}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 194
    new-instance v20, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$Ice;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$Ice;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;Lorg/jivesoftware/smackx/jingle/ContentNegotiator;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->setTransportNegotiator(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)V

    goto :goto_3

    .line 181
    :catch_0
    move-exception v6

    .line 182
    .local v6, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_4
.end method

.method private receiveSessionTerminateAction(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .parameter "session"
    .parameter "jingle"

    .prologue
    .line 219
    invoke-virtual {p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createAck(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 222
    .local v1, response:Lorg/jivesoftware/smack/packet/IQ;
    :try_start_0
    const-string v2, "Closed remotely"

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->terminate(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public processJingle(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .parameter "session"
    .parameter "jingle"
    .parameter "action"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum()[I

    move-result-object v1

    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 69
    sget-object v1, Lorg/jivesoftware/smackx/packet/JingleError;->MALFORMED_STANZA:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 68
    invoke-virtual {p1, p2, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createJingleError(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smackx/packet/JingleError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;->receiveSessionInitiateAction(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 60
    goto :goto_0

    .line 63
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateUnknown;->receiveSessionTerminateAction(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 64
    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
