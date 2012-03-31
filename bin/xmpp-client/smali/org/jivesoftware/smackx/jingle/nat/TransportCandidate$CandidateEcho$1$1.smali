.class Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;
.super Ljava/lang/Object;
.source "TransportCandidate.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->this$2:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;

    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->val$password:Ljava/lang/String;

    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public datagramReceived(Ljava/net/DatagramPacket;)Z
    .locals 14
    .parameter "datagramPacket"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 260
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ECHO Received to: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object v11, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->this$2:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    invoke-static {v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->access$0(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    move-result-object v11

    iget-object v11, v11, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 262
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 263
    iget-object v11, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->this$2:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    invoke-static {v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->access$0(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    move-result-object v11

    iget-object v11, v11, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 264
    const-string v11, "  data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 265
    new-instance v11, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v12

    .line 266
    const-string v13, "UTF-8"

    .line 265
    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 260
    invoke-virtual {v9, v10}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 267
    new-instance v9, Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v10

    const-string v11, "UTF-8"

    .line 267
    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 268
    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, str:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v3, v5, v9

    .line 270
    .local v3, pass:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v5, v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, addr:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v2, v0, v9

    .line 272
    .local v2, ip:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v4, v0, v9

    .line 274
    .local v4, pt:Ljava/lang/String;
    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->val$password:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 275
    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 276
    const/4 v10, -0x1

    .line 275
    if-eq v9, v10, :cond_0

    .line 277
    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v9

    .line 278
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 277
    if-ne v9, v10, :cond_0

    .line 279
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ECHO OK: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    iget-object v11, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->this$2:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    invoke-static {v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->access$0(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    move-result-object v11

    iget-object v11, v11, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 281
    iget-object v11, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->this$2:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    invoke-static {v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->access$0(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    move-result-object v11

    iget-object v11, v11, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " <-> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 282
    iget-object v11, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 283
    iget-object v11, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 279
    invoke-virtual {v9, v10}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 284
    new-instance v6, Lorg/jivesoftware/smackx/jingle/nat/TestResult;

    invoke-direct {v6}, Lorg/jivesoftware/smackx/jingle/nat/TestResult;-><init>()V

    .line 285
    .local v6, testResult:Lorg/jivesoftware/smackx/jingle/nat/TestResult;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->setResult(Z)V

    .line 286
    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->this$2:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    invoke-static {v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->access$0(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    move-result-object v9

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->ended:Z

    .line 287
    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->this$2:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    invoke-static {v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->access$0(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    move-result-object v9

    .line 288
    iget-object v10, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;->val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 287
    #calls: Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->fireTestResult(Lorg/jivesoftware/smackx/jingle/nat/TestResult;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    invoke-static {v9, v6, v10}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->access$0(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;Lorg/jivesoftware/smackx/jingle/nat/TestResult;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0           #addr:[Ljava/lang/String;
    .end local v2           #ip:Ljava/lang/String;
    .end local v3           #pass:Ljava/lang/String;
    .end local v4           #pt:Ljava/lang/String;
    .end local v5           #str:[Ljava/lang/String;
    .end local v6           #testResult:Lorg/jivesoftware/smackx/jingle/nat/TestResult;
    :goto_0
    return v7

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 296
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ECHO Wrong Data: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    .line 298
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 297
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 298
    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 299
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 296
    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    move v7, v8

    .line 300
    goto :goto_0
.end method
