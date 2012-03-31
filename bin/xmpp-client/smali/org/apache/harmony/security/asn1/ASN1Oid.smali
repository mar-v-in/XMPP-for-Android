.class public Lorg/apache/harmony/security/asn1/ASN1Oid;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Oid.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

.field private static final STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Oid;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    .line 37
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Oid$1;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Oid$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    .line 136
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    return-object v0
.end method

.method public static getInstanceForString()Lorg/apache/harmony/security/asn1/ASN1Oid;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;

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
    .line 146
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readOID()V

    .line 148
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 156
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeOID()V

    .line 157
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 175
    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    .line 176
    .local v4, oidElement:I
    new-array v3, v4, [I

    .line 177
    .local v3, oid:[I
    const/4 v1, 0x1

    .local v1, id:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_0

    .line 188
    aget v5, v3, v7

    const/16 v6, 0x4f

    if-le v5, v6, :cond_2

    .line 189
    const/4 v5, 0x2

    aput v5, v3, v8

    .line 190
    aget v5, v3, v7

    add-int/lit8 v5, v5, -0x50

    aput v5, v3, v7

    .line 195
    :goto_1
    return-object v3

    .line 178
    :cond_0
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v0

    aget-byte v2, v5, v6

    .line 179
    .local v2, octet:I
    and-int/lit8 v4, v2, 0x7f

    .line 180
    :goto_2
    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_1

    .line 185
    aput v4, v3, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 182
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v0

    aget-byte v2, v5, v6

    .line 183
    shl-int/lit8 v5, v4, 0x7

    and-int/lit8 v6, v2, 0x7f

    or-int v4, v5, v6

    goto :goto_2

    .line 192
    .end local v2           #octet:I
    :cond_2
    aget v5, v3, v7

    div-int/lit8 v5, v5, 0x28

    aput v5, v3, v8

    .line 193
    aget v5, v3, v7

    rem-int/lit8 v5, v5, 0x28

    aput v5, v3, v7

    goto :goto_1
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 6
    .parameter "out"

    .prologue
    .line 200
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v3, [I

    .line 202
    .local v3, oid:[I
    const/4 v2, 0x0

    .line 205
    .local v2, length:I
    const/4 v4, 0x0

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0x28

    const/4 v5, 0x1

    aget v5, v3, v5

    add-int v0, v4, v5

    .line 206
    .local v0, elem:I
    if-nez v0, :cond_1

    .line 207
    const/4 v2, 0x1

    .line 215
    :goto_0
    const/4 v1, 0x2

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-lt v1, v4, :cond_2

    .line 224
    iput v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 225
    return-void

    .line 210
    .end local v1           #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 209
    shr-int/lit8 v0, v0, 0x7

    :cond_1
    if-gtz v0, :cond_0

    goto :goto_0

    .line 216
    .restart local v1       #i:I
    :cond_2
    aget v4, v3, v1

    if-nez v4, :cond_4

    .line 217
    add-int/lit8 v2, v2, 0x1

    .line 215
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_4
    aget v0, v3, v1

    :goto_2
    if-lez v0, :cond_3

    .line 221
    add-int/lit8 v2, v2, 0x1

    .line 220
    shr-int/lit8 v0, v0, 0x7

    goto :goto_2
.end method
