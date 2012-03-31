.class Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;
.super Ljava/lang/Object;
.source "ICECandidate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->check(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

.field private final synthetic val$checkingCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

.field private final synthetic val$localCandidates:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;Ljava/util/List;Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->val$localCandidates:Ljava/util/List;

    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->val$checkingCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;)Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 149
    new-instance v5, Lorg/jivesoftware/smackx/jingle/nat/TestResult;

    invoke-direct {v5}, Lorg/jivesoftware/smackx/jingle/nat/TestResult;-><init>()V

    .line 155
    .local v5, result:Lorg/jivesoftware/smackx/jingle/nat/TestResult;
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v7

    const-string v8, "relay"

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 156
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->triggerCandidateChecked(Z)V

    .line 214
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v6, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1$1;

    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->val$checkingCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-direct {v6, p0, v7, v5}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1$1;-><init>(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;Lorg/jivesoftware/smackx/jingle/nat/TestResult;)V

    .line 175
    .local v6, resultListener:Lorg/jivesoftware/smackx/jingle/nat/ResultListener;
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->val$localCandidates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 194
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/16 v7, 0xa

    if-ge v3, v7, :cond_2

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->isReachable()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 203
    :cond_2
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->val$localCandidates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 210
    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->isReachable()Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->triggerCandidateChecked(Z)V

    goto :goto_0

    .line 175
    .end local v3           #i:I
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 176
    .local v0, candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getCandidateEcho()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    move-result-object v2

    .line 177
    .local v2, echo:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    if-eqz v2, :cond_1

    .line 178
    instance-of v8, v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    if-eqz v8, :cond_1

    move-object v4, v0

    .line 179
    check-cast v4, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 180
    .local v4, iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v8

    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-virtual {v9}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 182
    :try_start_0
    invoke-virtual {v2, v6}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->addResultListener(Lorg/jivesoftware/smackx/jingle/nat/ResultListener;)V

    .line 183
    iget-object v8, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getIp()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 184
    iget-object v8, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->val$checkingCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 185
    iget-object v9, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-virtual {v9}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPassword()Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-virtual {v2, v8, v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->testASync(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v0           #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v1           #e:Ljava/net/UnknownHostException;
    .end local v2           #echo:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    .end local v4           #iceCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    .restart local v3       #i:I
    :cond_5
    :try_start_1
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->access$1()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ICE Candidate retry #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->error(Ljava/lang/String;)V

    .line 197
    const-wide/16 v7, 0x190

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 198
    :catch_1
    move-exception v1

    .line 199
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 203
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 204
    .restart local v0       #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getCandidateEcho()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    move-result-object v2

    .line 205
    .restart local v2       #echo:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    if-eqz v2, :cond_3

    .line 206
    invoke-virtual {v2, v6}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->removeResultListener(Lorg/jivesoftware/smackx/jingle/nat/ResultListener;)V

    goto/16 :goto_3
.end method
