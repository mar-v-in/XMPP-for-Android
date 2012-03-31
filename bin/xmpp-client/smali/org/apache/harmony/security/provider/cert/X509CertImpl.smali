.class public Lorg/apache/harmony/security/provider/cert/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"


# static fields
.field private static final serialVersionUID:J = 0x293f8c78c6c7611aL


# instance fields
.field private final certificate:Lorg/apache/harmony/security/x509/Certificate;

.field private encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private notAfter:J

.field private notBefore:J

.field private nullSigAlgParams:Z

.field private publicKey:Ljava/security/PublicKey;

.field private serialNumber:Ljava/math/BigInteger;

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgOID:Ljava/lang/String;

.field private sigAlgParams:[B

.field private signature:[B

.field private subject:Ljavax/security/auth/x500/X500Principal;

.field private final tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

.field private tbsCertificate:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 77
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 134
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/Certificate;

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    .line 136
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 137
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/Certificate;)V
    .locals 2
    .parameter "certificate"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 116
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    .line 118
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Certificate;->getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 119
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 120
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .line 109
    return-void
.end method


# virtual methods
.method public checkValidity()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 154
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 157
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 159
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 160
    .local v0, time:J
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 161
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    invoke-direct {v2}, Ljava/security/cert/CertificateNotYetValidException;-><init>()V

    throw v2

    .line 163
    :cond_1
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 164
    new-instance v2, Ljava/security/cert/CertificateExpiredException;

    invoke-direct {v2}, Ljava/security/cert/CertificateExpiredException;-><init>()V

    throw v2

    .line 166
    :cond_2
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 6
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 175
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 177
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 178
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 181
    .local v0, time:J
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 182
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    invoke-direct {v2}, Ljava/security/cert/CertificateNotYetValidException;-><init>()V

    throw v2

    .line 184
    :cond_1
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 185
    new-instance v2, Ljava/security/cert/CertificateExpiredException;

    invoke-direct {v2}, Ljava/security/cert/CertificateExpiredException;-><init>()V

    throw v2

    .line 187
    :cond_2
    return-void
.end method

.method public getBasicConstraints()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 196
    const v0, 0x7fffffff

    .line 198
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->valueOfBasicConstrains()I

    move-result v0

    goto :goto_0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 224
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_0

    .line 236
    const/4 v1, 0x0

    .line 239
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfExtendedKeyUsage()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 3
    .parameter "oid"

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-object v1

    .line 255
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 256
    .local v0, ext:Lorg/apache/harmony/security/x509/Extension;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_0

    .line 267
    const/4 v1, 0x0

    .line 273
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfIssuerAlternativeName()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuerUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->valueOfKeyUsage()[Z

    move-result-object v0

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 4

    .prologue
    .line 345
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 348
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 350
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 4

    .prologue
    .line 359
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 362
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 364
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    .line 378
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    .line 390
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 437
    iget-boolean v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    if-eqz v1, :cond_0

    .line 447
    :goto_0
    return-object v0

    .line 440
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    if-nez v1, :cond_1

    .line 441
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    .line 442
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    if-nez v1, :cond_1

    .line 443
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    goto :goto_0
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 456
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    if-nez v1, :cond_0

    .line 458
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    .line 460
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 461
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 472
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_0

    .line 473
    const/4 v1, 0x0

    .line 479
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfSubjectAlternativeName()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubject()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 499
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubjectUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubject()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 521
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getTBSCertificate()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 530
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    if-nez v1, :cond_0

    .line 532
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 534
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 535
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getVersion()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x0

    .line 562
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 585
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 587
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    if-nez v1, :cond_0

    .line 588
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 591
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 592
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 593
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "security.15C"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :cond_1
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 609
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 611
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    if-nez v1, :cond_0

    .line 612
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 615
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 616
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 617
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "security.15C"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_1
    return-void
.end method
