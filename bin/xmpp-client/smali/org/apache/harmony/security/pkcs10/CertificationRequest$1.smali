.class Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "CertificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs10/CertificationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 7
    .parameter "in"

    .prologue
    .line 61
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 63
    .local v6, values:[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;

    .line 64
    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    .line 65
    const/4 v2, 0x1

    aget-object v2, v6, v2

    check-cast v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 66
    const/4 v3, 0x2

    aget-object v3, v6, v3

    check-cast v3, Lorg/apache/harmony/security/asn1/BitString;

    iget-object v3, v3, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    .line 63
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;-><init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/pkcs10/CertificationRequest;)V

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 71
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;

    .line 73
    .local v0, certReq:Lorg/apache/harmony/security/pkcs10/CertificationRequest;
    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->access$1(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    move-result-object v1

    aput-object v1, p2, v4

    .line 74
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequest;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->access$2(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, p2, v1

    .line 75
    const/4 v1, 0x2

    new-instance v2, Lorg/apache/harmony/security/asn1/BitString;

    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->access$3(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)[B

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    aput-object v2, p2, v1

    .line 76
    return-void
.end method
