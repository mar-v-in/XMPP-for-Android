.class Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;
.super Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
.source "Socks5ClientForInitiator.java"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final sessionID:Ljava/lang/String;

.field private final target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "streamHost"
    .parameter "digest"
    .parameter "connection"
    .parameter "sessionID"
    .parameter "target"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;)V

    .line 63
    iput-object p3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 64
    iput-object p4, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->sessionID:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->target:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private activate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->createStreamHostActivation()Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    move-result-object v0

    .line 75
    .local v0, activate:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1, v0}, Lorg/jivesoftware/smack/util/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    .line 76
    return-void
.end method

.method private createStreamHostActivation()Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->sessionID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, activate:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setMode(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;)V

    .line 86
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 87
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setTo(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setToActivate(Ljava/lang/String;)V

    .line 91
    return-object v0
.end method


# virtual methods
.method public getSocket(I)Ljava/net/Socket;
    .locals 5
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 100
    .local v1, socket:Ljava/net/Socket;
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getSocks5Proxy()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    move-result-object v2

    .line 102
    .local v2, socks5Server:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->digest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 103
    if-nez v1, :cond_1

    .line 104
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    .line 105
    const-string v4, "target is not connected to SOCKS5 proxy"

    .line 104
    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    .end local v2           #socks5Server:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    :cond_0
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->getSocket(I)Ljava/net/Socket;

    move-result-object v1

    .line 111
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;->activate()V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 114
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "activating SOCKS5 Bytestream failed"

    invoke-direct {v3, v4, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
