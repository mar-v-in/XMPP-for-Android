.class public abstract Lorg/apache/harmony/security/asn1/ASN1Type;
.super Ljava/lang/Object;
.source "ASN1Type.java"

# interfaces
.implements Lorg/apache/harmony/security/asn1/ASN1Constants;


# instance fields
.field public final constrId:I

.field public final id:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "tagNumber"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    .line 57
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "tagClass"
    .parameter "tagNumber"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-gez p2, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 76
    const-string v1, "security.102"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    .line 80
    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    .line 81
    const/16 v0, 0xc0

    if-eq p1, v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 83
    const-string v1, "security.103"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    const/16 v0, 0x1f

    if-ge p2, v0, :cond_2

    .line 88
    add-int v0, p1, p2

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    .line 94
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    .line 95
    return-void

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 92
    const-string v1, "security.104"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract checkTag(I)Z
.end method

.method public final decode(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final decode([B)Ljava/lang/Object;
    .locals 1
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final decode([BII)Ljava/lang/Object;
    .locals 1
    .parameter "encoded"
    .parameter "offset"
    .parameter "encodingLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([BII)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final encode(Ljava/lang/Object;)[B
    .locals 2
    .parameter "object"

    .prologue
    .line 138
    new-instance v0, Lorg/apache/harmony/security/asn1/DerOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;Ljava/lang/Object;)V

    .line 139
    .local v0, out:Lorg/apache/harmony/security/asn1/DerOutputStream;
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/DerOutputStream;->encoded:[B

    return-object v1
.end method

.method public abstract encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
.end method

.method public abstract encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
.end method

.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    return-object v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .locals 4
    .parameter "out"

    .prologue
    .line 183
    const/4 v1, 0x1

    .line 187
    .local v1, len:I
    add-int/lit8 v1, v1, 0x1

    .line 188
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 191
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    shr-int/lit8 v0, v2, 0x8

    .local v0, cur:I
    :goto_0
    if-gtz v0, :cond_1

    .line 195
    .end local v0           #cur:I
    :cond_0
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v1, v2

    .line 197
    return v1

    .line 192
    .restart local v0       #cur:I
    :cond_1
    shr-int/lit8 v0, v0, 0x8

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(tag: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    iget v1, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final verify(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 218
    .local v0, decoder:Lorg/apache/harmony/security/asn1/DerInputStream;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->setVerify()V

    .line 219
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public final verify([B)V
    .locals 1
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 212
    .local v0, decoder:Lorg/apache/harmony/security/asn1/DerInputStream;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->setVerify()V

    .line 213
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 214
    return-void
.end method
