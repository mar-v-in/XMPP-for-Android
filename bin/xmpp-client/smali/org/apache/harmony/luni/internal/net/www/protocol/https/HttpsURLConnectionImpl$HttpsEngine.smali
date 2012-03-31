.class Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;
.super Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpsEngine"
.end annotation


# instance fields
.field private makingSSLTunnel:Z

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljava/net/URL;I)V
    .locals 0
    .parameter
    .parameter "url"
    .parameter "port"

    .prologue
    .line 52
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    .line 53
    invoke-direct {p0, p2, p3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 54
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 0
    .parameter
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 56
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    .line 57
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;ILjava/net/Proxy;)V

    .line 58
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connected:Z

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-super {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->makingSSLTunnel:Z

    if-nez v2, :cond_4

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->makingSSLTunnel:Z

    .line 69
    invoke-super {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connect()V

    .line 71
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->method:Ljava/lang/String;

    .line 73
    .local v1, save_meth:Ljava/lang/String;
    const-string v2, "CONNECT"

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->method:Ljava/lang/String;

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->doRequest()V

    .line 76
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->endRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->method:Ljava/lang/String;

    .line 81
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connected:Z

    if-nez v2, :cond_2

    .line 82
    new-instance v2, Ljava/io/IOException;

    const-string v3, "luni.01"

    .line 83
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->responseMessage:Ljava/lang/String;

    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->responseCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 82
    invoke-static {v3, v4, v5}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :catchall_0
    move-exception v2

    .line 79
    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->method:Ljava/lang/String;

    .line 80
    throw v2

    .line 86
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 87
    .local v0, is:Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_3

    .line 90
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->makingSSLTunnel:Z

    .line 95
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #save_meth:Ljava/lang/String;
    :goto_2
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->makingSSLTunnel:Z

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 97
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    .line 96
    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    #setter for: Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljavax/net/ssl/SSLSocket;)V

    .line 98
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V

    goto :goto_0

    .line 88
    .restart local v0       #is:Ljava/io/InputStream;
    .restart local v1       #save_meth:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    goto :goto_1

    .line 93
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #save_meth:Ljava/lang/String;
    :cond_4
    invoke-super {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connect()V

    goto :goto_2
.end method

.method protected requestString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    invoke-super {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->makingSSLTunnel:Z

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 108
    .local v1, port:I
    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .end local v1           #port:I
    :goto_0
    return-object v2

    .line 109
    .restart local v1       #port:I
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 112
    .end local v1           #port:I
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, file:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 114
    :cond_2
    const-string v0, "/"

    :cond_3
    move-object v2, v0

    .line 116
    goto :goto_0

    .line 118
    .end local v0           #file:Ljava/lang/String;
    :cond_4
    invoke-super {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
