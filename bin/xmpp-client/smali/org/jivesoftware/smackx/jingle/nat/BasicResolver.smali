.class public Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;
.super Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
.source "BasicResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;-><init>()V

    .line 42
    return-void
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
    .line 47
    return-void
.end method

.method public initialize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->setInitialized()V

    .line 52
    return-void
.end method

.method public declared-synchronized resolve(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 9
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->setResolveInit()V

    .line 66
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->clearCandidates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const/4 v5, 0x0

    .line 71
    .local v5, ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 76
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 101
    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    .line 106
    :cond_1
    :goto_1
    :try_start_4
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-nez v7, :cond_6

    .line 130
    :try_start_5
    new-instance v6, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    .line 131
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 132
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 133
    :goto_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->getFreePort()I

    move-result v8

    .line 130
    invoke-direct {v6, v7, v8}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;-><init>(Ljava/lang/String;I)V

    .line 134
    .local v6, tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 135
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 134
    :goto_3
    invoke-virtual {v6, v7}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v6}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->addCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 141
    .end local v6           #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->setResolveEnd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 143
    :goto_5
    monitor-exit p0

    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/net/SocketException;
    :try_start_7
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 64
    .end local v0           #e:Ljava/net/SocketException;
    .end local v5           #ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 79
    .restart local v5       #ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    :try_start_8
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 80
    .local v4, iface:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 82
    .local v3, iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 84
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 85
    .local v1, iaddress:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_3

    .line 86
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v7

    if-nez v7, :cond_3

    .line 87
    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v7

    if-nez v7, :cond_3

    .line 88
    new-instance v6, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    .line 89
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 90
    :goto_6
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->getFreePort()I

    move-result v8

    .line 88
    invoke-direct {v6, v7, v8}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;-><init>(Ljava/lang/String;I)V

    .line 91
    .restart local v6       #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 92
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 91
    :goto_7
    invoke-virtual {v6, v7}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v6}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->addCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 94
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->setResolveEnd()V

    goto :goto_5

    .line 90
    .end local v6           #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :cond_4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 92
    .restart local v6       #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :cond_5
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 102
    .end local v1           #iaddress:Ljava/net/InetAddress;
    .end local v3           #iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4           #iface:Ljava/net/NetworkInterface;
    .end local v6           #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :catch_1
    move-exception v0

    .line 103
    .restart local v0       #e:Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto/16 :goto_1

    .line 109
    .end local v0           #e:Ljava/net/SocketException;
    :cond_6
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 110
    .restart local v4       #iface:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 112
    .local v2, iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 114
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 115
    .restart local v1       #iaddress:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_7

    .line 116
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v7

    if-nez v7, :cond_7

    .line 117
    new-instance v6, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    .line 118
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 119
    :goto_8
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->getFreePort()I

    move-result v8

    .line 117
    invoke-direct {v6, v7, v8}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;-><init>(Ljava/lang/String;I)V

    .line 120
    .restart local v6       #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 121
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 120
    :goto_9
    invoke-virtual {v6, v7}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v6}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->addCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 123
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/BasicResolver;->setResolveEnd()V

    goto/16 :goto_5

    .line 119
    .end local v6           #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :cond_8
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 121
    .restart local v6       #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :cond_9
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v7

    goto :goto_9

    .line 133
    .end local v1           #iaddress:Ljava/net/InetAddress;
    .end local v2           #iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v4           #iface:Ljava/net/NetworkInterface;
    .end local v6           #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :cond_a
    :try_start_9
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 136
    .restart local v6       #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :cond_b
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v7

    goto/16 :goto_3

    .line 138
    .end local v6           #tr:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :catch_2
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4
.end method
