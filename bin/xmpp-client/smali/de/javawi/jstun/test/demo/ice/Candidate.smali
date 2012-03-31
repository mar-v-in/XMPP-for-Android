.class public Lde/javawi/jstun/test/demo/ice/Candidate;
.super Ljava/lang/Object;
.source "Candidate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lde/javawi/jstun/test/demo/ice/Candidate;",
        ">;"
    }
.end annotation


# instance fields
.field private base:Lde/javawi/jstun/test/demo/ice/Candidate;

.field private componentId:S

.field private foundationId:I

.field private isInUse:Z

.field private priority:I

.field private final socket:Ljava/net/DatagramSocket;

.field private final type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;


# direct methods
.method public constructor <init>(Lde/javawi/jstun/util/Address;Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;SLde/javawi/jstun/test/demo/ice/Candidate;)V
    .locals 3
    .parameter "address"
    .parameter "type"
    .parameter "componentId"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->socket:Ljava/net/DatagramSocket;

    .line 41
    iput-object p2, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    .line 42
    invoke-virtual {p0, p3}, Lde/javawi/jstun/test/demo/ice/Candidate;->setComponentId(S)V

    .line 43
    iput v2, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->priority:I

    .line 44
    iput-object p4, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->base:Lde/javawi/jstun/test/demo/ice/Candidate;

    .line 45
    iput-boolean v2, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->isInUse:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lde/javawi/jstun/util/Address;S)V
    .locals 3
    .parameter "address"
    .parameter "componentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->socket:Ljava/net/DatagramSocket;

    .line 51
    sget-object v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->Local:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    iput-object v0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    .line 52
    iput-short p2, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->componentId:S

    .line 53
    iput v2, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->priority:I

    .line 54
    iput-object p0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->base:Lde/javawi/jstun/test/demo/ice/Candidate;

    .line 55
    iput-boolean v2, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->isInUse:Z

    .line 56
    return-void
.end method


# virtual methods
.method public compareTo(Lde/javawi/jstun/test/demo/ice/Candidate;)I
    .locals 2
    .parameter "cand"

    .prologue
    .line 60
    invoke-virtual {p1}, Lde/javawi/jstun/test/demo/ice/Candidate;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Lde/javawi/jstun/test/demo/ice/Candidate;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lde/javawi/jstun/test/demo/ice/Candidate;

    invoke-virtual {p0, p1}, Lde/javawi/jstun/test/demo/ice/Candidate;->compareTo(Lde/javawi/jstun/test/demo/ice/Candidate;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p1, :cond_0

    move v0, v1

    .line 72
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    move-object v0, p1

    .line 68
    check-cast v0, Lde/javawi/jstun/test/demo/ice/Candidate;

    iget-object v0, v0, Lde/javawi/jstun/test/demo/ice/Candidate;->socket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    check-cast p1, Lde/javawi/jstun/test/demo/ice/Candidate;

    .end local p1
    iget-object v0, p1, Lde/javawi/jstun/test/demo/ice/Candidate;->base:Lde/javawi/jstun/test/demo/ice/Candidate;

    iget-object v2, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->base:Lde/javawi/jstun/test/demo/ice/Candidate;

    invoke-virtual {v0, v2}, Lde/javawi/jstun/test/demo/ice/Candidate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 72
    goto :goto_0
.end method

.method public getAddress()Lde/javawi/jstun/util/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lde/javawi/jstun/util/Address;

    iget-object v1, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lde/javawi/jstun/util/Address;-><init>([B)V

    return-object v0
.end method

.method public getBase()Lde/javawi/jstun/test/demo/ice/Candidate;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->base:Lde/javawi/jstun/test/demo/ice/Candidate;

    return-object v0
.end method

.method public getCandidateType()Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    return-object v0
.end method

.method public getComponentId()S
    .locals 1

    .prologue
    .line 88
    iget-short v0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->componentId:S

    return v0
.end method

.method public getFoundationId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->foundationId:I

    return v0
.end method

.method public getInUse()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->isInUse:Z

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->priority:I

    return v0
.end method

.method public setBase(Lde/javawi/jstun/test/demo/ice/Candidate;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 108
    iput-object p1, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->base:Lde/javawi/jstun/test/demo/ice/Candidate;

    .line 109
    return-void
.end method

.method public setComponentId(S)V
    .locals 3
    .parameter "componentId"

    .prologue
    .line 112
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x100

    if-le p1, v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v2, " is not between 1 and 256 inclusive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iput-short p1, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->componentId:S

    .line 117
    return-void
.end method

.method public setFoundationId(I)V
    .locals 0
    .parameter "foundationId"

    .prologue
    .line 120
    iput p1, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->foundationId:I

    .line 121
    return-void
.end method

.method public setInUse(Z)V
    .locals 0
    .parameter "isInUse"

    .prologue
    .line 124
    iput-boolean p1, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->isInUse:Z

    .line 125
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 128
    iput p1, p0, Lde/javawi/jstun/test/demo/ice/Candidate;->priority:I

    .line 129
    return-void
.end method
