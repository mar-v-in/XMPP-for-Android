.class Lorg/apache/harmony/security/pkcs7/SignerInfo$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SignerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/SignerInfo;
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
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 87
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignerInfo$2;->setOptional(I)V

    .line 88
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignerInfo$2;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 9
    .parameter "in"

    .prologue
    .line 93
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    .line 94
    .local v8, values:[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    .line 95
    const/4 v2, 0x1

    aget-object v2, v8, v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v3, v8, v3

    check-cast v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 96
    const/4 v4, 0x3

    aget-object v4, v8, v4

    check-cast v4, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    .line 97
    const/4 v5, 0x4

    aget-object v5, v8, v5

    check-cast v5, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v6, 0x5

    aget-object v6, v8, v6

    check-cast v6, [B

    .line 98
    const/4 v7, 0x6

    aget-object v7, v8, v7

    check-cast v7, Ljava/util/List;

    .line 94
    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/security/pkcs7/SignerInfo;-><init>(I[Ljava/lang/Object;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 103
    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 104
    .local v1, si:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    new-array v2, v2, [B

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->version:I
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$0(Lorg/apache/harmony/security/pkcs7/SignerInfo;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    aput-object v2, p2, v4

    .line 106
    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/harmony/security/x501/Name;

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->issuer:Ljavax/security/auth/x500/X500Principal;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$1(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 107
    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->serialNumber:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$2(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 106
    aput-object v3, p2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$3(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, p2, v7

    .line 117
    const/4 v2, 0x3

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$4(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    move-result-object v3

    aput-object v3, p2, v2

    .line 118
    const/4 v2, 0x4

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$5(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v3

    aput-object v3, p2, v2

    .line 119
    const/4 v2, 0x5

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->encryptedDigest:[B
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$6(Lorg/apache/harmony/security/pkcs7/SignerInfo;)[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 120
    const/4 v2, 0x6

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->unauthenticatedAttributes:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$7(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p2, v2

    .line 121
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 114
    const-string v3, "security.1A2"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
