.class public final Lorg/apache/harmony/security/asn1/DerInputStream;
.super Lorg/apache/harmony/security/asn1/BerInputStream;
.source "DerInputStream.java"


# static fields
.field private static final UNUSED_BITS_MASK:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/asn1/DerInputStream;->UNUSED_BITS_MASK:[B

    .line 35
    return-void

    .line 38
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x3t
        0x7t
        0xft
        0x1ft
        0x3ft
        0x7ft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    .line 43
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .parameter "encoded"
    .parameter "offset"
    .parameter "encodingLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    .line 48
    return-void
.end method


# virtual methods
.method public final next()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v0

    .line 62
    .local v0, tag:I
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 63
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.105"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    return v0
.end method

.method public readBitString()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 79
    const-string v1, "security.106"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    .line 78
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBitString()V

    .line 85
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->length:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->offset:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    sget-object v1, Lorg/apache/harmony/security/asn1/DerInputStream;->UNUSED_BITS_MASK:[B

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 89
    const-string v1, "security.107"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    .line 88
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    return-void
.end method

.method public readBoolean()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBoolean()V

    .line 102
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 103
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 104
    const-string v1, "security.108"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    .line 103
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-void
.end method

.method public readGeneralizedTime()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    .line 117
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 118
    const-string v1, "security.10D"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    .line 117
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readGeneralizedTime()V

    .line 140
    return-void
.end method

.method public readOctetString()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 149
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 150
    const-string v1, "security.109"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    .line 149
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readOctetString()V

    .line 153
    return-void
.end method

.method public readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 0
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V

    .line 167
    return-void
.end method

.method public readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 0
    .parameter "setOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V

    .line 181
    return-void
.end method

.method public readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    if-ne v0, v1, :cond_0

    .line 190
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 191
    const-string v1, "security.10A"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    .line 190
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V

    .line 194
    return-void
.end method

.method public readUTCTime()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    .line 205
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 206
    const-string v1, "security.10B"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    .line 205
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->length:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 211
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 212
    const-string v1, "security.10C"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    .line 211
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readUTCTime()V

    .line 216
    return-void
.end method
