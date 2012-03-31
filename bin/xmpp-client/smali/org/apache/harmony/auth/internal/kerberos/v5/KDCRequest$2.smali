.class Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "KDCRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;
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
    .line 169
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 179
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$2;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .parameter "values"

    .prologue
    .line 184
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;

    .line 186
    .local v0, request:Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;
    const/4 v1, 0x0

    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 187
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->msgType:I
    invoke-static {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->access$3(Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 189
    const/4 v1, 0x3

    aput-object v0, p2, v1

    .line 190
    return-void
.end method
