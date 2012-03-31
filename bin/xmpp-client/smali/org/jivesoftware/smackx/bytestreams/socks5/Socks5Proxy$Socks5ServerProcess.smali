.class Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;
.super Ljava/lang/Object;
.source "Socks5Proxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Socks5ServerProcess"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)V

    return-void
.end method

.method private establishConnection(Ljava/net/Socket;)V
    .locals 14
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 90
    new-instance v7, Ljava/io/DataOutputStream;

    .line 91
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 90
    invoke-direct {v7, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 92
    .local v7, out:Ljava/io/DataOutputStream;
    new-instance v5, Ljava/io/DataInputStream;

    .line 93
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 92
    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    .local v5, in:Ljava/io/DataInputStream;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 97
    .local v2, b:I
    if-eq v2, v13, :cond_0

    .line 98
    new-instance v9, Lorg/jivesoftware/smack/XMPPException;

    const-string v10, "Only SOCKS5 supported"

    invoke-direct {v9, v10}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 102
    :cond_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 105
    new-array v0, v2, [B

    .line 106
    .local v0, auth:[B
    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 108
    const/4 v9, 0x2

    new-array v1, v9, [B

    .line 109
    .local v1, authMethodSelectionResponse:[B
    aput-byte v13, v1, v10

    .line 112
    const/4 v6, 0x0

    .line 113
    .local v6, noAuthMethodFound:Z
    array-length v11, v0

    move v9, v10

    :goto_0
    if-lt v9, v11, :cond_1

    .line 120
    :goto_1
    if-nez v6, :cond_3

    .line 121
    const/4 v9, -0x1

    aput-byte v9, v1, v12

    .line 123
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 124
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 125
    new-instance v9, Lorg/jivesoftware/smack/XMPPException;

    const-string v10, "Authentication method not supported"

    invoke-direct {v9, v10}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 113
    :cond_1
    aget-byte v4, v0, v9

    .line 114
    .local v4, element:B
    if-nez v4, :cond_2

    .line 115
    const/4 v6, 0x1

    .line 116
    goto :goto_1

    .line 113
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 128
    .end local v4           #element:B
    :cond_3
    aput-byte v10, v1, v12

    .line 130
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 131
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 135
    invoke-static {v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->receiveSocks5Message(Ljava/io/DataInputStream;)[B

    move-result-object v3

    .line 138
    .local v3, connectionRequest:[B
    new-instance v8, Ljava/lang/String;

    .line 139
    const/4 v9, 0x4

    aget-byte v9, v3, v9

    .line 138
    invoke-direct {v8, v3, v13, v9}, Ljava/lang/String;-><init>([BII)V

    .line 142
    .local v8, responseDigest:Ljava/lang/String;
    iget-object v9, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->allowedConnections:Ljava/util/List;
    invoke-static {v9}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$0(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 143
    aput-byte v13, v3, v12

    .line 145
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 146
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 148
    new-instance v9, Lorg/jivesoftware/smack/XMPPException;

    const-string v10, "Connection is not allowed"

    invoke-direct {v9, v10}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 151
    :cond_4
    aput-byte v10, v3, v12

    .line 153
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 154
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 157
    iget-object v9, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->connectionMap:Ljava/util/Map;
    invoke-static {v9}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$1(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 167
    .local v1, socket:Ljava/net/Socket;
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$2(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    :cond_1
    return-void

    .line 173
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$2(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 176
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->establishConnection(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v2

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 186
    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 188
    :catch_2
    move-exception v2

    goto :goto_0
.end method
