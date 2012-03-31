.class public abstract Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
.super Ljava/lang/Object;
.source "TransportCandidate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;,
        Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;,
        Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;,
        Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# instance fields
.field private candidateEcho:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

.field private connection:Lorg/jivesoftware/smack/Connection;

.field private echoThread:Ljava/lang/Thread;

.field private generation:I

.field private ip:Ljava/lang/String;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Checker;",
            ">;"
        }
    .end annotation
.end field

.field private localIp:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field protected password:Ljava/lang/String;

.field private port:I

.field private sessionId:Ljava/lang/String;

.field private symmetric:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 566
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 565
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;-><init>(Ljava/lang/String;II)V

    .line 598
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;-><init>(Ljava/lang/String;II)V

    .line 610
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "ip"
    .parameter "port"
    .parameter "generation"

    .prologue
    const/4 v0, 0x0

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->candidateEcho:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    .line 588
    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->echoThread:Ljava/lang/Thread;

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->listeners:Ljava/util/List;

    .line 623
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->ip:Ljava/lang/String;

    .line 624
    iput p2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->port:I

    .line 625
    iput p3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->generation:I

    .line 626
    return-void
.end method

.method static synthetic access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;
    .locals 1

    .prologue
    .line 565
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    return-object v0
.end method


# virtual methods
.method public addCandidateEcho(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 2
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 630
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    invoke-direct {v0, p0, p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->candidateEcho:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    .line 631
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->candidateEcho:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->echoThread:Ljava/lang/Thread;

    .line 632
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->echoThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 633
    return-void
.end method

.method public addListener(Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Checker;)V
    .locals 2
    .parameter "li"

    .prologue
    .line 642
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    monitor-exit v1

    .line 645
    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public check(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p1, localCandidates:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$1;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 675
    const-string v2, "Transport candidate check"

    .line 658
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 677
    .local v0, checkThread:Ljava/lang/Thread;
    const-string v1, "Transport candidate test"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 679
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 688
    if-ne p0, p1, :cond_1

    .line 723
    :cond_0
    :goto_0
    return v1

    .line 691
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 692
    goto :goto_0

    .line 694
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 695
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 697
    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 698
    .local v0, other:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    iget v3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->generation:I

    iget v4, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->generation:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 699
    goto :goto_0

    .line 701
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 702
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 703
    goto :goto_0

    .line 705
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 706
    goto :goto_0

    .line 709
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v4

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 710
    goto :goto_0

    .line 713
    :cond_7
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 714
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    move v1, v2

    .line 715
    goto :goto_0

    .line 717
    :cond_8
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 718
    goto :goto_0

    .line 720
    :cond_9
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 721
    goto :goto_0
.end method

.method public getCandidateEcho()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->candidateEcho:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    return-object v0
.end method

.method public getConnection()Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method public getGeneration()I
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->generation:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getListenersList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Checker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 759
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->listeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->localIp:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->ip:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->localIp:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->port:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSymmetric()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->symmetric:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    return-object v0
.end method

.method public isNull()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 824
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->ip:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->ip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    iget v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->port:I

    if-ltz v1, :cond_0

    .line 831
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCandidateEcho()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 836
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->candidateEcho:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->candidateEcho:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;->cancel()V

    .line 839
    :cond_0
    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->candidateEcho:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$CandidateEcho;

    .line 840
    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->echoThread:Ljava/lang/Thread;

    .line 841
    return-void
.end method

.method public setConnection(Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 849
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->connection:Lorg/jivesoftware/smack/Connection;

    .line 850
    return-void
.end method

.method public setGeneration(I)V
    .locals 0
    .parameter "generation"

    .prologue
    .line 859
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->generation:I

    .line 860
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 869
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->ip:Ljava/lang/String;

    .line 870
    return-void
.end method

.method public setLocalIp(Ljava/lang/String;)V
    .locals 0
    .parameter "localIp"

    .prologue
    .line 878
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->localIp:Ljava/lang/String;

    .line 879
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 888
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->name:Ljava/lang/String;

    .line 889
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 898
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->password:Ljava/lang/String;

    .line 899
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 908
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->port:I

    .line 909
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionId"

    .prologue
    .line 917
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->sessionId:Ljava/lang/String;

    .line 918
    return-void
.end method

.method public setSymmetric(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter "symetric"

    .prologue
    .line 926
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->symmetric:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 927
    return-void
.end method

.method triggerCandidateChecked(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 937
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getListenersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 940
    return-void

    .line 937
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Checker;

    .line 938
    .local v0, trl:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Checker;
    invoke-interface {v0, p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Checker;->candidateChecked(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Z)V

    goto :goto_0
.end method
