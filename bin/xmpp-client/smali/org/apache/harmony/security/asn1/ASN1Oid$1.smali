.class Lorg/apache/harmony/security/asn1/ASN1Oid$1;
.super Lorg/apache/harmony/security/asn1/ASN1Oid;
.source "ASN1Oid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1Oid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2e

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v4, v5, v6

    .line 48
    .local v4, octet:I
    and-int/lit8 v1, v4, 0x7f

    .line 50
    .local v1, element:I
    const/4 v2, 0x0

    .line 51
    .local v2, index:I
    :goto_0
    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_0

    .line 57
    const/16 v5, 0x4f

    if-le v1, v5, :cond_1

    .line 58
    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v5, v1, -0x50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    :goto_1
    const/4 v3, 0x2

    .local v3, j:I
    :goto_2
    iget v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    if-lt v3, v5, :cond_2

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 52
    .end local v3           #j:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 53
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v2

    aget-byte v4, v5, v6

    .line 54
    shl-int/lit8 v5, v1, 0x7

    and-int/lit8 v6, v4, 0x7f

    or-int v1, v5, v6

    goto :goto_0

    .line 62
    :cond_1
    div-int/lit8 v5, v1, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    rem-int/lit8 v5, v1, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 69
    .restart local v3       #j:I
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v2

    aget-byte v4, v5, v6

    .line 73
    and-int/lit8 v1, v4, 0x7f

    .line 75
    :goto_3
    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_3

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 76
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 77
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v2

    aget-byte v4, v5, v6

    .line 78
    shl-int/lit8 v5, v1, 0x7

    and-int/lit8 v6, v4, 0x7f

    or-int v1, v5, v6

    goto :goto_3
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 91
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 93
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 94
    return-void
.end method
