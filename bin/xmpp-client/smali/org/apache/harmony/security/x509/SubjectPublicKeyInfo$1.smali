.class Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SubjectPublicKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
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
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 7
    .parameter "in"

    .prologue
    const/4 v3, 0x1

    .line 68
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 69
    .local v6, values:[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 70
    aget-object v2, v6, v3

    check-cast v2, Lorg/apache/harmony/security/asn1/BitString;

    iget-object v2, v2, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    .line 71
    aget-object v3, v6, v3

    check-cast v3, Lorg/apache/harmony/security/asn1/BitString;

    iget v3, v3, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    .line 69
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[BLorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)V

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .parameter "object"
    .parameter "values"

    .prologue
    .line 77
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    .line 79
    .local v0, spki:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->access$1(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, p2, v1

    .line 80
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/harmony/security/asn1/BitString;

    #getter for: Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B
    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->access$2(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)[B

    move-result-object v3

    #getter for: Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->access$3(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    aput-object v2, p2, v1

    .line 81
    return-void
.end method
