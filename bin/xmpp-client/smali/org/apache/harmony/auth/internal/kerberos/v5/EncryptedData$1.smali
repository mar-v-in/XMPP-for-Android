.class Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "EncryptedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;
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
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData$1;->setOptional(I)V

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
    .line 81
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 82
    .local v0, values:[Ljava/lang/Object;
    new-instance v2, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v3

    .line 83
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v4

    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, [B

    .line 82
    invoke-direct {v2, v3, v4, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;-><init>(II[B)V

    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .parameter "object"
    .parameter "values"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
