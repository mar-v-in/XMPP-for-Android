.class Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;
.super Ljavax/net/SocketFactory;
.source "HTTPProxySocketFactory.java"


# static fields
.field private static final RESPONSE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "HTTP/\\S+\\s(\\d+)\\s(.*)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 27
    sput-object v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 30
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 32
    return-void
.end method

.method private httpProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 22
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyAddress()Ljava/lang/String;

    move-result-object v14

    .line 61
    .local v14, proxyhost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPort()I

    move-result v13

    .line 62
    .local v13, proxyPort:I
    new-instance v16, Ljava/net/Socket;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v13}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 63
    .local v16, socket:Ljava/net/Socket;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "CONNECT "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, hostport:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v17

    .line 66
    .local v17, username:Ljava/lang/String;
    if-nez v17, :cond_1

    .line 67
    const-string v12, ""

    .line 74
    .local v12, proxyLine:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    .line 75
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " HTTP/1.1\r\nHost: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 76
    const-string v20, "UTF-8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    .line 75
    invoke-virtual/range {v18 .. v19}, Ljava/io/OutputStream;->write([B)V

    .line 78
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 79
    .local v8, in:Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v5, got:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 83
    .local v10, nlchars:I
    :cond_0
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v18

    move/from16 v0, v18

    int-to-char v3, v0

    .line 84
    .local v3, c:C
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    const/16 v19, 0x400

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 86
    new-instance v18, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v19, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Recieved header of >1024 characters from "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 88
    const-string v21, ", cancelling connection"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 86
    invoke-direct/range {v18 .. v20}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v18

    .line 69
    .end local v3           #c:C
    .end local v5           #got:Ljava/lang/StringBuilder;
    .end local v8           #in:Ljava/io/InputStream;
    .end local v10           #nlchars:I
    .end local v12           #proxyLine:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, password:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\r\nProxy-Authorization: Basic "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 72
    const-string v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    .line 71
    invoke-static/range {v20 .. v20}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 70
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12       #proxyLine:Ljava/lang/String;
    goto/16 :goto_0

    .line 90
    .end local v11           #password:Ljava/lang/String;
    .restart local v3       #c:C
    .restart local v5       #got:Ljava/lang/StringBuilder;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v10       #nlchars:I
    :cond_2
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_3

    .line 91
    new-instance v18, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v19, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-direct/range {v18 .. v19}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;)V

    throw v18

    .line 93
    :cond_3
    if-eqz v10, :cond_4

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    :cond_4
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v3, v0, :cond_5

    .line 94
    add-int/lit8 v10, v10, 0x1

    .line 100
    :goto_1
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v10, v0, :cond_0

    .line 105
    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v10, v0, :cond_8

    .line 106
    new-instance v18, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v19, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Never received blank line from "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 108
    const-string v21, ", cancelling connection"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 106
    invoke-direct/range {v18 .. v20}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v18

    .line 95
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v10, v0, :cond_6

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v10, v0, :cond_7

    :cond_6
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v3, v0, :cond_7

    .line 96
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 98
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 111
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, gotstr:Ljava/lang/String;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/StringReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    .local v2, br:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 116
    .local v15, response:Ljava/lang/String;
    if-nez v15, :cond_9

    .line 117
    new-instance v18, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v19, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Empty proxy response from "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", cancelling"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 117
    invoke-direct/range {v18 .. v20}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v18

    .line 121
    :cond_9
    sget-object v18, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 122
    .local v9, m:Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-nez v18, :cond_a

    .line 123
    new-instance v18, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v19, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Unexpected proxy response from "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 123
    invoke-direct/range {v18 .. v20}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v18

    .line 127
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 129
    .local v4, code:I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v4, v0, :cond_b

    .line 130
    new-instance v18, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v19, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-direct/range {v18 .. v19}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;)V

    throw v18

    .line 133
    :cond_b
    return-object v16
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
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->httpProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

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
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->httpProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

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
    .line 36
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->httpProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

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
    .line 43
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;->httpProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
