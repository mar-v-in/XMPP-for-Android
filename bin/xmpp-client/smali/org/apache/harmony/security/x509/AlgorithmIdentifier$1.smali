.class Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AlgorithmIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
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
    .line 62
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .parameter "in"

    .prologue
    .line 70
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 71
    .local v0, values:[Ljava/lang/Object;
    new-instance v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 72
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    .line 73
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [B

    .line 71
    invoke-direct {v2, v3, v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 79
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 81
    .local v0, aID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 83
    return-void
.end method
