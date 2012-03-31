.class Lorg/apache/harmony/security/pkcs7/ContentInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/ContentInfo;
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
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 69
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 70
    .local v1, values:[Ljava/lang/Object;
    aget-object v0, v1, v5

    check-cast v0, [I

    .line 71
    .local v0, oid:[I
    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    aget-object v2, v1, v7

    if-eqz v2, :cond_0

    .line 73
    new-instance v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    .line 74
    aget-object v2, v1, v7

    check-cast v2, [B

    invoke-virtual {v4, v2}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    .line 73
    invoke-direct {v3, v0, v2, v4, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo;)V

    move-object v2, v3

    .line 85
    :goto_0
    return-object v2

    .line 76
    :cond_0
    new-instance v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    aget-object v2, v1, v5

    check-cast v2, [I

    .line 77
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    .line 76
    invoke-direct {v3, v2, v6, v4, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo;)V

    move-object v2, v3

    goto :goto_0

    .line 80
    :cond_1
    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    new-instance v4, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    aget-object v2, v1, v5

    check-cast v2, [I

    .line 82
    sget-object v5, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aget-object v3, v1, v7

    check-cast v3, [B

    invoke-virtual {v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v3

    .line 83
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    .line 81
    invoke-direct {v4, v2, v3, v5, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo;)V

    move-object v2, v4

    goto :goto_0

    .line 85
    :cond_2
    new-instance v4, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    aget-object v2, v1, v5

    check-cast v2, [I

    aget-object v3, v1, v7

    check-cast v3, [B

    .line 86
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    .line 85
    invoke-direct {v4, v2, v3, v5, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo;)V

    move-object v2, v4

    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 91
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 92
    .local v0, ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$1(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 93
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$2(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$1(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I

    move-result-object v1

    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$2(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v1

    .line 97
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$2(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p2, v3

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$2(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/harmony/security/pkcs7/SignedData;

    if-eqz v1, :cond_2

    .line 100
    sget-object v1, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$2(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p2, v3

    goto :goto_0

    .line 102
    :cond_2
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$2(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v3

    goto :goto_0
.end method
