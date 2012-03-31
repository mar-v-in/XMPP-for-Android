.class public Lorg/jivesoftware/smack/ConnectionConfiguration;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;
    }
.end annotation


# instance fields
.field private callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

.field private compressionEnabled:Z

.field private debuggerEnabled:Z

.field private expiredCertificatesCheckEnabled:Z

.field private host:Ljava/lang/String;

.field private keystorePath:Ljava/lang/String;

.field private keystoreType:Ljava/lang/String;

.field private notMatchingDomainCheckEnabled:Z

.field private password:Ljava/lang/String;

.field private pkcs11Library:Ljava/lang/String;

.field private port:I

.field protected proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

.field private reconnectionAllowed:Z

.field private resource:Ljava/lang/String;

.field private rosterLoadedAtLogin:Z

.field private saslAuthenticationEnabled:Z

.field private securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

.field private selfSignedCertificateEnabled:Z

.field private sendPresence:Z

.field private serviceName:Ljava/lang/String;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private truststorePassword:Ljava/lang/String;

.field private truststorePath:Ljava/lang/String;

.field private truststoreType:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private verifyChainEnabled:Z

.field private verifyRootCAEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "serviceName"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 88
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 89
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 90
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 92
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 94
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 95
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 102
    sget-boolean v1, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 106
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 115
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 116
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 118
    sget-object v1, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 135
    invoke-static {p1}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveXMPPDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v0

    .line 136
    .local v0, address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->getPort()I

    move-result v2

    .line 137
    invoke-static {}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->forDefaultProxy()Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-result-object v3

    .line 136
    invoke-direct {p0, v1, v2, p1, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 88
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 89
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 90
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 92
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 94
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 95
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 102
    sget-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 106
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 115
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 116
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 118
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 150
    invoke-static {}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->forDefaultProxy()Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p1, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "serviceName"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 88
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 89
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 90
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 92
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 94
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 95
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 102
    sget-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 106
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 115
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 116
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 118
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 186
    invoke-static {}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->forDefaultProxy()Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "serviceName"
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 88
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 89
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 90
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 92
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 94
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 95
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 102
    sget-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 106
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 115
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 116
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 118
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 88
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 89
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 90
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 92
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 94
    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 95
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 102
    sget-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 106
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 115
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 116
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 118
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 165
    invoke-direct {p0, p1, p2, p1, p3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 3
    .parameter "serviceName"
    .parameter "proxy"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 88
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 89
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 90
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 92
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 94
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 95
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 102
    sget-boolean v1, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 106
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 115
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 116
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 118
    sget-object v1, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 226
    invoke-static {p1}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveXMPPDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v0

    .line 227
    .local v0, address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2, p1, p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 228
    return-void
.end method

.method private init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 4
    .parameter "host"
    .parameter "port"
    .parameter "serviceName"
    .parameter "proxy"

    .prologue
    .line 383
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->host:Ljava/lang/String;

    .line 384
    iput p2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->port:I

    .line 385
    iput-object p3, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->serviceName:Ljava/lang/String;

    .line 386
    iput-object p4, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 391
    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, javaHome:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "security"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cacerts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePath:Ljava/lang/String;

    .line 398
    const-string v2, "jks"

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststoreType:Ljava/lang/String;

    .line 400
    const-string v2, "changeit"

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePassword:Ljava/lang/String;

    .line 401
    const-string v2, "javax.net.ssl.keyStore"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystorePath:Ljava/lang/String;

    .line 402
    const-string v2, "jks"

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystoreType:Ljava/lang/String;

    .line 403
    const-string v2, "pkcs11.config"

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->pkcs11Library:Ljava/lang/String;

    .line 406
    invoke-virtual {p4}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->socketFactory:Ljavax/net/SocketFactory;

    .line 407
    return-void
.end method


# virtual methods
.method public getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getPKCS11Library()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->pkcs11Library:Ljava/lang/String;

    return-object v0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->port:I

    return v0
.end method

.method getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getTruststorePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststoreType:Ljava/lang/String;

    return-object v0
.end method

.method getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressionEnabled()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    return v0
.end method

.method public isDebuggerEnabled()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    return v0
.end method

.method public isExpiredCertificatesCheckEnabled()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    return v0
.end method

.method public isNotMatchingDomainCheckEnabled()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    return v0
.end method

.method public isReconnectionAllowed()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    return v0
.end method

.method public isRosterLoadedAtLogin()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    return v0
.end method

.method public isSASLAuthenticationEnabled()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    return v0
.end method

.method public isSelfSignedCertificateEnabled()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    return v0
.end method

.method isSendPresence()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    return v0
.end method

.method public isVerifyChainEnabled()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    return v0
.end method

.method public isVerifyRootCAEnabled()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    return v0
.end method

.method public setCallbackHandler(Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 0
    .parameter "callbackHandler"

    .prologue
    .line 544
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    .line 545
    return-void
.end method

.method public setCompressionEnabled(Z)V
    .locals 0
    .parameter "compressionEnabled"

    .prologue
    .line 558
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 559
    return-void
.end method

.method public setDebuggerEnabled(Z)V
    .locals 0
    .parameter "debuggerEnabled"

    .prologue
    .line 570
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 571
    return-void
.end method

.method public setExpiredCertificatesCheckEnabled(Z)V
    .locals 0
    .parameter "expiredCertificatesCheckEnabled"

    .prologue
    .line 583
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 584
    return-void
.end method

.method public setKeystorePath(Ljava/lang/String;)V
    .locals 0
    .parameter "keystorePath"

    .prologue
    .line 595
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystorePath:Ljava/lang/String;

    .line 596
    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 0
    .parameter "keystoreType"

    .prologue
    .line 605
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystoreType:Ljava/lang/String;

    .line 606
    return-void
.end method

.method setLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "password"
    .parameter "resource"

    .prologue
    .line 609
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->username:Ljava/lang/String;

    .line 610
    iput-object p2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->password:Ljava/lang/String;

    .line 611
    iput-object p3, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->resource:Ljava/lang/String;

    .line 612
    return-void
.end method

.method public setNotMatchingDomainCheckEnabled(Z)V
    .locals 0
    .parameter "notMatchingDomainCheckEnabled"

    .prologue
    .line 624
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 625
    return-void
.end method

.method public setPKCS11Library(Ljava/lang/String;)V
    .locals 0
    .parameter "pkcs11Library"

    .prologue
    .line 635
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->pkcs11Library:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public setReconnectionAllowed(Z)V
    .locals 0
    .parameter "isAllowed"

    .prologue
    .line 646
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 647
    return-void
.end method

.method public setRosterLoadedAtLogin(Z)V
    .locals 0
    .parameter "rosterLoadedAtLogin"

    .prologue
    .line 658
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 659
    return-void
.end method

.method public setSASLAuthenticationEnabled(Z)V
    .locals 0
    .parameter "saslAuthenticationEnabled"

    .prologue
    .line 671
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 672
    return-void
.end method

.method public setSecurityMode(Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;)V
    .locals 0
    .parameter "securityMode"

    .prologue
    .line 682
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 683
    return-void
.end method

.method public setSelfSignedCertificateEnabled(Z)V
    .locals 0
    .parameter "selfSignedCertificateEnabled"

    .prologue
    .line 694
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 695
    return-void
.end method

.method public setSendPresence(Z)V
    .locals 0
    .parameter "sendPresence"

    .prologue
    .line 708
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 709
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"

    .prologue
    .line 718
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->serviceName:Ljava/lang/String;

    .line 719
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0
    .parameter "socketFactory"

    .prologue
    .line 729
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->socketFactory:Ljavax/net/SocketFactory;

    .line 730
    return-void
.end method

.method public setTruststorePassword(Ljava/lang/String;)V
    .locals 0
    .parameter "truststorePassword"

    .prologue
    .line 740
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePassword:Ljava/lang/String;

    .line 741
    return-void
.end method

.method public setTruststorePath(Ljava/lang/String;)V
    .locals 0
    .parameter "truststorePath"

    .prologue
    .line 752
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePath:Ljava/lang/String;

    .line 753
    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 0
    .parameter "truststoreType"

    .prologue
    .line 762
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststoreType:Ljava/lang/String;

    .line 763
    return-void
.end method

.method public setVerifyChainEnabled(Z)V
    .locals 0
    .parameter "verifyChainEnabled"

    .prologue
    .line 774
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 775
    return-void
.end method

.method public setVerifyRootCAEnabled(Z)V
    .locals 0
    .parameter "verifyRootCAEnabled"

    .prologue
    .line 785
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 786
    return-void
.end method
