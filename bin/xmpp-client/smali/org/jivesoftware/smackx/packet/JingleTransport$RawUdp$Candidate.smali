.class public Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp$Candidate;
.super Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;
.source "JingleTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Candidate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;-><init>()V

    .line 239
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter "tc"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 246
    return-void
.end method


# virtual methods
.method protected getChildElements()Ljava/lang/String;
    .locals 5

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp$Candidate;->transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    if-eqz v3, :cond_0

    .line 256
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp$Candidate;->transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    instance-of v3, v3, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    if-eqz v3, :cond_0

    .line 257
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp$Candidate;->transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    check-cast v2, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    .line 259
    .local v2, tcf:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;
    const-string v3, " generation=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;->getGeneration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v3, " ip=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v3, " port=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;->getName()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 267
    const-string v3, " name=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #tcf:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
