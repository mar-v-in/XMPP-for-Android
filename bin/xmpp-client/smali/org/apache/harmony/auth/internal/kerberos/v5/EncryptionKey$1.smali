.class Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "EncryptionKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;
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
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 57
    .local v0, values:[Ljava/lang/Object;
    new-instance v2, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v3

    .line 58
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [B

    .line 57
    invoke-direct {v2, v3, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;-><init>(I[B)V

    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 64
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;

    .line 66
    .local v0, ekey:Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->type:I
    invoke-static {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->access$0(Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    .line 67
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->value:[B
    invoke-static {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->access$1(Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;)[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 68
    return-void
.end method
