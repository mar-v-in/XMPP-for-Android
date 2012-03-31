.class public Lorg/apache/harmony/security/asn1/ASN1Enumerated;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Enumerated.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    .line 58
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readEnumerated()V

    .line 70
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 78
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeInteger()V

    .line 79
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
    .line 96
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    new-array v0, v1, [B

    .line 97
    .local v0, bytesEncoded:[B
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    const/4 v3, 0x0

    .line 98
    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 97
    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 104
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 105
    return-void
.end method
