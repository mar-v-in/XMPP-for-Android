.class Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "CertificationRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
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
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .parameter "in"

    .prologue
    .line 69
    iget-object v7, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    .line 70
    .local v7, values:[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    .line 71
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Lorg/apache/harmony/security/x501/Name;

    .line 72
    const/4 v3, 0x2

    aget-object v3, v7, v3

    check-cast v3, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    const/4 v4, 0x3

    aget-object v4, v7, v4

    check-cast v4, Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    .line 70
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;-><init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[BLorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)V

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 78
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    .line 80
    .local v0, certReqInfo:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->access$1(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    .line 81
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->access$2(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v2

    aput-object v2, p2, v1

    .line 82
    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->access$3(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-result-object v2

    aput-object v2, p2, v1

    .line 83
    const/4 v1, 0x3

    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->access$4(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Ljava/util/List;

    move-result-object v2

    aput-object v2, p2, v1

    .line 84
    return-void
.end method
