.class Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "X509CertPathImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final PRECALCULATED_HEAD:[B

.field private final SIGNERS_INFO:[B


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 8
    .parameter "$anonymous0"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 287
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 299
    const/16 v0, 0xa

    new-array v0, v0, [B

    aput-byte v4, v0, v5

    aput-byte v3, v0, v3

    .line 300
    aput-byte v3, v0, v4

    .line 301
    const/16 v1, 0x31

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    .line 302
    const/16 v2, 0x30

    aput-byte v2, v0, v1

    aput-byte v6, v0, v7

    const/4 v1, 0x7

    aput-byte v7, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;->PRECALCULATED_HEAD:[B

    .line 306
    new-array v0, v4, [B

    const/16 v1, 0x31

    aput-byte v1, v0, v5

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;->SIGNERS_INFO:[B

    .line 1
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Ljava/lang/RuntimeException;

    .line 312
    const-string v1, "Invalid use of encoder for PKCS#7 SignedData object"

    .line 311
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .parameter "object"
    .parameter "values"

    .prologue
    .line 317
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;->PRECALCULATED_HEAD:[B

    aput-object v1, p2, v0

    .line 318
    const/4 v0, 0x1

    aput-object p1, p2, v0

    .line 319
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;->SIGNERS_INFO:[B

    aput-object v1, p2, v0

    .line 320
    return-void
.end method
