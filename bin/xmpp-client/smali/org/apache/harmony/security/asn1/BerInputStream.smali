.class public Lorg/apache/harmony/security/asn1/BerInputStream;
.super Ljava/lang/Object;
.source "BerInputStream.java"


# static fields
.field private static final BUF_INCREASE_SIZE:I = 0x4000

.field protected static final INDEFINIT_LENGTH:I = -0x1


# instance fields
.field protected buffer:[B

.field public choiceIndex:I

.field public content:Ljava/lang/Object;

.field protected contentOffset:I

.field protected in:Ljava/io/InputStream;

.field protected isIndefinedLength:Z

.field protected isVerify:Z

.field protected length:I

.field protected offset:I

.field public oidElement:I

.field private pool:[[Ljava/lang/Object;

.field public tag:I

.field protected tagOffset:I

.field public times:[I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 5
    .parameter "in"
    .parameter "initialSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 210
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    .line 211
    new-array v1, p2, [B

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 213
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 215
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 218
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 219
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 220
    .local v0, newBuffer:[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 227
    .end local v0           #newBuffer:[B
    :cond_0
    return-void

    .line 224
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isIndefinedLength:Z

    .line 225
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.112"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 155
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    .line 156
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .parameter "encoded"
    .parameter "offset"
    .parameter "expectedLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 174
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 175
    iput p2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 177
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 180
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 181
    add-int v0, p2, p3

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 182
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.111"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    return-void
.end method

.method private final decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 7
    .parameter "collection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 247
    .local v0, begOffset:I
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int v1, v0, v5

    .line 249
    .local v1, endOffset:I
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 251
    .local v3, type:Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-boolean v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v5, :cond_1

    .line 252
    :goto_0
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-gt v1, v5, :cond_0

    .line 271
    :goto_1
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-eq v5, v1, :cond_3

    .line 272
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 273
    const-string v6, "security.134"

    .line 272
    invoke-static {v6, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 253
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 254
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :cond_1
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 260
    .local v2, seqTagOffset:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_2
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-gt v1, v5, :cond_2

    .line 266
    iput-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 268
    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 263
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 275
    .end local v2           #seqTagOffset:I
    .end local v4           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    return-void
.end method

.method public static getLength([B)I
    .locals 5
    .parameter "encoding"

    .prologue
    .line 69
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 70
    .local v1, length:I
    const/4 v2, 0x0

    .line 71
    .local v2, numOctets:I
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_0

    .line 72
    and-int/lit8 v2, v1, 0x7f

    .line 75
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 76
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    add-int/lit8 v3, v2, 0x2

    if-lt v0, v3, :cond_1

    .line 81
    .end local v0           #i:I
    :cond_0
    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    return v3

    .line 77
    .restart local v0       #i:I
    :cond_1
    shl-int/lit8 v3, v1, 0x8

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int v1, v3, v4

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private strToInt(II)I
    .locals 6
    .parameter "off"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/asn1/ASN1Exception;
        }
    .end annotation

    .prologue
    .line 1034
    const/4 v3, 0x0

    .line 1035
    .local v3, result:I
    move v2, p1

    .local v2, i:I
    add-int v1, p1, p2

    .local v1, end:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1042
    return v3

    .line 1036
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    aget-byte v4, v4, v2

    add-int/lit8 v0, v4, -0x30

    .line 1037
    .local v0, c:I
    if-ltz v0, :cond_1

    const/16 v4, 0x9

    if-le v0, v4, :cond_2

    .line 1038
    :cond_1
    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v5, "security.126"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1040
    :cond_2
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    .line 1035
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compactBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 235
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    new-array v0, v1, [B

    .line 237
    .local v0, newBuffer:[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 241
    .end local v0           #newBuffer:[B
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 279
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-object v1

    .line 283
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v3

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 284
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 285
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    goto :goto_0

    .line 283
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final getBuffer()[B
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    return-object v0
.end method

.method public final getContentOffset()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    return v0
.end method

.method public getEncoded()[B
    .locals 5

    .prologue
    .line 310
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 311
    .local v0, encoded:[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    return-object v0
.end method

.method public final getEndOffset()I
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getLength()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    return v0
.end method

.method public final getTagOffset()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    return v0
.end method

.method public next()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 364
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    .line 367
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 368
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v4, 0x80

    if-eq v3, v4, :cond_2

    .line 370
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    .line 371
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    and-int/lit8 v2, v3, 0x7f

    .line 373
    .local v2, numOctets:I
    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 374
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v4, "security.113"

    .line 375
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 374
    invoke-static {v4, v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 380
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 385
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const v4, 0xffffff

    if-le v3, v4, :cond_3

    .line 386
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v4, "security.113"

    .line 387
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 386
    invoke-static {v4, v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 381
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v0

    .line 382
    .local v0, ch:I
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v0           #ch:I
    .end local v1           #i:I
    .end local v2           #numOctets:I
    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 393
    :cond_3
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    .line 395
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    return v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "entry"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 400
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 401
    const/16 v2, 0xa

    filled-new-array {v4, v2}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    .line 404
    :cond_0
    const/4 v0, 0x0

    .line 405
    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 412
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    if-ne v0, v2, :cond_4

    .line 413
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    .line 414
    .local v1, newPool:[[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v3, v1, v5

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aget-object v3, v1, v6

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    .line 421
    .end local v1           #newPool:[[Ljava/lang/Object;
    :goto_1
    return-void

    .line 406
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_3

    .line 407
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object p2, v2, v0

    goto :goto_1

    .line 405
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_4
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aput-object p1, v2, v0

    .line 419
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object p2, v2, v0

    goto :goto_1
.end method

.method protected read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 433
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.13B"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 437
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 446
    :goto_0
    return v0

    .line 439
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 440
    .local v0, octet:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 441
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.13B"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method public readBitString()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 460
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 462
    const-string v1, "security.114"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 461
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 468
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 469
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.115"

    .line 470
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    .line 469
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_4

    .line 474
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.116"

    .line 475
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    .line 474
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_2
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 479
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.117"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_3
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 482
    const-string v1, "security.118"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 483
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 481
    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_4
    return-void
.end method

.method public readBoolean()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 495
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-eq v0, v1, :cond_0

    .line 496
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.11C"

    .line 497
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 496
    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-eq v0, v1, :cond_1

    .line 502
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 503
    const-string v1, "security.11D"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 502
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 507
    return-void
.end method

.method public readContent()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 518
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "security.13B"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_1

    .line 522
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 542
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 526
    .local v0, bytesRead:I
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-eq v0, v2, :cond_5

    .line 529
    move v1, v0

    .line 531
    .local v1, c:I
    :cond_2
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v0, v2, :cond_4

    .line 532
    :cond_3
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 533
    const-string v3, "security.13C"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 535
    :cond_4
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v5, v0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 536
    add-int/2addr v0, v1

    .line 537
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ne v0, v2, :cond_2

    .line 540
    .end local v1           #c:I
    :cond_5
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    goto :goto_0
.end method

.method public readEnumerated()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 553
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 554
    const-string v2, "security.119"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 555
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 553
    invoke-static {v2, v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-nez v1, :cond_1

    .line 564
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 565
    const-string v2, "security.11A"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 564
    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 571
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 573
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 574
    .local v0, bits:I
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_2

    .line 575
    add-int/lit16 v0, v0, 0x100

    .line 578
    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_4

    .line 579
    :cond_3
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 580
    const-string v2, "security.11B"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    .line 579
    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    .end local v0           #bits:I
    :cond_4
    return-void
.end method

.method public readGeneralizedTime()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 593
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_7

    .line 596
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 601
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    .line 603
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.11E"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 607
    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-lt v1, v8, :cond_1

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_2

    .line 610
    :cond_1
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.11F"

    .line 611
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    .line 610
    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :cond_2
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v1, v7, :cond_3

    .line 616
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xe

    aget-byte v0, v1, v2

    .line 617
    .local v0, char14:B
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    .line 618
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.11F"

    .line 619
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    .line 618
    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    .end local v0           #char14:B
    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    if-nez v1, :cond_4

    .line 624
    const/4 v1, 0x7

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    .line 626
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-direct {p0, v3, v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 627
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 628
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v4

    .line 629
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x3

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0x8

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 630
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v6

    .line 631
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x5

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0xc

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 633
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v1, v7, :cond_5

    .line 635
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xf

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/lit8 v3, v3, -0x10

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v5

    .line 637
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ne v1, v8, :cond_6

    .line 638
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0x64

    aput v2, v1, v5

    .line 652
    :cond_5
    :goto_0
    return-void

    .line 639
    :cond_6
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    .line 640
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0xa

    aput v2, v1, v5

    goto :goto_0

    .line 645
    :cond_7
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0x38

    if-ne v1, v2, :cond_8

    .line 646
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.120"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 649
    :cond_8
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.121"

    .line 650
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 649
    invoke-static {v2, v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readInteger()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 662
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 663
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "security.127"

    .line 664
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 663
    invoke-static {v3, v4, v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 668
    :cond_0
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v2, v4, :cond_1

    .line 669
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "security.128"

    .line 670
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 669
    invoke-static {v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 673
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 676
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v2, v4, :cond_4

    .line 678
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v4

    aget-byte v0, v2, v3

    .line 679
    .local v0, firstByte:B
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    int-to-byte v1, v2

    .line 681
    .local v1, secondByte:B
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 682
    const/16 v2, -0x80

    if-ne v1, v2, :cond_4

    .line 683
    :cond_3
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "security.129"

    .line 684
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v4, v5

    .line 683
    invoke-static {v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    .end local v0           #firstByte:B
    .end local v1           #secondByte:B
    :cond_4
    return-void
.end method

.method public readOID()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 716
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 717
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.12C"

    .line 718
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 717
    invoke-static {v2, v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v1, v3, :cond_1

    .line 723
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 724
    const-string v2, "security.12D"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 723
    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 727
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 730
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    .line 731
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 732
    const-string v2, "security.12E"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v3, -0x1

    .line 731
    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    :cond_2
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    .line 736
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-lt v0, v1, :cond_4

    .line 754
    return-void

    .line 751
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 750
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-eq v1, v2, :cond_3

    .line 736
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    goto :goto_0
.end method

.method public readOctetString()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 698
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 706
    return-void

    .line 699
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 700
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.12A"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_1
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 703
    const-string v1, "security.12B"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 704
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 702
    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 10
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v7, 0x30

    if-eq v6, v7, :cond_0

    .line 767
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 768
    const-string v7, "security.12F"

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 769
    iget v9, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 767
    invoke-static {v7, v8, v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 772
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 773
    .local v0, begOffset:I
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int v1, v0, v6

    .line 775
    .local v1, endOffset:I
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 777
    .local v4, type:[Lorg/apache/harmony/security/asn1/ASN1Type;
    const/4 v2, 0x0

    .line 779
    .local v2, i:I
    iget-boolean v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v6, :cond_8

    .line 781
    :goto_0
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-ge v6, v1, :cond_1

    array-length v6, v4

    if-lt v2, v6, :cond_2

    .line 798
    :cond_1
    :goto_1
    array-length v6, v4

    if-lt v2, v6, :cond_6

    .line 845
    :goto_2
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-eq v6, v1, :cond_12

    .line 846
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 847
    const-string v7, "security.134"

    .line 846
    invoke-static {v7, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 783
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 784
    :goto_3
    aget-object v6, v4, v2

    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 794
    aget-object v6, v4, v2

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 781
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 786
    :cond_3
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_4

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_5

    .line 787
    :cond_4
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 788
    const-string v7, "security.130"

    .line 789
    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 787
    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 791
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 799
    :cond_6
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_7

    .line 800
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v7, "security.131"

    .line 801
    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 800
    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 798
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 807
    :cond_8
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 809
    .local v3, seqTagOffset:I
    array-length v6, v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 810
    .local v5, values:[Ljava/lang/Object;
    :goto_4
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-ge v6, v1, :cond_9

    array-length v6, v4

    if-lt v2, v6, :cond_a

    .line 831
    :cond_9
    :goto_5
    array-length v6, v4

    if-lt v2, v6, :cond_f

    .line 840
    iput-object v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 842
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    goto :goto_2

    .line 812
    :cond_a
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 813
    :goto_6
    aget-object v6, v4, v2

    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 827
    aget-object v6, v4, v2

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    .line 810
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 815
    :cond_b
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_c

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_d

    .line 816
    :cond_c
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 817
    const-string v7, "security.132"

    .line 818
    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 816
    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 822
    :cond_d
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-eqz v6, :cond_e

    .line 823
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 825
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 832
    :cond_f
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_10

    .line 833
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v7, "security.133"

    .line 834
    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 833
    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 836
    :cond_10
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-eqz v6, :cond_11

    .line 837
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 831
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 849
    .end local v3           #seqTagOffset:I
    .end local v5           #values:[Ljava/lang/Object;
    :cond_12
    return-void
.end method

.method public readSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 4
    .parameter "sequenceOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 862
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 863
    const-string v1, "security.135"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 864
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 862
    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 868
    return-void
.end method

.method public readSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .locals 4
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    .line 881
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.136"

    .line 882
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 881
    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_0
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.137"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 4
    .parameter "setOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    .line 899
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.138"

    .line 900
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 899
    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 904
    return-void
.end method

.method public readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-ne v0, v1, :cond_0

    .line 916
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 924
    return-void

    .line 917
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    if-ne v0, v1, :cond_1

    .line 918
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.139"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_1
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    .line 921
    const-string v1, "security.13A"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 922
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 920
    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUTCTime()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 945
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_4

    .line 947
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    packed-switch v0, :pswitch_data_0

    .line 956
    :pswitch_0
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.123"

    .line 957
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 956
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :pswitch_1
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.122"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 967
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    .line 968
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ASN.1 UTCTime wrongly encoded at ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 969
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    if-nez v0, :cond_1

    .line 973
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    .line 976
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v2

    .line 977
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v0, v0, v2

    const/16 v1, 0x31

    if-le v0, v1, :cond_3

    .line 978
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v1, v0, v2

    add-int/lit16 v1, v1, 0x76c

    aput v1, v0, v2

    .line 983
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 984
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v3

    .line 985
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 986
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x4

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 988
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 989
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x5

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 999
    :cond_2
    return-void

    .line 980
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v1, v0, v2

    add-int/lit16 v1, v1, 0x7d0

    aput v1, v0, v2

    goto :goto_0

    .line 993
    :cond_4
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x37

    if-ne v0, v1, :cond_5

    .line 994
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.124"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_5
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.125"

    .line 997
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 996
    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reset([B)V
    .locals 0
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1016
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 1018
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 1019
    return-void
.end method

.method public final setVerify()V
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    .line 1026
    return-void
.end method
