.class public Lorg/jivesoftware/smackx/provider/JingleTransportProvider$RawUdp;
.super Lorg/jivesoftware/smackx/provider/JingleTransportProvider;
.source "JingleTransportProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/provider/JingleTransportProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawUdp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/JingleTransportProvider;-><init>()V

    .line 159
    return-void
.end method


# virtual methods
.method protected getInstance()Lorg/jivesoftware/smackx/packet/JingleTransport;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp;-><init>()V

    return-object v0
.end method

.method protected parseCandidate(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v2, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;-><init>()V

    .line 185
    .local v2, mt:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;
    const-string v5, ""

    const-string v6, "generation"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, generation:Ljava/lang/String;
    const-string v5, ""

    const-string v6, "ip"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, ip:Ljava/lang/String;
    const-string v5, ""

    const-string v6, "name"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, name:Ljava/lang/String;
    const-string v5, ""

    const-string v6, "port"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, port:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;->setGeneration(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;->setIp(Ljava/lang/String;)V

    .line 203
    :cond_1
    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;->setName(Ljava/lang/String;)V

    .line 207
    :cond_2
    if-eqz v4, :cond_3

    .line 209
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;->setPort(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :cond_3
    :goto_1
    new-instance v5, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp$Candidate;

    invoke-direct {v5, v2}, Lorg/jivesoftware/smackx/packet/JingleTransport$RawUdp$Candidate;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    return-object v5

    .line 210
    :catch_0
    move-exception v5

    goto :goto_1

    .line 195
    :catch_1
    move-exception v5

    goto :goto_0
.end method
