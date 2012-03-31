.class public Lorg/apache/harmony/security/asn1/ASN1Any;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Any.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Any;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Any;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Any;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Any;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Any;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    .line 58
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Any;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Any;

    return-object v0
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1
    .parameter "identifier"

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 84
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Any;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 92
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    .line 93
    return-void
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 103
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    .line 104
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 117
    .local v0, bytesEncoded:[B
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    const/4 v3, 0x0

    .line 118
    array-length v4, v0

    .line 117
    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-object v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .locals 1
    .parameter "out"

    .prologue
    .line 124
    iget v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    return v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 129
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 130
    return-void
.end method
