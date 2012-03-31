.class Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PrincipalName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
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
    .line 71
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 81
    .local v3, values:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    .line 84
    .local v2, type:I
    const/4 v4, 0x1

    aget-object v0, v3, v4

    check-cast v0, Ljava/util/List;

    .line 85
    .local v0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 86
    .local v1, name:[Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    invoke-direct {v4, v2, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;-><init>(I[Ljava/lang/String;)V

    return-object v4
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .parameter "values"

    .prologue
    .line 92
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 94
    .local v0, name:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->getType()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->getName()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, p2, v1

    .line 97
    return-void
.end method
