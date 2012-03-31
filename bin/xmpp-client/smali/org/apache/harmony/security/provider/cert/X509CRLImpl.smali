.class public Lorg/apache/harmony/security/provider/cert/X509CRLImpl;
.super Ljava/security/cert/X509CRL;
.source "X509CRLImpl.java"


# instance fields
.field private final crl:Lorg/apache/harmony/security/x509/CertificateList;

.field private encoding:[B

.field private entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private entriesRetrieved:Z

.field private entriesSize:I

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private isIndirectCRL:Z

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private nonIndirectEntriesSize:I

.field private nullSigAlgParams:Z

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgOID:Ljava/lang/String;

.field private sigAlgParams:[B

.field private signature:[B

.field private final tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

.field private tbsCertListEncoding:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 131
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/CertificateList;

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    .line 132
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateList;->getTbsCertList()Lorg/apache/harmony/security/x509/TBSCertList;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    .line 133
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/CertificateList;)V
    .locals 1
    .parameter "crl"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    .line 116
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/CertificateList;->getTbsCertList()Lorg/apache/harmony/security/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    .line 117
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 118
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
    sget-object v0, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/CertificateList;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Lorg/apache/harmony/security/x509/CertificateList;)V

    .line 109
    return-void
.end method

.method private retrieveEntries()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 461
    iput-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    .line 462
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/TBSCertList;->getRevokedCertificates()Ljava/util/List;

    move-result-object v4

    .line 463
    .local v4, rcerts:Ljava/util/List;
    if-nez v4, :cond_1

    .line 486
    :cond_0
    return-void

    .line 466
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    .line 467
    new-instance v5, Ljava/util/ArrayList;

    iget v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    .line 469
    const/4 v3, 0x0

    .line 470
    .local v3, rcertIssuer:Ljavax/security/auth/x500/X500Principal;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    if-ge v0, v5, :cond_0

    .line 472
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    .line 473
    .local v2, rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 474
    .local v1, iss:Ljavax/security/auth/x500/X500Principal;
    if-eqz v1, :cond_2

    .line 477
    move-object v3, v1

    .line 478
    iput-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->isIndirectCRL:Z

    .line 482
    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nonIndirectEntriesSize:I

    .line 484
    :cond_2
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;

    invoke-direct {v6, v2, v3}, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;-><init>(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

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

    .line 161
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateList;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 165
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 3
    .parameter "oid"

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v1

    .line 178
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 179
    .local v0, ext:Lorg/apache/harmony/security/x509/Extension;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 4
    .parameter "serialNumber"

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-boolean v3, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    if-nez v3, :cond_0

    .line 237
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->retrieveEntries()V

    .line 239
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    move-object v0, v2

    .line 248
    :cond_1
    :goto_0
    return-object v0

    .line 242
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nonIndirectEntriesSize:I

    if-lt v1, v3, :cond_3

    move-object v0, v2

    .line 248
    goto :goto_0

    .line 243
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLEntry;

    .line 244
    .local v0, entry:Ljava/security/cert/X509CRLEntry;
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 7
    .parameter "certificate"

    .prologue
    const/4 v5, 0x0

    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 265
    :cond_0
    iget-boolean v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    if-nez v6, :cond_1

    .line 266
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->retrieveEntries()V

    .line 268
    :cond_1
    iget-object v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    move-object v1, v5

    .line 307
    :cond_2
    :goto_0
    return-object v1

    .line 271
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    .line 272
    .local v4, serialN:Ljava/math/BigInteger;
    iget-boolean v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->isIndirectCRL:Z

    if-eqz v6, :cond_9

    .line 274
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 275
    .local v0, certIssuer:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 277
    const/4 v0, 0x0

    .line 279
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    if-lt v2, v6, :cond_6

    .end local v0           #certIssuer:Ljavax/security/auth/x500/X500Principal;
    :cond_5
    move-object v1, v5

    .line 307
    goto :goto_0

    .line 280
    .restart local v0       #certIssuer:Ljavax/security/auth/x500/X500Principal;
    :cond_6
    iget-object v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    .line 282
    .local v1, entry:Ljava/security/cert/X509CRLEntry;
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 284
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 286
    .local v3, iss:Ljavax/security/auth/x500/X500Principal;
    if-eqz v0, :cond_8

    .line 289
    invoke-virtual {v0, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 279
    .end local v3           #iss:Ljavax/security/auth/x500/X500Principal;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    .restart local v3       #iss:Ljavax/security/auth/x500/X500Principal;
    :cond_8
    if-nez v3, :cond_7

    goto :goto_0

    .line 300
    .end local v0           #certIssuer:Ljavax/security/auth/x500/X500Principal;
    .end local v1           #entry:Ljava/security/cert/X509CRLEntry;
    .end local v2           #i:I
    .end local v3           #iss:Ljavax/security/auth/x500/X500Principal;
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    if-ge v2, v6, :cond_5

    .line 301
    iget-object v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    .line 302
    .restart local v1       #entry:Ljava/security/cert/X509CRLEntry;
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-boolean v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    if-nez v0, :cond_0

    .line 317
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->retrieveEntries()V

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 320
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 363
    iget-boolean v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nullSigAlgParams:Z

    if-eqz v1, :cond_0

    .line 373
    :goto_0
    return-object v0

    .line 366
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    if-nez v1, :cond_1

    .line 367
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    .line 368
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    if-nez v1, :cond_1

    .line 369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nullSigAlgParams:Z

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    goto :goto_0
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 382
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    if-nez v1, :cond_0

    .line 383
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateList;->getSignatureValue()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    .line 385
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 386
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 396
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    if-nez v1, :cond_0

    .line 397
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    .line 399
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 400
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    .line 401
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    array-length v2, v2

    .line 400
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getThisUpdate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 2
    .parameter "cert"

    .prologue
    const/4 v0, 0x0

    .line 445
    instance-of v1, p1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1

    .line 448
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/CertificateList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 505
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 506
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertList;->getEncoded()[B

    move-result-object v1

    .line 507
    .local v1, tbsEncoding:[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 508
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/CertificateList;->getSignatureValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "security.15C"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    :cond_0
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 523
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 524
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertList;->getEncoded()[B

    move-result-object v1

    .line 525
    .local v1, tbsEncoding:[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 526
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/CertificateList;->getSignatureValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "security.15C"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    :cond_0
    return-void
.end method
