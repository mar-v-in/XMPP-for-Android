.class public Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;
.super Lorg/apache/harmony/javax/naming/ldap/StartTlsResponse;
.source "StartTlsResponseImpl.java"


# static fields
.field private static final serialVersionUID:J = -0x10a3da159f7a6d72L


# instance fields
.field private isHandshaked:Z

.field private negotiatedSslSocket:Ljavax/net/ssl/SSLSocket;

.field private socket:Ljava/net/Socket;

.field private suites:[Ljava/lang/String;

.field private verifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/ldap/StartTlsResponse;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->isHandshaked:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->negotiatedSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->isHandshaked:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->negotiatedSslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->negotiatedSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 60
    :cond_0
    return-void
.end method

.method public getSSLSocket()Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->negotiatedSslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public negotiate()Ljavax/net/ssl/SSLSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->negotiate(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public negotiate(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSession;
    .locals 7
    .parameter "factory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->socket:Ljava/net/Socket;

    if-nez v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v2

    .line 79
    :cond_1
    if-nez p1, :cond_2

    .line 80
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    .end local p1
    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;

    .line 83
    .restart local p1
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->socket:Ljava/net/Socket;

    .line 84
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getPort()I

    move-result v5

    const/4 v6, 0x0

    .line 83
    invoke-virtual {p1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 86
    .local v1, sslSocket:Ljavax/net/ssl/SSLSocket;
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->suites:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 87
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->suites:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 91
    :cond_3
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl$1;

    invoke-direct {v3, p0}, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl$1;-><init>(Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;)V

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 98
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 100
    :cond_4
    iget-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->isHandshaked:Z

    if-eqz v3, :cond_4

    .line 104
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl$2;

    invoke-direct {v0, p0}, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl$2;-><init>(Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;)V

    .line 120
    .local v0, defaultVerifier:Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    .line 120
    invoke-interface {v0, v3, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 122
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->negotiatedSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 123
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    goto :goto_0

    .line 124
    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->verifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->verifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    .line 125
    invoke-interface {v3, v4, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->negotiatedSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 128
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    goto :goto_0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0
    .parameter "suites"

    .prologue
    .line 141
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->suites:[Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .parameter "verifier"

    .prologue
    .line 146
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->verifier:Ljavax/net/ssl/HostnameVerifier;

    .line 147
    return-void
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 0
    .parameter "socket"

    .prologue
    .line 150
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->socket:Ljava/net/Socket;

    .line 151
    return-void
.end method
