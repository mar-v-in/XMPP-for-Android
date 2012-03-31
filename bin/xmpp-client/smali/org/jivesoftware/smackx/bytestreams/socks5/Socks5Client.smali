.class Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
.super Ljava/lang/Object;
.source "Socks5Client.java"


# instance fields
.field protected digest:Ljava/lang/String;

.field protected streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;)V
    .locals 0
    .parameter "streamHost"
    .parameter "digest"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 57
    iput-object p2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->digest:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private createSocks5ConnectRequest()[B
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->digest:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 71
    .local v0, addr:[B
    array-length v2, v0

    add-int/lit8 v2, v2, 0x7

    new-array v1, v2, [B

    .line 72
    .local v1, data:[B
    aput-byte v6, v1, v4

    .line 73
    aput-byte v3, v1, v3

    .line 74
    const/4 v2, 0x2

    aput-byte v4, v1, v2

    .line 75
    aput-byte v5, v1, v5

    .line 76
    const/4 v2, 0x4

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 77
    array-length v2, v0

    invoke-static {v0, v4, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aput-byte v4, v1, v2

    .line 79
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v4, v1, v2

    .line 81
    return-object v1
.end method


# virtual methods
.method protected establish(Ljava/net/Socket;)Z
    .locals 12
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 108
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    .line 110
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 109
    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    .local v5, out:Ljava/io/DataOutputStream;
    const/4 v8, 0x3

    new-array v0, v8, [B

    .line 115
    .local v0, cmd:[B
    aput-byte v11, v0, v7

    .line 116
    aput-byte v9, v0, v9

    .line 117
    aput-byte v7, v0, v10

    .line 120
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 121
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 123
    new-array v6, v10, [B

    .line 124
    .local v6, response:[B
    invoke-virtual {v4, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 128
    aget-byte v8, v6, v7

    if-ne v8, v11, :cond_0

    aget-byte v8, v6, v9

    if-eqz v8, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v7

    .line 133
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->createSocks5ConnectRequest()[B

    move-result-object v1

    .line 134
    .local v1, connectionRequest:[B
    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 135
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 140
    :try_start_0
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->receiveSocks5Message(Ljava/io/DataInputStream;)[B
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 146
    .local v2, connectionResponse:[B
    aput-byte v7, v1, v9

    .line 147
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    goto :goto_0

    .line 141
    .end local v2           #connectionResponse:[B
    :catch_0
    move-exception v3

    .line 142
    .local v3, e:Lorg/jivesoftware/smack/XMPPException;
    goto :goto_0
.end method

.method public getSocket(I)Ljava/net/Socket;
    .locals 7
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
    .line 170
    new-instance v3, Ljava/util/concurrent/FutureTask;

    .line 171
    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;

    invoke-direct {v4, p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;)V

    .line 170
    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 196
    .local v3, futureTask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/net/Socket;>;"
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 197
    .local v2, executor:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 201
    int-to-long v4, p1

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Socket;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 204
    .local v0, cause:Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 206
    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_0

    .line 207
    check-cast v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 209
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_0
    instance-of v4, v0, Lorg/jivesoftware/smack/XMPPException;

    if-eqz v4, :cond_1

    .line 210
    check-cast v0, Lorg/jivesoftware/smack/XMPPException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 215
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Error while connection to SOCKS5 proxy"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
