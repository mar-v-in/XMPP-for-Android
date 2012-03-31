.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# static fields
.field private static final SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;


# instance fields
.field private final config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;

.field private sslInputStream:Ljava/io/InputStream;

.field private sslOutputStream:Ljava/io/OutputStream;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;

.field private usingSecureSocket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->SocketTimeoutExceptionClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;I)V
    .locals 5
    .parameter "config"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    .line 94
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    .line 95
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, hostName:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->getHostPort()I

    move-result v1

    .line 97
    .local v1, hostPort:I
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    .line 98
    .local v2, proxy:Ljava/net/Proxy;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_1

    .line 99
    :cond_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 103
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 105
    return-void

    .line 101
    :cond_1
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    goto :goto_0
.end method

.method private static SocketTimeoutExceptionClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 86
    :try_start_0
    const-string v1, "java.net.SocketTimeoutException"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v1

    .line 87
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 88
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 49
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public closeSocketAndStreams()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 110
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 111
    .local v0, temp:Ljava/io/OutputStream;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 113
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0           #temp:Ljava/io/OutputStream;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 120
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 121
    .local v0, temp:Ljava/io/InputStream;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 123
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .end local v0           #temp:Ljava/io/InputStream;
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_2

    .line 130
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 131
    .local v0, temp:Ljava/net/Socket;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 133
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    .end local v0           #temp:Ljava/net/Socket;
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    .line 140
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 141
    .local v0, temp:Ljava/io/OutputStream;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 143
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 149
    .end local v0           #temp:Ljava/io/OutputStream;
    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 150
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 151
    .local v0, temp:Ljava/io/InputStream;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 153
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 159
    .end local v0           #temp:Ljava/io/InputStream;
    :cond_4
    :goto_4
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_5

    .line 160
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 161
    .local v0, temp:Ljava/net/Socket;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 163
    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 168
    .end local v0           #temp:Ljava/net/Socket;
    :cond_5
    :goto_5
    return-void

    .line 114
    .local v0, temp:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 124
    .local v0, temp:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 134
    .local v0, temp:Ljava/net/Socket;
    :catch_2
    move-exception v1

    goto :goto_2

    .line 144
    .local v0, temp:Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    goto :goto_3

    .line 154
    .local v0, temp:Ljava/io/InputStream;
    :catch_4
    move-exception v1

    goto :goto_4

    .line 164
    .local v0, temp:Ljava/net/Socket;
    :catch_5
    move-exception v1

    goto :goto_5
.end method

.method public getHttpConfiguration()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 183
    :goto_0
    return-object v0

    .line 180
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 183
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 195
    :goto_0
    return-object v0

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 195
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method public getSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;
    .locals 4
    .parameter "sslSocketFactory"
    .parameter "hostnameVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 200
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    if-nez v2, :cond_1

    .line 201
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, hostName:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->getHostPort()I

    move-result v1

    .line 204
    .local v1, port:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 206
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 207
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 208
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    new-instance v2, Ljava/io/IOException;

    const-string v3, "luni.02"

    invoke-static {v3, v0}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_0
    iput-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    .line 213
    .end local v0           #hostName:Ljava/lang/String;
    .end local v1           #port:I
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v2
.end method

.method getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected isStale()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v2, 0x1

    .line 229
    .local v2, isStale:Z
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    const/4 v2, 0x0

    .line 234
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    if-gtz v4, :cond_0

    .line 235
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 237
    .local v3, soTimeout:I
    :try_start_1
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 238
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->mark(I)V

    .line 239
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 240
    .local v0, byteRead:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 243
    const/4 v2, 0x1

    .line 248
    :goto_0
    :try_start_2
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    .end local v0           #byteRead:I
    .end local v3           #soTimeout:I
    :cond_0
    :goto_1
    return v2

    .line 245
    .restart local v0       #byteRead:I
    .restart local v3       #soTimeout:I
    :cond_1
    :try_start_3
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 247
    .end local v0           #byteRead:I
    :catchall_0
    move-exception v4

    .line 248
    :try_start_4
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 249
    throw v4
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 251
    .end local v3           #soTimeout:I
    :catch_0
    move-exception v1

    .line 252
    .local v1, e:Ljava/io/InterruptedIOException;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    throw v1

    .line 256
    .end local v1           #e:Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v1

    .line 258
    .local v1, e:Ljava/io/IOException;
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setSoTimeout(I)V
    .locals 1
    .parameter "readTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 267
    return-void
.end method
