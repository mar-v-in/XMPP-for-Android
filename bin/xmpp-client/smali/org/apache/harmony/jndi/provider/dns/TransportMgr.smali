.class public Lorg/apache/harmony/jndi/provider/dns/TransportMgr;
.super Ljava/lang/Object;
.source "TransportMgr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIPByName_OS(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .parameter "hostname"

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 54
    .local v0, addr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sendReceiveTCP(Ljava/lang/String;I[BI[BII)I
    .locals 15
    .parameter "server"
    .parameter "serverPort"
    .parameter "outBuf"
    .parameter "outBufLen"
    .parameter "inBuf"
    .parameter "inBufLen"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v11, 0x0

    check-cast v11, [B

    .line 96
    .local v11, srvAddrArr:[B
    const/4 v10, 0x0

    .line 97
    .local v10, srvAddr:Ljava/net/InetAddress;
    const/4 v8, 0x0

    .line 98
    .local v8, socket:Ljava/net/Socket;
    const/4 v4, 0x0

    .line 99
    .local v4, iStream:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 100
    .local v6, oStream:Ljava/io/BufferedOutputStream;
    const/4 v13, 0x2

    new-array v12, v13, [B

    .line 102
    .local v12, tmpArr:[B
    const/4 v2, -0x1

    .line 105
    .local v2, actualLen:I
    :try_start_0
    invoke-static {p0}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseIpStr(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 111
    :try_start_1
    invoke-static {v11}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v10

    .line 112
    new-instance v9, Ljava/net/Socket;

    move/from16 v0, p1

    invoke-direct {v9, v10, v0}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 113
    .end local v8           #socket:Ljava/net/Socket;
    .local v9, socket:Ljava/net/Socket;
    :try_start_2
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 114
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 115
    .end local v6           #oStream:Ljava/io/BufferedOutputStream;
    .local v7, oStream:Ljava/io/BufferedOutputStream;
    const/4 v13, 0x0

    :try_start_3
    move/from16 v0, p3

    invoke-static {v0, v12, v13}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    .line 116
    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {v7, v12, v13, v14}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 117
    const/4 v13, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v7, v0, v13, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 118
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 119
    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 120
    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {v4, v12, v13, v14}, Ljava/io/InputStream;->read([BII)I

    .line 121
    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v5

    .line 122
    .local v5, inLen:I
    move/from16 v0, p5

    if-le v5, v0, :cond_1

    .line 124
    new-instance v13, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v14, "jndi.43"

    invoke-static {v14}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 131
    .end local v5           #inLen:I
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7           #oStream:Ljava/io/BufferedOutputStream;
    .restart local v6       #oStream:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 133
    .end local v9           #socket:Ljava/net/Socket;
    .local v3, e:Ljava/lang/IllegalStateException;
    .restart local v8       #socket:Ljava/net/Socket;
    :goto_0
    :try_start_4
    new-instance v13, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v14, "jndi.41"

    invoke-static {v14}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v3}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    .end local v3           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v13

    .line 140
    :goto_1
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    move-result v14

    if-nez v14, :cond_0

    .line 142
    :try_start_5
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 146
    :cond_0
    :goto_2
    throw v13

    .line 106
    :catch_1
    move-exception v3

    .line 108
    .local v3, e:Ljava/lang/IllegalArgumentException;
    new-instance v13, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v14, "jndi.40"

    invoke-static {v14}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 126
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v6           #oStream:Ljava/io/BufferedOutputStream;
    .end local v8           #socket:Ljava/net/Socket;
    .restart local v5       #inLen:I
    .restart local v7       #oStream:Ljava/io/BufferedOutputStream;
    .restart local v9       #socket:Ljava/net/Socket;
    :cond_1
    const/4 v13, 0x0

    :try_start_6
    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v13, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 127
    if-eq v2, v5, :cond_2

    .line 129
    new-instance v13, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v14, "jndi.44"

    invoke-static {v14}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 134
    .end local v5           #inLen:I
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7           #oStream:Ljava/io/BufferedOutputStream;
    .restart local v6       #oStream:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 135
    .end local v9           #socket:Ljava/net/Socket;
    .local v3, e:Ljava/net/SocketTimeoutException;
    .restart local v8       #socket:Ljava/net/Socket;
    :goto_3
    :try_start_7
    throw v3

    .line 136
    .end local v3           #e:Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v3

    .line 138
    .local v3, e:Ljava/io/IOException;
    :goto_4
    new-instance v13, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v14, "jndi.41"

    invoke-static {v14}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v3}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 140
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #oStream:Ljava/io/BufferedOutputStream;
    .end local v8           #socket:Ljava/net/Socket;
    .restart local v5       #inLen:I
    .restart local v7       #oStream:Ljava/io/BufferedOutputStream;
    .restart local v9       #socket:Ljava/net/Socket;
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/net/Socket;->isClosed()Z

    move-result v13

    if-nez v13, :cond_3

    .line 142
    :try_start_8
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 147
    :cond_3
    :goto_5
    return v2

    .line 143
    .end local v5           #inLen:I
    .end local v7           #oStream:Ljava/io/BufferedOutputStream;
    .end local v9           #socket:Ljava/net/Socket;
    .restart local v6       #oStream:Ljava/io/BufferedOutputStream;
    .restart local v8       #socket:Ljava/net/Socket;
    :catch_4
    move-exception v14

    goto :goto_2

    .end local v6           #oStream:Ljava/io/BufferedOutputStream;
    .end local v8           #socket:Ljava/net/Socket;
    .restart local v5       #inLen:I
    .restart local v7       #oStream:Ljava/io/BufferedOutputStream;
    .restart local v9       #socket:Ljava/net/Socket;
    :catch_5
    move-exception v13

    goto :goto_5

    .line 139
    .end local v5           #inLen:I
    .end local v7           #oStream:Ljava/io/BufferedOutputStream;
    .restart local v6       #oStream:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9           #socket:Ljava/net/Socket;
    .restart local v8       #socket:Ljava/net/Socket;
    goto :goto_1

    .end local v6           #oStream:Ljava/io/BufferedOutputStream;
    .end local v8           #socket:Ljava/net/Socket;
    .restart local v7       #oStream:Ljava/io/BufferedOutputStream;
    .restart local v9       #socket:Ljava/net/Socket;
    :catchall_2
    move-exception v13

    move-object v6, v7

    .end local v7           #oStream:Ljava/io/BufferedOutputStream;
    .restart local v6       #oStream:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9           #socket:Ljava/net/Socket;
    .restart local v8       #socket:Ljava/net/Socket;
    goto :goto_1

    .line 136
    .end local v8           #socket:Ljava/net/Socket;
    .restart local v9       #socket:Ljava/net/Socket;
    :catch_6
    move-exception v3

    move-object v8, v9

    .end local v9           #socket:Ljava/net/Socket;
    .restart local v8       #socket:Ljava/net/Socket;
    goto :goto_4

    .end local v6           #oStream:Ljava/io/BufferedOutputStream;
    .end local v8           #socket:Ljava/net/Socket;
    .restart local v7       #oStream:Ljava/io/BufferedOutputStream;
    .restart local v9       #socket:Ljava/net/Socket;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7           #oStream:Ljava/io/BufferedOutputStream;
    .restart local v6       #oStream:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9           #socket:Ljava/net/Socket;
    .restart local v8       #socket:Ljava/net/Socket;
    goto :goto_4

    .line 134
    :catch_8
    move-exception v3

    goto :goto_3

    .end local v8           #socket:Ljava/net/Socket;
    .restart local v9       #socket:Ljava/net/Socket;
    :catch_9
    move-exception v3

    move-object v8, v9

    .end local v9           #socket:Ljava/net/Socket;
    .restart local v8       #socket:Ljava/net/Socket;
    goto :goto_3

    .line 131
    :catch_a
    move-exception v3

    goto :goto_0

    .end local v8           #socket:Ljava/net/Socket;
    .restart local v9       #socket:Ljava/net/Socket;
    :catch_b
    move-exception v3

    move-object v8, v9

    .end local v9           #socket:Ljava/net/Socket;
    .restart local v8       #socket:Ljava/net/Socket;
    goto :goto_0
.end method

.method public static sendReceiveUDP(Ljava/lang/String;I[BI[BII)I
    .locals 13
    .parameter "server"
    .parameter "serverPort"
    .parameter "outBuf"
    .parameter "outBufLen"
    .parameter "inBuf"
    .parameter "inBufLen"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v10, 0x0

    check-cast v10, [B

    .line 184
    .local v10, srvAddrArr:[B
    const/4 v9, 0x0

    .line 185
    .local v9, srvAddr:Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 186
    .local v2, dSocket:Ljava/net/DatagramSocket;
    const/4 v5, 0x0

    .line 187
    .local v5, inPacket:Ljava/net/DatagramPacket;
    const/4 v7, 0x0

    .line 190
    .local v7, outPacket:Ljava/net/DatagramPacket;
    :try_start_0
    invoke-static {p0}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseIpStr(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 196
    :try_start_1
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 197
    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .local v3, dSocket:Ljava/net/DatagramSocket;
    :try_start_2
    invoke-static {v10}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v9

    .line 198
    invoke-virtual {v3, v9, p1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 199
    new-instance v8, Ljava/net/DatagramPacket;

    move/from16 v0, p3

    invoke-direct {v8, p2, v0, v9, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 201
    .end local v7           #outPacket:Ljava/net/DatagramPacket;
    .local v8, outPacket:Ljava/net/DatagramPacket;
    :try_start_3
    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 202
    invoke-virtual {v3, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 203
    new-instance v6, Ljava/net/DatagramPacket;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v6, v0, v1, v9, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 204
    .end local v5           #inPacket:Ljava/net/DatagramPacket;
    .local v6, inPacket:Ljava/net/DatagramPacket;
    :try_start_4
    invoke-virtual {v3, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 214
    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 218
    :cond_0
    if-eqz v6, :cond_2

    .line 219
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    return v11

    .line 191
    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .end local v6           #inPacket:Ljava/net/DatagramPacket;
    .end local v8           #outPacket:Ljava/net/DatagramPacket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    .restart local v5       #inPacket:Ljava/net/DatagramPacket;
    .restart local v7       #outPacket:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v4

    .line 193
    .local v4, e:Ljava/lang/IllegalArgumentException;
    new-instance v11, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v12, "jndi.40"

    invoke-static {v12}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 205
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .line 207
    .local v4, e:Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_5
    new-instance v11, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v12, "jndi.41"

    invoke-static {v12}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v4}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    .end local v4           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v11

    .line 214
    :goto_1
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 217
    :cond_1
    throw v11

    .line 208
    :catch_2
    move-exception v4

    .line 209
    .local v4, e:Ljava/net/SocketTimeoutException;
    :goto_2
    :try_start_6
    throw v4

    .line 210
    .end local v4           #e:Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v4

    .line 212
    .local v4, e:Ljava/io/IOException;
    :goto_3
    new-instance v11, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v12, "jndi.41"

    invoke-static {v12}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v4}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 222
    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #inPacket:Ljava/net/DatagramPacket;
    .end local v7           #outPacket:Ljava/net/DatagramPacket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    .restart local v6       #inPacket:Ljava/net/DatagramPacket;
    .restart local v8       #outPacket:Ljava/net/DatagramPacket;
    :cond_2
    new-instance v11, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v12, "jndi.42"

    invoke-static {v12}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 213
    .end local v6           #inPacket:Ljava/net/DatagramPacket;
    .end local v8           #outPacket:Ljava/net/DatagramPacket;
    .restart local v5       #inPacket:Ljava/net/DatagramPacket;
    .restart local v7       #outPacket:Ljava/net/DatagramPacket;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_1

    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .end local v7           #outPacket:Ljava/net/DatagramPacket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    .restart local v8       #outPacket:Ljava/net/DatagramPacket;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8           #outPacket:Ljava/net/DatagramPacket;
    .restart local v7       #outPacket:Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_1

    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .end local v5           #inPacket:Ljava/net/DatagramPacket;
    .end local v7           #outPacket:Ljava/net/DatagramPacket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    .restart local v6       #inPacket:Ljava/net/DatagramPacket;
    .restart local v8       #outPacket:Ljava/net/DatagramPacket;
    :catchall_3
    move-exception v11

    move-object v7, v8

    .end local v8           #outPacket:Ljava/net/DatagramPacket;
    .restart local v7       #outPacket:Ljava/net/DatagramPacket;
    move-object v5, v6

    .end local v6           #inPacket:Ljava/net/DatagramPacket;
    .restart local v5       #inPacket:Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_1

    .line 210
    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_3

    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .end local v7           #outPacket:Ljava/net/DatagramPacket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    .restart local v8       #outPacket:Ljava/net/DatagramPacket;
    :catch_5
    move-exception v4

    move-object v7, v8

    .end local v8           #outPacket:Ljava/net/DatagramPacket;
    .restart local v7       #outPacket:Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_3

    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .end local v5           #inPacket:Ljava/net/DatagramPacket;
    .end local v7           #outPacket:Ljava/net/DatagramPacket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    .restart local v6       #inPacket:Ljava/net/DatagramPacket;
    .restart local v8       #outPacket:Ljava/net/DatagramPacket;
    :catch_6
    move-exception v4

    move-object v7, v8

    .end local v8           #outPacket:Ljava/net/DatagramPacket;
    .restart local v7       #outPacket:Ljava/net/DatagramPacket;
    move-object v5, v6

    .end local v6           #inPacket:Ljava/net/DatagramPacket;
    .restart local v5       #inPacket:Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_3

    .line 208
    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_2

    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .end local v7           #outPacket:Ljava/net/DatagramPacket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    .restart local v8       #outPacket:Ljava/net/DatagramPacket;
    :catch_8
    move-exception v4

    move-object v7, v8

    .end local v8           #outPacket:Ljava/net/DatagramPacket;
    .restart local v7       #outPacket:Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_2

    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .end local v5           #inPacket:Ljava/net/DatagramPacket;
    .end local v7           #outPacket:Ljava/net/DatagramPacket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    .restart local v6       #inPacket:Ljava/net/DatagramPacket;
    .restart local v8       #outPacket:Ljava/net/DatagramPacket;
    :catch_9
    move-exception v4

    move-object v7, v8

    .end local v8           #outPacket:Ljava/net/DatagramPacket;
    .restart local v7       #outPacket:Ljava/net/DatagramPacket;
    move-object v5, v6

    .end local v6           #inPacket:Ljava/net/DatagramPacket;
    .restart local v5       #inPacket:Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_2

    .line 205
    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_0

    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .end local v7           #outPacket:Ljava/net/DatagramPacket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    .restart local v8       #outPacket:Ljava/net/DatagramPacket;
    :catch_b
    move-exception v4

    move-object v7, v8

    .end local v8           #outPacket:Ljava/net/DatagramPacket;
    .restart local v7       #outPacket:Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_0

    .end local v2           #dSocket:Ljava/net/DatagramSocket;
    .end local v5           #inPacket:Ljava/net/DatagramPacket;
    .end local v7           #outPacket:Ljava/net/DatagramPacket;
    .restart local v3       #dSocket:Ljava/net/DatagramSocket;
    .restart local v6       #inPacket:Ljava/net/DatagramPacket;
    .restart local v8       #outPacket:Ljava/net/DatagramPacket;
    :catch_c
    move-exception v4

    move-object v7, v8

    .end local v8           #outPacket:Ljava/net/DatagramPacket;
    .restart local v7       #outPacket:Ljava/net/DatagramPacket;
    move-object v5, v6

    .end local v6           #inPacket:Ljava/net/DatagramPacket;
    .restart local v5       #inPacket:Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3           #dSocket:Ljava/net/DatagramSocket;
    .restart local v2       #dSocket:Ljava/net/DatagramSocket;
    goto :goto_0
.end method
