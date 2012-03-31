.class public Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;
.super Lorg/jivesoftware/smackx/jingle/JingleSessionState;
.source "JingleSessionStateActive.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

.field private static INSTANCE:Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;


# direct methods
.method static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

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
    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum:[I

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
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;->INSTANCE:Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;

    .line 12
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/JingleSessionState;-><init>()V

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/jivesoftware/smackx/jingle/JingleSessionState;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;->INSTANCE:Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;->INSTANCE:Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;

    .line 24
    :cond_0
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;->INSTANCE:Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private receiveSessionTerminateAction(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .parameter "session"
    .parameter "jingle"

    .prologue
    .line 88
    invoke-virtual {p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createAck(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 91
    .local v1, response:Lorg/jivesoftware/smack/packet/IQ;
    :try_start_0
    const-string v2, "Closed remotely"

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->terminate(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public processJingle(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .parameter "session"
    .parameter "jingle"
    .parameter "action"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleActionEnum()[I

    move-result-object v1

    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 75
    :pswitch_0
    sget-object v1, Lorg/jivesoftware/smackx/packet/JingleError;->OUT_OF_ORDER:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 74
    invoke-virtual {p1, p2, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->createJingleError(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smackx/packet/JingleError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 78
    :goto_0
    :pswitch_1
    return-object v0

    .line 66
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;->receiveSessionTerminateAction(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smack/packet/IQ;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
