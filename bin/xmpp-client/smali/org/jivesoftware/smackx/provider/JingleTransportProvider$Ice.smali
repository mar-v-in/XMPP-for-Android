.class public Lorg/jivesoftware/smackx/provider/JingleTransportProvider$Ice;
.super Lorg/jivesoftware/smackx/provider/JingleTransportProvider;
.source "JingleTransportProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/provider/JingleTransportProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ice"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/JingleTransportProvider;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected getInstance()Lorg/jivesoftware/smackx/packet/JingleTransport;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleTransport$Ice;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/JingleTransport$Ice;-><init>()V

    return-object v0
.end method

.method protected parseCandidate(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;
    .locals 14
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v3, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;-><init>()V

    .line 73
    .local v3, mt:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    const-string v12, ""

    const-string v13, "channel"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, channel:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "generation"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, generation:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "ip"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, ip:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "name"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, name:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "network"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, network:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "username"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, username:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "password"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, password:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "port"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, port:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "preference"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, preference:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "proto"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, proto:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "type"

    invoke-interface {p1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, type:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 88
    new-instance v12, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

    invoke-direct {v12, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setChannel(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;)V

    .line 91
    :cond_0
    if-eqz v1, :cond_1

    .line 93
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v12}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setGeneration(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 98
    :cond_1
    :goto_0
    if-eqz v2, :cond_a

    .line 99
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setIp(Ljava/lang/String;)V

    .line 104
    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setName(Ljava/lang/String;)V

    .line 108
    :cond_2
    if-eqz v5, :cond_3

    .line 110
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v12}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setNetwork(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 115
    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    .line 116
    invoke-virtual {v3, v11}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setUsername(Ljava/lang/String;)V

    .line 119
    :cond_4
    if-eqz v6, :cond_5

    .line 120
    invoke-virtual {v3, v6}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setPassword(Ljava/lang/String;)V

    .line 123
    :cond_5
    if-eqz v7, :cond_6

    .line 125
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v12}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setPort(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    :cond_6
    :goto_2
    if-eqz v8, :cond_7

    .line 132
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v12}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setPreference(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 137
    :cond_7
    :goto_3
    if-eqz v9, :cond_8

    .line 138
    new-instance v12, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    invoke-direct {v12, v9}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setProto(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;)V

    .line 141
    :cond_8
    if-eqz v10, :cond_9

    .line 142
    invoke-static {v10}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->setType(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;)V

    .line 145
    :cond_9
    new-instance v12, Lorg/jivesoftware/smackx/packet/JingleTransport$Ice$Candidate;

    invoke-direct {v12, v3}, Lorg/jivesoftware/smackx/packet/JingleTransport$Ice$Candidate;-><init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    :goto_4
    return-object v12

    .line 101
    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    .line 133
    :catch_0
    move-exception v12

    goto :goto_3

    .line 126
    :catch_1
    move-exception v12

    goto :goto_2

    .line 111
    :catch_2
    move-exception v12

    goto :goto_1

    .line 94
    :catch_3
    move-exception v12

    goto :goto_0
.end method
