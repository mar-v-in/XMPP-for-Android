.class Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1$1;
.super Ljava/lang/Object;
.source "ICECandidate.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/nat/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;

.field private final synthetic val$checkingCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

.field private final synthetic val$result:Lorg/jivesoftware/smackx/jingle/nat/TestResult;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;Lorg/jivesoftware/smackx/jingle/nat/TestResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;

    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1$1;->val$checkingCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1$1;->val$result:Lorg/jivesoftware/smackx/jingle/nat/TestResult;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public testFinished(Lorg/jivesoftware/smackx/jingle/nat/TestResult;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 3
    .parameter "testResult"
    .parameter "candidate"

    .prologue
    .line 164
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1$1;->val$checkingCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1$1;->val$result:Lorg/jivesoftware/smackx/jingle/nat/TestResult;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->setResult(Z)V

    .line 167
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->access$1()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Candidate reachable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-static {v2}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->access$0(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;)Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1$1;->this$1:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-static {v2}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;->access$0(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;)Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method
