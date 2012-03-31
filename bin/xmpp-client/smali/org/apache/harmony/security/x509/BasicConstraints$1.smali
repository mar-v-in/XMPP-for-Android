.class Lorg/apache/harmony/security/x509/BasicConstraints$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "BasicConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/BasicConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .parameter "$anonymous0"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/BasicConstraints$1;->setDefault(Ljava/lang/Object;I)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/BasicConstraints$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 70
    .local v0, vals:[Ljava/lang/Object;
    aget-object v1, v0, v2

    aput-object v1, p2, v2

    .line 71
    aget-object v1, v0, v3

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    aput-object v1, p2, v3

    .line 72
    return-void
.end method
