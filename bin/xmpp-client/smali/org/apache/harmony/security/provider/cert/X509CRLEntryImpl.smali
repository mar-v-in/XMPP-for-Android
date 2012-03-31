.class public Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryImpl.java"


# instance fields
.field private encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final issuer:Ljavax/security/auth/x500/X500Principal;

.field private final rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .parameter "rcert"
    .parameter "issuer"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    .line 70
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getCrlEntryExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 71
    iput-object p2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 72
    return-void
.end method


# virtual methods
.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->encoding:[B

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->encoding:[B

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 109
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 3
    .parameter "oid"

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v1

    .line 122
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 123
    .local v0, ext:Lorg/apache/harmony/security/x509/Extension;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getUserCertificate()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X509CRLEntryImpl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
