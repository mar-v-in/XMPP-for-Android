.class Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AuthorityKeyIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
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
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 81
    .local v2, values:[Ljava/lang/Object;
    const/4 v3, 0x2

    aget-object v1, v2, v3

    check-cast v1, [B

    .line 82
    .local v1, enc:[B
    const/4 v0, 0x0

    .line 83
    .local v0, authorityCertSerialNumber:Ljava/math/BigInteger;
    if-eqz v1, :cond_0

    .line 84
    new-instance v0, Ljava/math/BigInteger;

    .end local v0           #authorityCertSerialNumber:Ljava/math/BigInteger;
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 87
    .restart local v0       #authorityCertSerialNumber:Ljava/math/BigInteger;
    :cond_0
    new-instance v5, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, [B

    .line 88
    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Lorg/apache/harmony/security/x509/GeneralNames;

    .line 87
    invoke-direct {v5, v3, v4, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;-><init>([BLorg/apache/harmony/security/x509/GeneralNames;Ljava/math/BigInteger;)V

    return-object v5
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 94
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    .line 96
    .local v0, akid:Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->keyIdentifier:[B
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$0(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 97
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$1(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v2

    aput-object v2, p2, v1

    .line 98
    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$2(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$2(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 101
    :cond_0
    return-void
.end method
