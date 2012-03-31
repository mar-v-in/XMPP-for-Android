.class public final Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;
.super Ljava/lang/Object;
.source "X500PrivateCredential.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field private alias:Ljava/lang/String;

.field private cert:Ljava/security/cert/X509Certificate;

.field private key:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    .locals 2
    .parameter "cert"
    .parameter "key"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.28"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.29"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->cert:Ljava/security/cert/X509Certificate;

    .line 47
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->key:Ljava/security/PrivateKey;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 2
    .parameter "cert"
    .parameter "key"
    .parameter "alias"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;-><init>(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V

    .line 53
    if-nez p3, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.2A"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p3, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->alias:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->cert:Ljava/security/cert/X509Certificate;

    .line 62
    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->key:Ljava/security/PrivateKey;

    .line 63
    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->alias:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->key:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->cert:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->key:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/x500/X500PrivateCredential;->alias:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
