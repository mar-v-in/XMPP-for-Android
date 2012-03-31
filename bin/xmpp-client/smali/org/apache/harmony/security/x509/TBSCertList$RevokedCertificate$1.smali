.class Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .parameter "$anonymous0"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"

    .prologue
    .line 86
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 88
    .local v0, values:[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    .line 89
    new-instance v4, Ljava/math/BigInteger;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [B

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>([B)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Date;

    .line 90
    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Lorg/apache/harmony/security/x509/Extensions;

    .line 88
    invoke-direct {v3, v4, v1, v2}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;-><init>(Ljava/math/BigInteger;Ljava/util/Date;Lorg/apache/harmony/security/x509/Extensions;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 95
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    .line 97
    .local v0, rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->access$0(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 98
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->access$1(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 99
    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->access$2(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v2

    aput-object v2, p2, v1

    .line 100
    return-void
.end method
