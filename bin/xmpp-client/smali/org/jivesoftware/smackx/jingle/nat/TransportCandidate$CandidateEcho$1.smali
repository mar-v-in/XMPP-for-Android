.class Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;
.super Ljava/lang/Object;
.source "TransportCandidate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->testASync(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->val$password:Ljava/lang/String;

    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 254
    new-instance v5, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;

    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->val$password:Ljava/lang/String;

    iget-object v8, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-direct {v5, p0, v7, v8}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1$1;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 304
    .local v5, listener:Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    invoke-virtual {v7, v5}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->addListener(Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;)V

    .line 306
    const/4 v0, 0x0

    check-cast v0, [B

    .line 308
    .local v0, content:[B
    :try_start_0
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->val$password:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-static {v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->access$1(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 309
    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-static {v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->access$1(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 308
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 309
    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    :goto_0
    new-instance v6, Ljava/net/DatagramPacket;

    .line 315
    array-length v7, v0

    .line 314
    invoke-direct {v6, v0, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 319
    .local v6, packet:Ljava/net/DatagramPacket;
    :try_start_1
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 318
    invoke-virtual {v6, v7}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    :goto_1
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->val$transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 325
    const-wide/16 v1, 0xc8

    .line 328
    .local v1, delay:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    int-to-long v7, v4

    :try_start_2
    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    iget-wide v9, v9, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->tries:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    .line 344
    :cond_0
    :goto_3
    const-wide/16 v7, 0x7d0

    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 349
    :goto_4
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    invoke-virtual {v7, v5}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->removeListener(Lorg/jivesoftware/smackx/jingle/nat/DatagramListener;)V

    .line 350
    return-void

    .line 310
    .end local v1           #delay:J
    .end local v4           #i:I
    .end local v6           #packet:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v3

    .line 311
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 320
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #packet:Ljava/net/DatagramPacket;
    :catch_1
    move-exception v3

    .line 321
    .local v3, e:Ljava/net/UnknownHostException;
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1

    .line 329
    .end local v3           #e:Ljava/net/UnknownHostException;
    .restart local v1       #delay:J
    .restart local v4       #i:I
    :cond_1
    :try_start_4
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    iget-object v7, v7, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 330
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    iget-boolean v7, v7, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->ended:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v7, :cond_0

    .line 334
    const-wide/16 v7, 0xc8

    :try_start_5
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 328
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 335
    :catch_2
    move-exception v3

    .line 336
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 339
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v7

    goto :goto_3

    .line 345
    :catch_4
    move-exception v3

    .line 346
    .restart local v3       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method
