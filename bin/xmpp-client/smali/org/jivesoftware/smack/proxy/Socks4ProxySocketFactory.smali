.class public Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;
.super Ljavax/net/SocketFactory;
.source "Socks4ProxySocketFactory.java"


# instance fields
.field private final proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 20
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 22
    return-void
.end method

.method private socks4ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 28
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const/16 v19, 0x0

    .line 52
    .local v19, socket:Ljava/net/Socket;
    const/4 v10, 0x0

    .line 53
    .local v10, in:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 54
    .local v15, out:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyAddress()Ljava/lang/String;

    move-result-object v16

    .line 55
    .local v16, proxy_host:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPort()I

    move-result v17

    .line 56
    .local v17, proxy_port:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v23

    .line 57
    .local v23, user:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPassword()Ljava/lang/String;

    .line 60
    :try_start_0
    new-instance v20, Ljava/net/Socket;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 61
    .end local v19           #socket:Ljava/net/Socket;
    .local v20, socket:Ljava/net/Socket;
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 62
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 63
    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 65
    const/16 v24, 0x400

    move/from16 v0, v24

    new-array v5, v0, [B

    .line 66
    .local v5, buf:[B
    const/4 v11, 0x0

    .line 87
    .local v11, index:I
    const/4 v11, 0x0

    .line 88
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    const/16 v24, 0x4

    aput-byte v24, v5, v11

    .line 89
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    const/16 v24, 0x1

    aput-byte v24, v5, v12

    .line 91
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    ushr-int/lit8 v24, p2, 0x8

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v5, v11

    .line 92
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v5, v12
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 96
    .local v4, addr:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 97
    .local v7, byteAddress:[B
    array-length v0, v7

    move/from16 v25, v0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v24, 0x0

    move v12, v11

    .end local v11           #index:I
    .restart local v12       #index:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1

    .line 105
    if-eqz v23, :cond_0

    .line 106
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v5, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    add-int v11, v12, v24

    .end local v12           #index:I
    .restart local v11       #index:I
    move v12, v11

    .line 109
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_0
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    const/16 v24, 0x0

    aput-byte v24, v5, v12

    .line 110
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v5, v0, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 137
    const/4 v13, 0x6

    .line 138
    .local v13, len:I
    const/16 v18, 0x0

    .line 139
    .local v18, s:I
    :goto_1
    const/16 v24, 0x6

    move/from16 v0, v18

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    .line 147
    const/16 v24, 0x0

    aget-byte v24, v5, v24

    if-eqz v24, :cond_5

    .line 148
    new-instance v24, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v25, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 149
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "server returns VN "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    aget-byte v27, v5, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 148
    invoke-direct/range {v24 .. v26}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v24
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 163
    .end local v4           #addr:Ljava/net/InetAddress;
    .end local v5           #buf:[B
    .end local v7           #byteAddress:[B
    .end local v11           #index:I
    .end local v13           #len:I
    .end local v18           #s:I
    :catch_0
    move-exception v8

    move-object/from16 v19, v20

    .line 164
    .end local v20           #socket:Ljava/net/Socket;
    .local v8, e:Ljava/lang/RuntimeException;
    .restart local v19       #socket:Ljava/net/Socket;
    :goto_2
    throw v8

    .line 97
    .end local v8           #e:Ljava/lang/RuntimeException;
    .end local v19           #socket:Ljava/net/Socket;
    .restart local v4       #addr:Ljava/net/InetAddress;
    .restart local v5       #buf:[B
    .restart local v7       #byteAddress:[B
    .restart local v12       #index:I
    .restart local v20       #socket:Ljava/net/Socket;
    :cond_1
    :try_start_4
    aget-byte v6, v7, v24
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 98
    .local v6, byteAddres:B
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    :try_start_5
    aput-byte v6, v5, v12
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 97
    add-int/lit8 v24, v24, 0x1

    move v12, v11

    .end local v11           #index:I
    .restart local v12       #index:I
    goto :goto_0

    .line 100
    .end local v4           #addr:Ljava/net/InetAddress;
    .end local v6           #byteAddres:B
    .end local v7           #byteAddress:[B
    .end local v12           #index:I
    .restart local v11       #index:I
    :catch_1
    move-exception v22

    .line 101
    .local v22, uhe:Ljava/net/UnknownHostException;
    :goto_3
    :try_start_6
    new-instance v24, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v25, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 102
    invoke-virtual/range {v22 .. v22}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v26

    .line 101
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 165
    .end local v5           #buf:[B
    .end local v11           #index:I
    .end local v22           #uhe:Ljava/net/UnknownHostException;
    :catch_2
    move-exception v8

    move-object/from16 v19, v20

    .line 167
    .end local v20           #socket:Ljava/net/Socket;
    .local v8, e:Ljava/lang/Exception;
    .restart local v19       #socket:Ljava/net/Socket;
    :goto_4
    if-eqz v19, :cond_2

    .line 168
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 172
    :cond_2
    :goto_5
    new-instance v24, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v25, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v24

    .line 140
    .end local v8           #e:Ljava/lang/Exception;
    .end local v19           #socket:Ljava/net/Socket;
    .restart local v4       #addr:Ljava/net/InetAddress;
    .restart local v5       #buf:[B
    .restart local v7       #byteAddress:[B
    .restart local v11       #index:I
    .restart local v13       #len:I
    .restart local v18       #s:I
    .restart local v20       #socket:Ljava/net/Socket;
    :cond_3
    rsub-int/lit8 v24, v18, 0x6

    :try_start_8
    move/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v10, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 141
    .local v9, i:I
    if-gtz v9, :cond_4

    .line 142
    new-instance v24, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v25, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 143
    const-string v26, "stream is closed"

    .line 142
    invoke-direct/range {v24 .. v26}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v24

    .line 145
    :cond_4
    add-int v18, v18, v9

    goto :goto_1

    .line 151
    .end local v9           #i:I
    :cond_5
    const/16 v24, 0x1

    aget-byte v24, v5, v24
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const/16 v25, 0x5a

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 153
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 156
    :goto_6
    :try_start_a
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "ProxySOCKS4: server returns CD "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    const/16 v25, 0x1

    aget-byte v25, v5, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 156
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 158
    .local v14, message:Ljava/lang/String;
    new-instance v24, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v25, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v14}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v24

    .line 160
    .end local v14           #message:Ljava/lang/String;
    :cond_6
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 161
    .local v21, temp:[B
    const/16 v24, 0x0

    const/16 v25, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 162
    return-object v20

    .line 154
    .end local v21           #temp:[B
    :catch_3
    move-exception v24

    goto :goto_6

    .line 170
    .end local v4           #addr:Ljava/net/InetAddress;
    .end local v5           #buf:[B
    .end local v7           #byteAddress:[B
    .end local v11           #index:I
    .end local v13           #len:I
    .end local v18           #s:I
    .end local v20           #socket:Ljava/net/Socket;
    .restart local v8       #e:Ljava/lang/Exception;
    .restart local v19       #socket:Ljava/net/Socket;
    :catch_4
    move-exception v24

    goto :goto_5

    .line 165
    .end local v8           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v8

    goto :goto_4

    .line 163
    :catch_6
    move-exception v8

    goto/16 :goto_2

    .line 100
    .end local v19           #socket:Ljava/net/Socket;
    .restart local v4       #addr:Ljava/net/InetAddress;
    .restart local v5       #buf:[B
    .restart local v7       #byteAddress:[B
    .restart local v12       #index:I
    .restart local v20       #socket:Ljava/net/Socket;
    :catch_7
    move-exception v22

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto/16 :goto_3
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->socks4ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "localHost"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->socks4ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->socks4ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .parameter "address"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->socks4ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
