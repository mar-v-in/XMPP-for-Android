.class public Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;
.super Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
.source "BridgedResolver.java"


# instance fields
.field connection:Lorg/jivesoftware/smack/Connection;

.field random:Ljava/util/Random;

.field sid:J


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;-><init>()V

    .line 82
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->random:Ljava/util/Random;

    .line 92
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->connection:Lorg/jivesoftware/smack/Connection;

    .line 93
    return-void
.end method

.method public static getLocalHost()Ljava/lang/String;
    .locals 6

    .prologue
    .line 44
    const/4 v4, 0x0

    .line 47
    .local v4, ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 76
    :goto_1
    return-object v5

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/net/SocketException;
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 56
    .local v3, iface:Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 58
    .local v2, iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 61
    .local v1, iaddress:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 62
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 63
    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 64
    instance-of v5, v1, Ljava/net/Inet6Address;

    if-nez v5, :cond_2

    .line 65
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 72
    .end local v1           #iaddress:Ljava/net/InetAddress;
    .end local v2           #iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #iface:Ljava/net/NetworkInterface;
    :catch_1
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string v5, "127.0.0.1"

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->clearCandidates()V

    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->serviceAvailable(Lorg/jivesoftware/smack/Connection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->setInitialized()V

    .line 107
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No RTP Bridge service available"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->setInitialized()V

    .line 111
    return-void
.end method

.method public declared-synchronized resolve(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 7
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->setResolveInit()V

    .line 125
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->clearCandidates()V

    .line 127
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->sid:J

    .line 129
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->connection:Lorg/jivesoftware/smack/Connection;

    .line 130
    iget-wide v5, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->sid:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-static {v4, v5}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getRTPBridge(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;

    move-result-object v3

    .line 132
    .local v3, rtpBridge:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->getLocalHost()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, localIp:Ljava/lang/String;
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    .line 135
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPortA()I

    move-result v5

    .line 134
    invoke-direct {v0, v4, v5}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;-><init>(Ljava/lang/String;I)V

    .line 136
    .local v0, localCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V

    .line 138
    new-instance v2, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    .line 139
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPortB()I

    move-result v5

    .line 138
    invoke-direct {v2, v4, v5}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;-><init>(Ljava/lang/String;I)V

    .line 140
    .local v2, remoteCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setSymmetric(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 143
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setSymmetric(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 145
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setPassword(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setPassword(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setSessionId(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setSessionId(Ljava/lang/String;)V

    .line 151
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setConnection(Lorg/jivesoftware/smack/Connection;)V

    .line 152
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setConnection(Lorg/jivesoftware/smack/Connection;)V

    .line 154
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->addCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 156
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BridgedResolver;->setResolveEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 123
    .end local v0           #localCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v1           #localIp:Ljava/lang/String;
    .end local v2           #remoteCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .end local v3           #rtpBridge:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
