.class public Lorg/apache/harmony/luni/util/SHAOutputStream;
.super Ljava/io/OutputStream;
.source "SHAOutputStream.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BlockSizeInBytes:I = 0x40

.field private static final H0:I = 0x67452301

.field private static final H1:I = -0x10325477

.field private static final H2:I = -0x67452302

.field private static final H3:I = 0x10325476

.field private static final H4:I = -0x3c2d1e10

.field private static final HConstantsSize:I = 0x5

.field private static final HashSizeInBytes:I = 0x14

.field private static final K0_19:I = 0x5a827999

.field private static final K20_39:I = 0x6ed9eba1

.field private static final K40_59:I = -0x70e44324

.field private static final K60_79:I = -0x359d3e2a

.field private static final WArraySize:I = 0x50


# instance fields
.field private HConstants:[I

.field private MArray:[B

.field private WArray:[I

.field private bytesProcessed:J

.field private bytesToProcess:I

.field private oneByte:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->oneByte:[B

    .line 123
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->initialize()V

    .line 124
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->reset()V

    .line 125
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x4

    .line 138
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;-><init>()V

    .line 140
    array-length v2, p1

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 144
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v6, :cond_1

    .line 150
    return-void

    .line 145
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 146
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-lt v1, v6, :cond_2

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v2, v0

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v5, v1, 0x3

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private copyToInternalBuffer([BII)V
    .locals 4
    .parameter "buffer"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 188
    move v1, p2

    .line 189
    .local v1, index:I
    iget v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    add-int/2addr v2, p3

    if-lt v0, v2, :cond_0

    .line 193
    iget v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    .line 194
    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    aget-byte v3, p1, v1

    aput-byte v3, v2, v0

    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    .line 271
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    .line 272
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    .line 273
    return-void
.end method

.method private padBuffer()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x40

    .line 281
    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    iget v4, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    const/16 v5, -0x80

    aput-byte v5, v3, v4

    .line 282
    iget v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    add-int/lit8 v0, v3, 0x1

    .local v0, i:I
    :goto_0
    if-lt v0, v7, :cond_1

    .line 286
    iget v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    int-to-long v3, v3

    iget-wide v5, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesProcessed:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    mul-long v1, v3, v5

    .line 289
    .local v1, lengthInBits:J
    iget v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    add-int/lit8 v3, v3, 0x9

    if-le v3, v7, :cond_0

    .line 293
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 295
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v7, :cond_2

    .line 300
    :cond_0
    const/4 v0, 0x1

    :goto_2
    const/16 v3, 0x9

    if-lt v0, v3, :cond_3

    .line 304
    return-void

    .line 283
    .end local v1           #lengthInBits:J
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    aput-byte v8, v3, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .restart local v1       #lengthInBits:J
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    aput-byte v8, v3, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    rsub-int/lit8 v4, v0, 0x40

    const-wide/16 v5, 0xff

    and-long/2addr v5, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 302
    const/16 v3, 0x8

    ushr-long/2addr v1, v3

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private processBuffer()V
    .locals 11

    .prologue
    .line 319
    const/4 v5, 0x0

    .local v5, t:I
    :goto_0
    const/16 v7, 0xf

    if-le v5, v7, :cond_0

    .line 326
    const/16 v5, 0x10

    :goto_1
    const/16 v7, 0x4f

    if-le v5, v7, :cond_1

    .line 334
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x0

    aget v0, v7, v8

    .line 335
    .local v0, A:I
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x1

    aget v1, v7, v8

    .line 336
    .local v1, B:I
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x2

    aget v2, v7, v8

    .line 337
    .local v2, C:I
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x3

    aget v3, v7, v8

    .line 338
    .local v3, D:I
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x4

    aget v4, v7, v8

    .line 341
    .local v4, E:I
    const/4 v5, 0x0

    :goto_2
    const/16 v7, 0x13

    if-le v5, v7, :cond_2

    .line 351
    const/16 v5, 0x14

    :goto_3
    const/16 v7, 0x27

    if-le v5, v7, :cond_3

    .line 361
    const/16 v5, 0x28

    :goto_4
    const/16 v7, 0x3b

    if-le v5, v7, :cond_4

    .line 371
    const/16 v5, 0x3c

    :goto_5
    const/16 v7, 0x4f

    if-le v5, v7, :cond_5

    .line 383
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v9, v0

    aput v9, v7, v8

    .line 384
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v9, v1

    aput v9, v7, v8

    .line 385
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x2

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v9, v2

    aput v9, v7, v8

    .line 386
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x3

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    add-int/2addr v9, v3

    aput v9, v7, v8

    .line 387
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v8, 0x4

    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    add-int/2addr v9, v4

    aput v9, v7, v8

    .line 389
    iget-wide v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesProcessed:J

    const-wide/16 v9, 0x40

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesProcessed:J

    .line 390
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    .line 392
    return-void

    .line 321
    .end local v0           #A:I
    .end local v1           #B:I
    .end local v2           #C:I
    .end local v3           #D:I
    .end local v4           #E:I
    :cond_0
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    mul-int/lit8 v9, v5, 0x4

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    .line 322
    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    mul-int/lit8 v10, v5, 0x4

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    .line 323
    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    mul-int/lit8 v10, v5, 0x4

    add-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    .line 324
    iget-object v9, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    mul-int/lit8 v10, v5, 0x4

    add-int/lit8 v10, v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    .line 321
    aput v8, v7, v5

    .line 319
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 327
    :cond_1
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    add-int/lit8 v8, v5, -0x3

    aget v7, v7, v8

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    add-int/lit8 v9, v5, -0x8

    aget v8, v8, v9

    xor-int/2addr v7, v8

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    add-int/lit8 v9, v5, -0xe

    aget v8, v8, v9

    xor-int/2addr v7, v8

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    add-int/lit8 v9, v5, -0x10

    aget v8, v8, v9

    xor-int v6, v7, v8

    .line 328
    .local v6, temp:I
    shl-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v8, v6, 0x1f

    or-int v6, v7, v8

    .line 330
    iget-object v7, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    aput v6, v7, v5

    .line 326
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 342
    .end local v6           #temp:I
    .restart local v0       #A:I
    .restart local v1       #B:I
    .restart local v2       #C:I
    .restart local v3       #D:I
    .restart local v4       #E:I
    :cond_2
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int v6, v7, v8

    .line 343
    .restart local v6       #temp:I
    add-int v7, v6, v4

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int v6, v7, v8

    .line 344
    and-int v7, v1, v2

    xor-int/lit8 v8, v1, -0x1

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 345
    move v4, v3

    .line 346
    move v3, v2

    .line 347
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 348
    move v1, v0

    .line 349
    move v0, v6

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 352
    .end local v6           #temp:I
    :cond_3
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int v6, v7, v8

    .line 353
    .restart local v6       #temp:I
    add-int v7, v6, v4

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int v6, v7, v8

    .line 354
    xor-int v7, v1, v2

    xor-int/2addr v7, v3

    add-int/2addr v6, v7

    .line 355
    move v4, v3

    .line 356
    move v3, v2

    .line 357
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 358
    move v1, v0

    .line 359
    move v0, v6

    .line 351
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 362
    .end local v6           #temp:I
    :cond_4
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int v6, v7, v8

    .line 363
    .restart local v6       #temp:I
    add-int v7, v6, v4

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    const v8, -0x70e44324

    add-int v6, v7, v8

    .line 364
    and-int v7, v1, v2

    and-int v8, v1, v3

    or-int/2addr v7, v8

    and-int v8, v2, v3

    or-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 365
    move v4, v3

    .line 366
    move v3, v2

    .line 367
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 368
    move v1, v0

    .line 369
    move v0, v6

    .line 361
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 372
    .end local v6           #temp:I
    :cond_5
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int v6, v7, v8

    .line 373
    .restart local v6       #temp:I
    add-int v7, v6, v4

    iget-object v8, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    const v8, -0x359d3e2a

    add-int v6, v7, v8

    .line 374
    xor-int v7, v1, v2

    xor-int/2addr v7, v3

    add-int/2addr v6, v7

    .line 375
    move v4, v3

    .line 376
    move v3, v2

    .line 377
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 378
    move v1, v0

    .line 379
    move v0, v6

    .line 371
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5
.end method

.method private static toStringBlock([B)Ljava/lang/String;
    .locals 2
    .parameter "block"

    .prologue
    .line 74
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/harmony/luni/util/SHAOutputStream;->toStringBlock([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringBlock([BII)Ljava/lang/String;
    .locals 5
    .parameter "block"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 89
    const-string v1, "0123456789ABCDEF"

    .line 90
    .local v1, hexdigits:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    move v2, p1

    .local v2, i:I
    :goto_0
    add-int v3, p1, p2

    if-lt v2, v3, :cond_0

    .line 96
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 93
    :cond_0
    const-string v3, "0123456789ABCDEF"

    aget-byte v4, p0, v2

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, "0123456789ABCDEF"

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/util/SHAOutputStream;

    .line 167
    .local v0, result:Lorg/apache/harmony/luni/util/SHAOutputStream;
    iget-object v1, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    .line 168
    iget-object v1, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/harmony/luni/util/SHAOutputStream;->WArray:[I

    .line 169
    iget-object v1, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/harmony/luni/util/SHAOutputStream;->MArray:[B

    .line 170
    iget-object v1, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->oneByte:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/harmony/luni/util/SHAOutputStream;->oneByte:[B

    .line 171
    return-object v0
.end method

.method public getHash()[I
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->padBuffer()V

    .line 205
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 206
    iget-object v1, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 209
    .local v0, result:[I
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->reset()V

    .line 210
    return-object v0
.end method

.method public getHashAsBytes()[B
    .locals 4

    .prologue
    .line 221
    const/16 v2, 0x14

    new-array v0, v2, [B

    .line 222
    .local v0, hash:[B
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->padBuffer()V

    .line 223
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 227
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->reset()V

    .line 236
    return-object v0

    .line 228
    :cond_0
    mul-int/lit8 v2, v1, 0x4

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 229
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 230
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 231
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHashAsBytes(Z)[B
    .locals 4
    .parameter "pad"

    .prologue
    .line 247
    const/16 v2, 0x14

    new-array v0, v2, [B

    .line 248
    .local v0, hash:[B
    if-eqz p1, :cond_0

    .line 249
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->padBuffer()V

    .line 250
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 254
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 262
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->reset()V

    .line 263
    return-object v0

    .line 255
    :cond_1
    mul-int/lit8 v2, v1, 0x4

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 256
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 257
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 258
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    aget v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const v1, 0x67452301

    aput v1, v0, v3

    .line 400
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    .line 401
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    .line 402
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    .line 403
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->HConstants:[I

    const/4 v1, 0x4

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    .line 404
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesProcessed:J

    .line 405
    iput v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    .line 406
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->getHashAsBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/luni/util/SHAOutputStream;->toStringBlock([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 465
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->oneByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 466
    iget-object v0, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/harmony/luni/util/SHAOutputStream;->write([BII)V

    .line 467
    return-void
.end method

.method public write([BII)V
    .locals 5
    .parameter "buffer"
    .parameter "off"
    .parameter "len"

    .prologue
    const/16 v4, 0x40

    .line 432
    iget v3, p0, Lorg/apache/harmony/luni/util/SHAOutputStream;->bytesToProcess:I

    rsub-int/lit8 v1, v3, 0x40

    .line 433
    .local v1, spaceLeft:I
    if-ge p3, v1, :cond_1

    .line 434
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/util/SHAOutputStream;->copyToInternalBuffer([BII)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/luni/util/SHAOutputStream;->copyToInternalBuffer([BII)V

    .line 440
    sub-int v0, p3, v1

    .line 441
    .local v0, bytesLeft:I
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 442
    add-int v2, p2, v1

    .line 443
    .local v2, start:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 449
    if-lez v0, :cond_0

    .line 451
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->copyToInternalBuffer([BII)V

    goto :goto_0

    .line 444
    :cond_2
    invoke-direct {p0, p1, v2, v4}, Lorg/apache/harmony/luni/util/SHAOutputStream;->copyToInternalBuffer([BII)V

    .line 445
    add-int/lit8 v0, v0, -0x40

    .line 446
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/SHAOutputStream;->processBuffer()V

    .line 447
    add-int/lit8 v2, v2, 0x40

    goto :goto_1
.end method
