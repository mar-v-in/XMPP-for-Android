.class public Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;
    }
.end annotation


# instance fields
.field private final httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 1
    .parameter "url"
    .parameter "port"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 131
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljava/net/URL;I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    .line 132
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 1
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 136
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    .line 137
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connect()V

    .line 147
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->disconnect()V

    .line 152
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.00"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .parameter "pos"

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .parameter "posn"

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.00"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.00"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.00"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 330
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.00"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 364
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setAllowUserInteraction(Z)V

    .line 365
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setConnectTimeout(I)V

    .line 370
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 374
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setDefaultUseCaches(Z)V

    .line 375
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 379
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setDoInput(Z)V

    .line 380
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 384
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setDoOutput(Z)V

    .line 385
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 389
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setIfModifiedSince(J)V

    .line 390
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .parameter "followRedirects"

    .prologue
    .line 394
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setInstanceFollowRedirects(Z)V

    .line 395
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 399
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setReadTimeout(I)V

    .line 400
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setRequestMethod(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 414
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setUseCaches(Z)V

    .line 415
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->usingProxy()Z

    move-result v0

    return v0
.end method
