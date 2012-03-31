.class public Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;
.super Lorg/jivesoftware/smackx/packet/JingleTransport;
.source "JingleTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/JingleTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawUdp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp$Candidate;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "http://www.xmpp.org/extensions/xep-0177.html#ns"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;-><init>()V

    .line 279
    const-string v0, "http://www.xmpp.org/extensions/xep-0177.html#ns"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;->setNamespace(Ljava/lang/String;)V

    .line 280
    return-void
.end method


# virtual methods
.method public addCandidate(Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;)V
    .locals 1
    .parameter "candidate"

    .prologue
    .line 289
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;->candidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/packet/JingleTransport;->addCandidate(Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;)V

    .line 291
    return-void
.end method

.method public getCandidatesList()Ljava/util/List;
    .locals 3
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
    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v0, copy:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    invoke-super {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;->getCandidatesList()Ljava/util/List;

    move-result-object v1

    .line 304
    .local v1, superCandidatesList:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 305
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_0
    return-object v0
.end method
