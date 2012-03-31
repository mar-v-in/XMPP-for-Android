.class public Lorg/jivesoftware/smackx/packet/JingleTransport;
.super Ljava/lang/Object;
.source "JingleTransport.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/JingleTransport$Ice;,
        Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;,
        Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;
    }
.end annotation


# static fields
.field public static final NODENAME:Ljava/lang/String; = "transport"


# instance fields
.field protected final candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;",
            ">;"
        }
    .end annotation
.end field

.field protected namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    .line 323
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;)V
    .locals 1
    .parameter "candidate"

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    .line 349
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/packet/JingleTransport;->addCandidate(Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/packet/JingleTransport;)V
    .locals 2
    .parameter "tr"

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p1, Lorg/jivesoftware/smackx/packet/JingleTransport;->namespace:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->namespace:Ljava/lang/String;

    .line 335
    iget-object v0, p1, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 336
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    iget-object v1, p1, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public addCandidate(Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;)V
    .locals 2
    .parameter "candidate"

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    monitor-exit v1

    .line 364
    :cond_0
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCandidates()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;->getCandidatesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getCandidatesCount()I
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;->getCandidatesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCandidatesList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    monitor-enter v3

    .line 392
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    .end local v0           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    .local v1, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    return-object v1

    .line 391
    .end local v1           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    .restart local v0       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    .restart local v1       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    .restart local v0       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    goto :goto_0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    const-string v0, "transport"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method protected setNamespace(Ljava/lang/String;)V
    .locals 0
    .parameter "ns"

    .prologue
    .line 426
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->namespace:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xmlns=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/JingleTransport;->candidates:Ljava/util/List;

    monitor-enter v4

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;->getCandidatesCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 441
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;->getCandidates()Ljava/util/Iterator;

    move-result-object v2

    .line 444
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 446
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;

    .line 447
    .local v1, candidate:Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 439
    .end local v1           #candidate:Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 451
    :cond_1
    :try_start_2
    const-string v3, "/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
