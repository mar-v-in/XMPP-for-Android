.class public Lorg/jivesoftware/smackx/packet/JingleTransport$Ice;
.super Lorg/jivesoftware/smackx/packet/JingleTransport;
.source "JingleTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/JingleTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/JingleTransport$Ice$Candidate;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:tmp:jingle:transports:ice-udp"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;-><init>()V

    .line 102
    const-string v0, "urn:xmpp:tmp:jingle:transports:ice-udp"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/JingleTransport$Ice;->setNamespace(Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method public addCandidate(Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;)V
    .locals 0
    .parameter "candidate"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/packet/JingleTransport;->addCandidate(Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;)V

    .line 113
    return-void
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
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, copy:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    invoke-super {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport;->getCandidatesList()Ljava/util/List;

    move-result-object v2

    .line 126
    .local v2, superCandidatesList:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 130
    return-object v0

    .line 127
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
