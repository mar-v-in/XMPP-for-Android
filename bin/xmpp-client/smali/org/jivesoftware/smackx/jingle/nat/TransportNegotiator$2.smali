.class Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;
.super Ljava/lang/Object;
.source "TransportNegotiator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->delayedCheckBestCandidate(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

.field private final synthetic val$jin:Lorg/jivesoftware/smackx/packet/Jingle;

.field private final synthetic val$js:Lorg/jivesoftware/smackx/jingle/JingleSession;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smackx/packet/Jingle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->val$js:Lorg/jivesoftware/smackx/jingle/JingleSession;

    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->val$jin:Lorg/jivesoftware/smackx/packet/Jingle;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 380
    const/16 v10, 0x1b58

    .line 381
    .local v10, totalTime:I
    const-wide/high16 v12, 0x401c

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    .line 383
    .local v11, tries:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    add-int/lit8 v12, v11, -0x1

    if-lt v7, v12, :cond_6

    .line 423
    :goto_1
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getBestRemoteCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v0

    .line 425
    .local v0, bestRemote:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    if-nez v0, :cond_4

    .line 426
    const/4 v6, 0x0

    .line 427
    .local v6, foundRemoteRelay:Z
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->remoteCandidates:Ljava/util/List;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$6(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_9

    .line 442
    if-nez v6, :cond_4

    .line 443
    const/4 v4, 0x0

    .line 444
    .local v4, foundLocalRelay:Z
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->offeredCandidates:Ljava/util/List;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$7(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_a

    .line 452
    if-eqz v4, :cond_4

    .line 453
    const/4 v5, 0x0

    .line 454
    .local v5, foundRemotePublic:Z
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->remoteCandidates:Ljava/util/List;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$6(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_b

    .line 464
    if-nez v5, :cond_4

    .line 465
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->remoteCandidates:Ljava/util/List;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$6(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_c

    .line 476
    .end local v4           #foundLocalRelay:Z
    .end local v5           #foundRemotePublic:Z
    .end local v6           #foundRemoteRelay:Z
    :cond_4
    const/4 v7, 0x0

    :goto_6
    const/4 v12, 0x6

    if-lt v7, v12, :cond_d

    .line 506
    :goto_7
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v12

    sget-object v13, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-eq v12, v13, :cond_5

    .line 508
    :try_start_0
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$8(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Lorg/jivesoftware/smackx/jingle/JingleSession;

    move-result-object v12

    const-string v13, "Unable to negotiate session. This may be caused by firewall configuration problems."

    invoke-virtual {v12, v13}, Lorg/jivesoftware/smackx/jingle/JingleSession;->terminate(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_2

    .line 513
    :cond_5
    :goto_8
    return-void

    .line 385
    .end local v0           #bestRemote:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :cond_6
    const-wide/16 v12, 0x3e8

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 393
    :goto_9
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getBestRemoteCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v0

    .line 396
    .restart local v0       #bestRemote:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    if-eqz v0, :cond_8

    .line 397
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v12

    sget-object v13, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->PENDING:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-ne v12, v13, :cond_8

    .line 399
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->acceptedRemoteCandidates:Ljava/util/List;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$2(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 400
    new-instance v9, Lorg/jivesoftware/smackx/packet/Jingle;

    .line 401
    sget-object v12, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    .line 400
    invoke-direct {v9, v12}, Lorg/jivesoftware/smackx/packet/Jingle;-><init>(Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)V

    .line 402
    .local v9, jout:Lorg/jivesoftware/smackx/packet/Jingle;
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->parentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$3(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    move-result-object v12

    .line 403
    invoke-virtual {v12}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getJingleContent()Lorg/jivesoftware/smackx/packet/JingleContent;

    move-result-object v2

    .line 404
    .local v2, content:Lorg/jivesoftware/smackx/packet/JingleContent;
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getJingleTransport(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)Lorg/jivesoftware/smackx/packet/JingleTransport;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/jivesoftware/smackx/packet/JingleContent;->addJingleTransport(Lorg/jivesoftware/smackx/packet/JingleTransport;)V

    .line 405
    invoke-virtual {v9, v2}, Lorg/jivesoftware/smackx/packet/Jingle;->addContent(Lorg/jivesoftware/smackx/packet/JingleContent;)V

    .line 408
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->val$js:Lorg/jivesoftware/smackx/jingle/JingleSession;

    iget-object v13, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->val$jin:Lorg/jivesoftware/smackx/packet/Jingle;

    invoke-virtual {v12, v13, v9}, Lorg/jivesoftware/smackx/jingle/JingleSession;->sendFormattedJingle(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smackx/packet/Jingle;

    .line 409
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->acceptedRemoteCandidates:Ljava/util/List;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$2(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    .end local v2           #content:Lorg/jivesoftware/smackx/packet/JingleContent;
    .end local v9           #jout:Lorg/jivesoftware/smackx/packet/Jingle;
    :cond_7
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #calls: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->isEstablished()Z
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$4(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 412
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v12

    sget-object v13, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->PENDING:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-ne v12, v13, :cond_8

    .line 413
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    sget-object v13, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {v12, v13}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    .line 414
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    .line 415
    iget-object v13, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v13}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getAcceptedLocalCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v13

    .line 414
    #calls: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->triggerTransportEstablished(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    invoke-static {v12, v13, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$5(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    goto/16 :goto_1

    .line 386
    .end local v0           #bestRemote:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :catch_0
    move-exception v3

    .line 387
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 383
    .end local v3           #e:Ljava/lang/InterruptedException;
    .restart local v0       #bestRemote:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 427
    .restart local v6       #foundRemoteRelay:Z
    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 428
    .local v1, candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    instance-of v13, v1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    if-eqz v13, :cond_0

    move-object v8, v1

    .line 429
    check-cast v8, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 430
    .local v8, iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-virtual {v8}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v13

    const-string v14, "relay"

    invoke-virtual {v13, v14}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 432
    iget-object v13, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #calls: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->addValidRemoteCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    invoke-static {v13, v8}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$1(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 433
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 444
    .end local v1           #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v8           #iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    .restart local v4       #foundLocalRelay:Z
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 445
    .restart local v1       #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    instance-of v13, v1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    if-eqz v13, :cond_1

    move-object v8, v1

    .line 446
    check-cast v8, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 447
    .restart local v8       #iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-virtual {v8}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v13

    const-string v14, "relay"

    invoke-virtual {v13, v14}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 448
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 454
    .end local v1           #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v8           #iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    .restart local v5       #foundRemotePublic:Z
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 455
    .restart local v1       #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    instance-of v13, v1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    if-eqz v13, :cond_2

    move-object v8, v1

    .line 456
    check-cast v8, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 457
    .restart local v8       #iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-virtual {v8}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v13

    .line 458
    sget-object v14, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->srflx:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    .line 457
    invoke-virtual {v13, v14}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 459
    iget-object v13, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #calls: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->addValidRemoteCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    invoke-static {v13, v8}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$1(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 460
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 465
    .end local v1           #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v8           #iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 466
    .restart local v1       #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    instance-of v13, v1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    if-eqz v13, :cond_3

    move-object v8, v1

    .line 467
    check-cast v8, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 468
    .restart local v8       #iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    iget-object v13, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #calls: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->addValidRemoteCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    invoke-static {v13, v8}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$1(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    goto/16 :goto_5

    .line 478
    .end local v1           #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v4           #foundLocalRelay:Z
    .end local v5           #foundRemotePublic:Z
    .end local v6           #foundRemoteRelay:Z
    .end local v8           #iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    :cond_d
    const-wide/16 v12, 0x1f4

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 483
    :goto_a
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getBestRemoteCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_f

    .line 486
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v12

    sget-object v13, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->PENDING:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-ne v12, v13, :cond_f

    .line 487
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->acceptedRemoteCandidates:Ljava/util/List;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$2(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 488
    new-instance v9, Lorg/jivesoftware/smackx/packet/Jingle;

    .line 489
    sget-object v12, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    .line 488
    invoke-direct {v9, v12}, Lorg/jivesoftware/smackx/packet/Jingle;-><init>(Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)V

    .line 490
    .restart local v9       #jout:Lorg/jivesoftware/smackx/packet/Jingle;
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->parentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$3(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    move-result-object v12

    .line 491
    invoke-virtual {v12}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getJingleContent()Lorg/jivesoftware/smackx/packet/JingleContent;

    move-result-object v2

    .line 492
    .restart local v2       #content:Lorg/jivesoftware/smackx/packet/JingleContent;
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    invoke-virtual {v12, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->getJingleTransport(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)Lorg/jivesoftware/smackx/packet/JingleTransport;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/jivesoftware/smackx/packet/JingleContent;->addJingleTransport(Lorg/jivesoftware/smackx/packet/JingleTransport;)V

    .line 493
    invoke-virtual {v9, v2}, Lorg/jivesoftware/smackx/packet/Jingle;->addContent(Lorg/jivesoftware/smackx/packet/JingleContent;)V

    .line 496
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->val$js:Lorg/jivesoftware/smackx/jingle/JingleSession;

    iget-object v13, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->val$jin:Lorg/jivesoftware/smackx/packet/Jingle;

    invoke-virtual {v12, v13, v9}, Lorg/jivesoftware/smackx/jingle/JingleSession;->sendFormattedJingle(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smackx/packet/Jingle;)Lorg/jivesoftware/smackx/packet/Jingle;

    .line 497
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->acceptedRemoteCandidates:Ljava/util/List;
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$2(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v2           #content:Lorg/jivesoftware/smackx/packet/JingleContent;
    .end local v9           #jout:Lorg/jivesoftware/smackx/packet/Jingle;
    :cond_e
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #calls: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->isEstablished()Z
    invoke-static {v12}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$4(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 500
    iget-object v12, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    sget-object v13, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {v12, v13}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V

    goto/16 :goto_7

    .line 479
    :catch_1
    move-exception v3

    .line 480
    .restart local v3       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    .line 476
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 509
    :catch_2
    move-exception v3

    .line 510
    .local v3, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto/16 :goto_8
.end method
