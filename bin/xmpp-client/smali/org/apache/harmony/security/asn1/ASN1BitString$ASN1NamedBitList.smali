.class public Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;
.super Lorg/apache/harmony/security/asn1/ASN1BitString;
.source "ASN1BitString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1BitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASN1NamedBitList"
.end annotation


# static fields
.field private static final INDEFINITE_SIZE:I = -0x1

.field private static final SET_MASK:[B

.field private static final emptyString:Lorg/apache/harmony/security/asn1/BitString;


# instance fields
.field private final maxBits:I

.field private final minBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    .line 47
    new-instance v0, Lorg/apache/harmony/security/asn1/BitString;

    .line 48
    new-array v1, v2, [B

    .line 47
    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->emptyString:Lorg/apache/harmony/security/asn1/BitString;

    .line 42
    return-void

    .line 44
    :array_0
    .array-data 0x1
        0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1BitString;-><init>()V

    .line 57
    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    .line 58
    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "minBits"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1BitString;-><init>()V

    .line 62
    iput p1, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    .line 64
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "minBits"
    .parameter "maxBits"

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1BitString;-><init>()V

    .line 67
    iput p1, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    .line 68
    iput p2, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    .line 69
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, -0x1

    .line 74
    const/4 v7, 0x0

    check-cast v7, [Z

    .line 76
    .local v7, value:[Z
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v6, v8, v11

    .line 77
    .local v6, unusedBits:I
    iget v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x8

    sub-int v0, v8, v6

    .line 79
    .local v0, bitsNumber:I
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    if-ne v8, v12, :cond_3

    .line 80
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    if-ne v8, v12, :cond_1

    .line 81
    new-array v7, v0, [Z

    .line 96
    :goto_0
    if-nez v0, :cond_5

    .line 118
    :cond_0
    return-object v7

    .line 83
    :cond_1
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    if-le v0, v8, :cond_2

    .line 84
    new-array v7, v0, [Z

    goto :goto_0

    .line 86
    :cond_2
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    new-array v7, v8, [Z

    goto :goto_0

    .line 90
    :cond_3
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    if-le v0, v8, :cond_4

    .line 91
    new-instance v8, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v9, "security.97"

    invoke-static {v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 93
    :cond_4
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    new-array v7, v8, [Z

    goto :goto_0

    .line 101
    :cond_5
    const/4 v1, 0x1

    .line 102
    .local v1, i:I
    const/4 v2, 0x0

    .line 103
    .local v2, j:I
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v11, v1

    aget-byte v4, v8, v11

    .line 104
    .local v4, octet:B
    iget v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/lit8 v5, v8, -0x1

    .local v5, size:I
    :goto_1
    if-lt v1, v5, :cond_6

    .line 114
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    rsub-int/lit8 v8, v6, 0x8

    if-ge v3, v8, :cond_0

    .line 115
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v3

    and-int/2addr v8, v4

    if-eqz v8, :cond_9

    move v8, v9

    :goto_3
    aput-boolean v8, v7, v2

    .line 114
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 106
    .end local v3           #k:I
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_4
    const/16 v8, 0x8

    if-lt v3, v8, :cond_7

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v11, v1

    aget-byte v4, v8, v11

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_7
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v3

    and-int/2addr v8, v4

    if-eqz v8, :cond_8

    move v8, v9

    :goto_5
    aput-boolean v8, v7, v2

    .line 106
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move v8, v10

    .line 107
    goto :goto_5

    :cond_9
    move v8, v10

    .line 115
    goto :goto_3
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 9
    .parameter "out"

    .prologue
    const/4 v8, -0x1

    .line 124
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v5, [Z

    .line 126
    .local v5, toEncode:[Z
    array-length v7, v5

    add-int/lit8 v2, v7, -0x1

    .line 127
    .local v2, index:I
    :goto_0
    if-le v2, v8, :cond_0

    aget-boolean v7, v5, v2

    if-eqz v7, :cond_1

    .line 131
    :cond_0
    if-ne v2, v8, :cond_2

    .line 132
    sget-object v7, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->emptyString:Lorg/apache/harmony/security/asn1/BitString;

    iput-object v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 133
    const/4 v7, 0x1

    iput v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 158
    :goto_1
    return-void

    .line 128
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 135
    :cond_2
    rem-int/lit8 v7, v2, 0x8

    rsub-int/lit8 v6, v7, 0x7

    .line 136
    .local v6, unusedBits:I
    div-int/lit8 v7, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    new-array v0, v7, [B

    .line 138
    .local v0, bytes:[B
    const/4 v3, 0x0

    .line 139
    .local v3, j:I
    array-length v7, v0

    add-int/lit8 v2, v7, -0x1

    .line 140
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-lt v1, v2, :cond_3

    .line 149
    const/4 v4, 0x0

    .local v4, k:I
    :goto_3
    rsub-int/lit8 v7, v6, 0x8

    if-lt v4, v7, :cond_6

    .line 155
    new-instance v7, Lorg/apache/harmony/security/asn1/BitString;

    invoke-direct {v7, v0, v6}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    iput-object v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 156
    array-length v7, v0

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    goto :goto_1

    .line 141
    .end local v4           #k:I
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #k:I
    :goto_4
    const/16 v7, 0x8

    if-lt v4, v7, :cond_4

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 142
    :cond_4
    aget-boolean v7, v5, v3

    if-eqz v7, :cond_5

    .line 143
    aget-byte v7, v0, v1

    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 141
    :cond_5
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 150
    :cond_6
    aget-boolean v7, v5, v3

    if-eqz v7, :cond_7

    .line 151
    aget-byte v7, v0, v2

    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 149
    :cond_7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
