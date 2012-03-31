.class public Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
.super Ljava/lang/Object;
.source "TransportCandidate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CandidateEcho"
.end annotation


# instance fields
.field candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

.field enabled:Z

.field ended:Z

.field id:Ljava/lang/String;

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;",
            ">;"
        }
    .end annotation
.end field

.field localUser:Ljava/lang/String;

.field receive:[B

.field remoteUser:Ljava/lang/String;

.field replyTries:J

.field resultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/ResultListener;",
            ">;"
        }
    .end annotation
.end field

.field send:[B

.field sendPacket:Ljava/net/DatagramPacket;

.field socket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

.field tries:J


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 8
    .parameter
    .parameter "candidate"
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 100
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->socket:Ljava/net/DatagramSocket;

    .line 85
    iput-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->localUser:Ljava/lang/String;

    .line 86
    iput-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->remoteUser:Ljava/lang/String;

    .line 87
    iput-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->id:Ljava/lang/String;

    .line 88
    iput-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->send:[B

    .line 89
    iput-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->receive:[B

    .line 90
    iput-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->sendPacket:Ljava/net/DatagramPacket;

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->listeners:Ljava/util/List;

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->resultListeners:Ljava/util/List;

    .line 93
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->enabled:Z

    .line 94
    iput-boolean v7, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->ended:Z

    .line 95
    const-wide/16 v4, 0x2

    iput-wide v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->replyTries:J

    .line 96
    const-wide/16 v4, 0xa

    iput-wide v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->tries:J

    .line 97
    iput-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 101
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v5

    .line 102
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getLocalIp()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 101
    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->socket:Ljava/net/DatagramSocket;

    .line 103
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->localUser:Ljava/lang/String;

    .line 104
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getResponder()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->remoteUser:Ljava/lang/String;

    .line 105
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->id:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 109
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 111
    .local v1, keySplitIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->id:Ljava/lang/String;

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 112
    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->localUser:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, local:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->id:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->remoteUser:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, remote:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->send:[B

    .line 121
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->receive:[B

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->receive:[B

    .line 124
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->send:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;Lorg/jivesoftware/smackx/jingle/nat/TestResult;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->fireTestResult(Lorg/jivesoftware/smackx/jingle/nat/TestResult;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    return-object v0
.end method

.method private fireTestResult(Lorg/jivesoftware/smackx/jingle/nat/TestResult;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 3
    .parameter "testResult"
    .parameter "candidate"

    .prologue
    .line 147
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->resultListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    return-void

    .line 147
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/ResultListener;

    .line 148
    .local v0, resultListener:Lorg/jivesoftware/smackx/jingle/nat/ResultListener;
    invoke-interface {v0, p1, p2}, Lorg/jivesoftware/smackx/jingle/nat/ResultListener;->testFinished(Lorg/jivesoftware/smackx/jingle/nat/TestResult;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public addResultListener(Lorg/jivesoftware/smackx/jingle/nat/ResultListener;)V
    .locals 1
    .parameter "resultListener"

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->resultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->enabled:Z

    .line 142
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 143
    return-void
.end method

.method public removeListener(Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 153
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public removeResultListener(Lorg/jivesoftware/smackx/jingle/nat/ResultListener;)V
    .locals 1
    .parameter "resultListener"

    .prologue
    .line 157
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->resultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public run()V
    .locals 21

    .prologue
    .line 163
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Listening for ECHO: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 163
    invoke-virtual/range {v17 .. v18}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 168
    :cond_0
    new-instance v13, Ljava/net/DatagramPacket;

    .line 169
    const/16 v17, 0x96

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v18, 0x96

    .line 168
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 171
    .local v13, packet:Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 179
    const/4 v2, 0x0

    .line 181
    .local v2, accept:Z
    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 182
    .local v4, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getLength()I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 183
    .local v6, content:[B
    const/16 v17, 0x0

    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getLength()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 185
    invoke-virtual {v13, v6}, Ljava/net/DatagramPacket;->setData([B)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->listeners:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_2

    .line 194
    :goto_0
    const-wide/16 v17, 0x64

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->replyTries:J

    move-wide/from16 v19, v0

    div-long v7, v17, v19

    .line 196
    .local v7, delay:J
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-direct/range {v17 .. v19}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 197
    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 198
    .local v16, str:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v14, v16, v17

    .line 199
    .local v14, pass:Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v17, v16, v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, address:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v11, v3, v17

    .line 201
    .local v11, ip:Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v15, v3, v17

    .line 203
    .local v15, port:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPassword()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    if-nez v2, :cond_0

    .line 205
    const/4 v5, 0x0

    check-cast v5, [B
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 207
    .local v5, cont:[B
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->password:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-object/from16 v18, v0

    .line 208
    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 207
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 208
    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 213
    :goto_1
    :try_start_2
    invoke-virtual {v13, v5}, Ljava/net/DatagramPacket;->setData([B)V

    .line 214
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 215
    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 216
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 218
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    int-to-long v0, v10

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->replyTries:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-gez v17, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 220
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->enabled:Z

    move/from16 v17, v0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v17, :cond_0

    .line 224
    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 218
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 187
    .end local v3           #address:[Ljava/lang/String;
    .end local v5           #cont:[B
    .end local v7           #delay:J
    .end local v10           #i:I
    .end local v11           #ip:Ljava/lang/String;
    .end local v14           #pass:Ljava/lang/String;
    .end local v15           #port:Ljava/lang/String;
    .end local v16           #str:[Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;

    .line 188
    .local v12, listener:Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;
    invoke-interface {v12, v13}, Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;->datagramReceived(Ljava/net/DatagramPacket;)Z

    move-result v2

    .line 189
    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 209
    .end local v12           #listener:Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;
    .restart local v3       #address:[Ljava/lang/String;
    .restart local v5       #cont:[B
    .restart local v7       #delay:J
    .restart local v11       #ip:Ljava/lang/String;
    .restart local v14       #pass:Ljava/lang/String;
    .restart local v15       #port:Ljava/lang/String;
    .restart local v16       #str:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 210
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 231
    .end local v2           #accept:Z
    .end local v3           #address:[Ljava/lang/String;
    .end local v4           #buf:Ljava/nio/ByteBuffer;
    .end local v5           #cont:[B
    .end local v6           #content:[B
    .end local v7           #delay:J
    .end local v9           #e:Ljava/io/UnsupportedEncodingException;
    .end local v11           #ip:Ljava/lang/String;
    .end local v13           #packet:Ljava/net/DatagramPacket;
    .end local v14           #pass:Ljava/lang/String;
    .end local v15           #port:Ljava/lang/String;
    .end local v16           #str:[Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 244
    :goto_4
    return-void

    .line 225
    .restart local v2       #accept:Z
    .restart local v3       #address:[Ljava/lang/String;
    .restart local v4       #buf:Ljava/nio/ByteBuffer;
    .restart local v5       #cont:[B
    .restart local v6       #content:[B
    .restart local v7       #delay:J
    .restart local v10       #i:I
    .restart local v11       #ip:Ljava/lang/String;
    .restart local v13       #packet:Ljava/net/DatagramPacket;
    .restart local v14       #pass:Ljava/lang/String;
    .restart local v15       #port:Ljava/lang/String;
    .restart local v16       #str:[Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 226
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 234
    .end local v2           #accept:Z
    .end local v3           #address:[Ljava/lang/String;
    .end local v4           #buf:Ljava/nio/ByteBuffer;
    .end local v5           #cont:[B
    .end local v6           #content:[B
    .end local v7           #delay:J
    .end local v9           #e:Ljava/lang/InterruptedException;
    .end local v10           #i:I
    .end local v11           #ip:Ljava/lang/String;
    .end local v13           #packet:Ljava/net/DatagramPacket;
    .end local v14           #pass:Ljava/lang/String;
    .end local v15           #port:Ljava/lang/String;
    .end local v16           #str:[Ljava/lang/String;
    :catch_3
    move-exception v17

    goto :goto_4

    .line 240
    :catch_4
    move-exception v17

    goto :goto_4

    .line 237
    :catch_5
    move-exception v17

    goto :goto_4
.end method

.method public testASync(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Ljava/lang/String;)V
    .locals 2
    .parameter "transportCandidate"
    .parameter "password"

    .prologue
    .line 249
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 352
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 353
    return-void
.end method
