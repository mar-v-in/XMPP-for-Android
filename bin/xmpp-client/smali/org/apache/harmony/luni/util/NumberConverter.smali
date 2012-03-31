.class public final Lorg/apache/harmony/luni/util/NumberConverter;
.super Ljava/lang/Object;
.source "NumberConverter.java"


# static fields
.field private static final TEN_TO_THE:[J

.field private static final invLogOfTenBaseTwo:D


# instance fields
.field private firstK:I

.field private getCount:I

.field private setCount:I

.field private final uArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 30
    const-wide/high16 v3, 0x4000

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    .line 31
    const-wide/high16 v5, 0x4024

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    .line 30
    div-double/2addr v3, v5

    sput-wide v3, Lorg/apache/harmony/luni/util/NumberConverter;->invLogOfTenBaseTwo:D

    .line 33
    const/16 v3, 0x14

    new-array v3, v3, [J

    sput-object v3, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    .line 36
    sget-object v3, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    aput-wide v5, v3, v4

    .line 37
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    sget-object v3, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 20
    return-void

    .line 38
    :cond_0
    sget-object v3, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    add-int/lit8 v4, v0, -0x1

    aget-wide v1, v3, v4

    .line 39
    .local v1, previous:J
    sget-object v3, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    const/4 v4, 0x1

    shl-long v4, v1, v4

    const/4 v6, 0x3

    shl-long v6, v1, v6

    add-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    .line 20
    return-void
.end method

.method private native bigIntDigitGeneratorInstImpl(JIZZI)V
.end method

.method public static convert(D)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 44
    invoke-static {}, Lorg/apache/harmony/luni/util/NumberConverter;->getConverter()Lorg/apache/harmony/luni/util/NumberConverter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/harmony/luni/util/NumberConverter;->convertD(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert(F)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 48
    invoke-static {}, Lorg/apache/harmony/luni/util/NumberConverter;->getConverter()Lorg/apache/harmony/luni/util/NumberConverter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/harmony/luni/util/NumberConverter;->convertF(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private freeFormat()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x2e

    const/4 v11, 0x0

    const/16 v10, 0x30

    const/4 v6, -0x1

    .line 176
    const/16 v7, 0x19

    new-array v3, v7, [C

    .line 179
    .local v3, formattedDecimal:[C
    const/4 v1, 0x0

    .line 180
    .local v1, charPos:I
    iget v5, p0, Lorg/apache/harmony/luni/util/NumberConverter;->firstK:I

    .line 181
    .local v5, k:I
    if-gez v5, :cond_0

    .line 182
    aput-char v10, v3, v11

    .line 183
    const/4 v7, 0x1

    aput-char v12, v3, v7

    .line 184
    add-int/lit8 v1, v1, 0x2

    .line 185
    add-int/lit8 v4, v5, 0x1

    .local v4, i:I
    move v2, v1

    .end local v1           #charPos:I
    .local v2, charPos:I
    :goto_0
    if-ltz v4, :cond_2

    move v1, v2

    .line 190
    .end local v2           #charPos:I
    .end local v4           #i:I
    .restart local v1       #charPos:I
    :cond_0
    iget-object v7, p0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    iget v8, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    aget v0, v7, v8

    .local v0, U:I
    move v2, v1

    .line 192
    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    :goto_1
    if-eq v0, v6, :cond_3

    .line 193
    add-int/lit8 v1, v2, 0x1

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    aput-char v7, v3, v2

    move v2, v1

    .line 198
    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    :cond_1
    :goto_2
    if-nez v5, :cond_6

    .line 199
    add-int/lit8 v1, v2, 0x1

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    aput-char v12, v3, v2

    .line 202
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 203
    iget v7, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    iget v8, p0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    if-ge v7, v8, :cond_4

    iget-object v7, p0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    iget v8, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    aget v0, v7, v8

    .line 204
    :goto_4
    if-ne v0, v6, :cond_5

    if-ge v5, v6, :cond_5

    .line 205
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v11, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    .line 186
    .end local v0           #U:I
    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    .restart local v4       #i:I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    aput-char v10, v3, v2

    .line 185
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    goto :goto_0

    .line 194
    .end local v4           #i:I
    .restart local v0       #U:I
    :cond_3
    if-lt v5, v6, :cond_1

    .line 195
    add-int/lit8 v1, v2, 0x1

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    aput-char v10, v3, v2

    move v2, v1

    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    goto :goto_2

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    :cond_4
    move v0, v6

    .line 203
    goto :goto_4

    :cond_5
    move v2, v1

    .end local v1           #charPos:I
    .restart local v2       #charPos:I
    goto :goto_1

    :cond_6
    move v1, v2

    .end local v2           #charPos:I
    .restart local v1       #charPos:I
    goto :goto_3
.end method

.method private freeFormatExponential()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 210
    const/16 v5, 0x19

    new-array v3, v5, [C

    .line 211
    .local v3, formattedDecimal:[C
    iget-object v5, p0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    iget v6, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v3, v8

    .line 212
    const/4 v5, 0x1

    const/16 v6, 0x2e

    aput-char v6, v3, v5

    .line 215
    const/4 v0, 0x2

    .line 217
    .local v0, charPos:I
    iget v4, p0, Lorg/apache/harmony/luni/util/NumberConverter;->firstK:I

    .line 218
    .local v4, k:I
    move v2, v4

    .line 220
    .local v2, expt:I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    .line 221
    iget v5, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    iget v6, p0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    if-lt v5, v6, :cond_1

    .line 228
    add-int/lit8 v5, v2, -0x1

    if-ne v4, v5, :cond_0

    .line 229
    add-int/lit8 v1, v0, 0x1

    .end local v0           #charPos:I
    .local v1, charPos:I
    const/16 v5, 0x30

    aput-char v5, v3, v0

    move v0, v1

    .line 231
    .end local v1           #charPos:I
    .restart local v0       #charPos:I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #charPos:I
    .restart local v1       #charPos:I
    const/16 v5, 0x45

    aput-char v5, v3, v0

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v8, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 232
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 225
    .end local v1           #charPos:I
    .restart local v0       #charPos:I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0           #charPos:I
    .restart local v1       #charPos:I
    iget-object v5, p0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    iget v6, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v3, v0

    move v0, v1

    .line 219
    .end local v1           #charPos:I
    .restart local v0       #charPos:I
    goto :goto_0
.end method

.method private static getConverter()Lorg/apache/harmony/luni/util/NumberConverter;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/apache/harmony/luni/util/NumberConverter;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/NumberConverter;-><init>()V

    return-object v0
.end method

.method private longDigitGenerator(JIZZI)V
    .locals 22
    .parameter "f"
    .parameter "e"
    .parameter "isDenormalized"
    .parameter "mantissaIsZero"
    .parameter "p"

    .prologue
    .line 239
    if-ltz p3, :cond_3

    .line 240
    const-wide/16 v18, 0x1

    shl-long v2, v18, p3

    .line 241
    .local v2, M:J
    if-nez p5, :cond_2

    .line 242
    add-int/lit8 v18, p3, 0x1

    shl-long v4, p1, v18

    .line 243
    .local v4, R:J
    const-wide/16 v6, 0x2

    .line 259
    .local v6, S:J
    :goto_0
    add-int v18, p3, p6

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sget-wide v20, Lorg/apache/harmony/luni/util/NumberConverter;->invLogOfTenBaseTwo:D

    mul-double v18, v18, v20

    const-wide v20, 0x3ddb7cdfd9d7bdbbL

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v12, v0

    .line 261
    .local v12, k:I
    if-lez v12, :cond_6

    .line 262
    sget-object v18, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    aget-wide v18, v18, v12

    mul-long v6, v6, v18

    .line 269
    :cond_0
    :goto_1
    add-long v18, v4, v2

    cmp-long v18, v18, v6

    if-lez v18, :cond_8

    .line 270
    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/harmony/luni/util/NumberConverter;->firstK:I

    .line 277
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->getCount:I

    .line 280
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v8, v0, [J

    const/16 v18, 0x0

    aput-wide v6, v8, v18

    const/16 v18, 0x1

    const/16 v19, 0x1

    shl-long v19, v6, v19

    aput-wide v19, v8, v18

    const/16 v18, 0x2

    const/16 v19, 0x2

    shl-long v19, v6, v19

    aput-wide v19, v8, v18

    const/16 v18, 0x3

    const/16 v19, 0x3

    shl-long v19, v6, v19

    aput-wide v19, v8, v18

    .line 286
    .local v8, Si:[J
    :goto_3
    const/4 v9, 0x0

    .line 288
    .local v9, U:I
    const/4 v11, 0x3

    .local v11, i:I
    :goto_4
    if-gez v11, :cond_9

    .line 296
    cmp-long v18, v4, v2

    if-gez v18, :cond_b

    const/4 v13, 0x1

    .line 297
    .local v13, low:Z
    :goto_5
    add-long v18, v4, v2

    cmp-long v18, v18, v6

    if-lez v18, :cond_c

    const/4 v10, 0x1

    .line 299
    .local v10, high:Z
    :goto_6
    if-nez v13, :cond_1

    if-eqz v10, :cond_d

    .line 307
    :cond_1
    if-eqz v13, :cond_e

    if-nez v10, :cond_e

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    aput v9, v18, v19

    .line 316
    :goto_7
    return-void

    .line 245
    .end local v4           #R:J
    .end local v6           #S:J
    .end local v8           #Si:[J
    .end local v9           #U:I
    .end local v10           #high:Z
    .end local v11           #i:I
    .end local v12           #k:I
    .end local v13           #low:Z
    :cond_2
    add-int/lit8 v18, p3, 0x2

    shl-long v4, p1, v18

    .line 246
    .restart local v4       #R:J
    const-wide/16 v6, 0x4

    .restart local v6       #S:J
    goto/16 :goto_0

    .line 249
    .end local v2           #M:J
    .end local v4           #R:J
    .end local v6           #S:J
    :cond_3
    const-wide/16 v2, 0x1

    .line 250
    .restart local v2       #M:J
    if-nez p4, :cond_4

    if-nez p5, :cond_5

    .line 251
    :cond_4
    const/16 v18, 0x1

    shl-long v4, p1, v18

    .line 252
    .restart local v4       #R:J
    const-wide/16 v18, 0x1

    rsub-int/lit8 v20, p3, 0x1

    shl-long v6, v18, v20

    .restart local v6       #S:J
    goto/16 :goto_0

    .line 254
    .end local v4           #R:J
    .end local v6           #S:J
    :cond_5
    const/16 v18, 0x2

    shl-long v4, p1, v18

    .line 255
    .restart local v4       #R:J
    const-wide/16 v18, 0x1

    rsub-int/lit8 v20, p3, 0x2

    shl-long v6, v18, v20

    .restart local v6       #S:J
    goto/16 :goto_0

    .line 263
    .restart local v12       #k:I
    :cond_6
    if-gez v12, :cond_0

    .line 264
    sget-object v18, Lorg/apache/harmony/luni/util/NumberConverter;->TEN_TO_THE:[J

    neg-int v0, v12

    move/from16 v19, v0

    aget-wide v16, v18, v19

    .line 265
    .local v16, scale:J
    mul-long v4, v4, v16

    .line 266
    const-wide/16 v18, 0x1

    cmp-long v18, v2, v18

    if-nez v18, :cond_7

    move-wide/from16 v2, v16

    :goto_8
    goto/16 :goto_1

    :cond_7
    mul-long v2, v2, v16

    goto :goto_8

    .line 272
    .end local v16           #scale:J
    :cond_8
    add-int/lit8 v18, v12, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->firstK:I

    .line 273
    const-wide/16 v18, 0xa

    mul-long v4, v4, v18

    .line 274
    const-wide/16 v18, 0xa

    mul-long v2, v2, v18

    goto/16 :goto_2

    .line 289
    .restart local v8       #Si:[J
    .restart local v9       #U:I
    .restart local v11       #i:I
    :cond_9
    aget-wide v18, v8, v11

    sub-long v14, v4, v18

    .line 290
    .local v14, remainder:J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-ltz v18, :cond_a

    .line 291
    move-wide v4, v14

    .line 292
    const/16 v18, 0x1

    shl-int v18, v18, v11

    add-int v9, v9, v18

    .line 288
    :cond_a
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_4

    .line 296
    .end local v14           #remainder:J
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 297
    .restart local v13       #low:Z
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 303
    .restart local v10       #high:Z
    :cond_d
    const-wide/16 v18, 0xa

    mul-long v4, v4, v18

    .line 304
    const-wide/16 v18, 0xa

    mul-long v2, v2, v18

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    aput v9, v18, v19

    goto/16 :goto_3

    .line 309
    :cond_e
    if-eqz v10, :cond_f

    if-nez v13, :cond_f

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    add-int/lit8 v20, v9, 0x1

    aput v20, v18, v19

    goto/16 :goto_7

    .line 311
    :cond_f
    const/16 v18, 0x1

    shl-long v18, v4, v18

    cmp-long v18, v18, v6

    if-gez v18, :cond_10

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    aput v9, v18, v19

    goto/16 :goto_7

    .line 314
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->uArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/util/NumberConverter;->setCount:I

    add-int/lit8 v20, v9, 0x1

    aput v20, v18, v19

    goto/16 :goto_7
.end method


# virtual methods
.method public convertD(D)Ljava/lang/String;
    .locals 26
    .parameter "inputNumber"

    .prologue
    .line 59
    const/16 v18, 0x433

    .line 60
    .local v18, p:I
    const-wide/high16 v19, -0x8000

    .line 63
    .local v19, signMask:J
    const-wide/high16 v10, 0x7ff0

    .line 65
    .local v10, eMask:J
    const-wide v12, 0xfffffffffffffL

    .line 69
    .local v12, fMask:J
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v16

    .line 71
    .local v16, inputNumberBits:J
    const-wide/high16 v22, -0x8000

    and-long v22, v22, v16

    const-wide/16 v24, 0x0

    cmp-long v2, v22, v24

    if-nez v2, :cond_0

    const-string v21, ""

    .line 73
    .local v21, signString:Ljava/lang/String;
    :goto_0
    const-wide/high16 v22, 0x7ff0

    and-long v22, v22, v16

    const/16 v2, 0x34

    shr-long v22, v22, v2

    move-wide/from16 v0, v22

    long-to-int v9, v0

    .line 75
    .local v9, e:I
    const-wide v22, 0xfffffffffffffL

    and-long v3, v16, v22

    .line 76
    .local v3, f:J
    const-wide/16 v22, 0x0

    cmp-long v2, v3, v22

    if-nez v2, :cond_1

    const/4 v7, 0x1

    .line 77
    .local v7, mantissaIsZero:Z
    :goto_1
    const/4 v5, 0x0

    .local v5, pow:I
    const/16 v8, 0x34

    .line 79
    .local v8, numBits:I
    const/16 v2, 0x7ff

    if-ne v9, v2, :cond_3

    .line 80
    if-eqz v7, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Infinity"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    :goto_2
    return-object v2

    .line 71
    .end local v3           #f:J
    .end local v5           #pow:I
    .end local v7           #mantissaIsZero:Z
    .end local v8           #numBits:I
    .end local v9           #e:I
    .end local v21           #signString:Ljava/lang/String;
    :cond_0
    const-string v21, "-"

    goto :goto_0

    .line 76
    .restart local v3       #f:J
    .restart local v9       #e:I
    .restart local v21       #signString:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 80
    .restart local v5       #pow:I
    .restart local v7       #mantissaIsZero:Z
    .restart local v8       #numBits:I
    :cond_2
    const-string v2, "NaN"

    goto :goto_2

    .line 82
    :cond_3
    if-nez v9, :cond_a

    .line 83
    if-eqz v7, :cond_4

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "0.0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 86
    :cond_4
    const-wide/16 v22, 0x1

    cmp-long v2, v3, v22

    if-nez v2, :cond_5

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "4.9E-324"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 91
    :cond_5
    const/16 v5, -0x432

    .line 92
    move-wide v14, v3

    .line 93
    .local v14, ff:J
    :goto_3
    const-wide/high16 v22, 0x10

    and-long v22, v22, v14

    const-wide/16 v24, 0x0

    cmp-long v2, v22, v24

    if-eqz v2, :cond_9

    .line 104
    .end local v14           #ff:J
    :goto_4
    const/16 v2, -0x3b

    if-ge v2, v5, :cond_6

    const/4 v2, 0x6

    if-lt v5, v2, :cond_7

    :cond_6
    const/16 v2, -0x3b

    if-ne v5, v2, :cond_c

    if-nez v7, :cond_c

    .line 105
    :cond_7
    if-nez v9, :cond_b

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/harmony/luni/util/NumberConverter;->longDigitGenerator(JIZZI)V

    .line 111
    :goto_6
    const-wide v22, 0x416312d000000000L

    cmpl-double v2, p1, v22

    if-gez v2, :cond_8

    const-wide v22, -0x3e9ced3000000000L

    cmpg-double v2, p1, v22

    if-lez v2, :cond_8

    .line 112
    const-wide v22, -0x40af9db22d0e5604L

    cmpl-double v2, p1, v22

    if-lez v2, :cond_e

    const-wide v22, 0x3f50624dd2f1a9fcL

    cmpg-double v2, p1, v22

    if-gez v2, :cond_e

    .line 113
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/luni/util/NumberConverter;->freeFormatExponential()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 94
    .restart local v14       #ff:J
    :cond_9
    const/4 v2, 0x1

    shl-long/2addr v14, v2

    .line 95
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 100
    .end local v14           #ff:J
    :cond_a
    const-wide/high16 v22, 0x10

    or-long v3, v3, v22

    .line 101
    add-int/lit16 v5, v9, -0x433

    goto :goto_4

    .line 105
    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    .line 107
    :cond_c
    if-nez v9, :cond_d

    const/4 v6, 0x1

    :goto_7
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/harmony/luni/util/NumberConverter;->bigIntDigitGeneratorInstImpl(JIZZI)V

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    goto :goto_7

    .line 116
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/luni/util/NumberConverter;->freeFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method public convertF(F)Ljava/lang/String;
    .locals 16
    .parameter "inputNumber"

    .prologue
    .line 120
    const/16 v13, 0x96

    .line 121
    .local v13, p:I
    const/high16 v14, -0x8000

    .line 123
    .local v14, signMask:I
    const/high16 v8, 0x7f80

    .line 124
    .local v8, eMask:I
    const v10, 0x7fffff

    .line 126
    .local v10, fMask:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v12

    .line 128
    .local v12, inputNumberBits:I
    const/high16 v0, -0x8000

    and-int/2addr v0, v12

    if-nez v0, :cond_0

    const-string v15, ""

    .line 130
    .local v15, signString:Ljava/lang/String;
    :goto_0
    const/high16 v0, 0x7f80

    and-int/2addr v0, v12

    shr-int/lit8 v7, v0, 0x17

    .line 132
    .local v7, e:I
    const v0, 0x7fffff

    and-int v9, v12, v0

    .line 133
    .local v9, f:I
    if-nez v9, :cond_1

    const/4 v5, 0x1

    .line 134
    .local v5, mantissaIsZero:Z
    :goto_1
    const/4 v3, 0x0

    .local v3, pow:I
    const/16 v6, 0x17

    .line 136
    .local v6, numBits:I
    const/16 v0, 0xff

    if-ne v7, v0, :cond_3

    .line 137
    if-eqz v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_2
    return-object v0

    .line 128
    .end local v3           #pow:I
    .end local v5           #mantissaIsZero:Z
    .end local v6           #numBits:I
    .end local v7           #e:I
    .end local v9           #f:I
    .end local v15           #signString:Ljava/lang/String;
    :cond_0
    const-string v15, "-"

    goto :goto_0

    .line 133
    .restart local v7       #e:I
    .restart local v9       #f:I
    .restart local v15       #signString:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 137
    .restart local v3       #pow:I
    .restart local v5       #mantissaIsZero:Z
    .restart local v6       #numBits:I
    :cond_2
    const-string v0, "NaN"

    goto :goto_2

    .line 139
    :cond_3
    if-nez v7, :cond_a

    .line 140
    if-eqz v5, :cond_4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 143
    :cond_4
    const/16 v3, -0x95

    .line 144
    const/16 v0, 0x8

    if-ge v9, v0, :cond_5

    .line 145
    shl-int/lit8 v9, v9, 0x2

    .line 146
    add-int/lit8 v3, v3, -0x2

    .line 148
    :cond_5
    move v11, v9

    .line 149
    .local v11, ff:I
    :goto_3
    const/high16 v0, 0x80

    and-int/2addr v0, v11

    if-eqz v0, :cond_9

    .line 160
    .end local v11           #ff:I
    :goto_4
    const/16 v0, -0x3b

    if-ge v0, v3, :cond_6

    const/16 v0, 0x23

    if-lt v3, v0, :cond_7

    :cond_6
    const/16 v0, -0x3b

    if-ne v3, v0, :cond_c

    if-nez v5, :cond_c

    .line 161
    :cond_7
    int-to-long v1, v9

    if-nez v7, :cond_b

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/luni/util/NumberConverter;->longDigitGenerator(JIZZI)V

    .line 166
    :goto_6
    const v0, 0x4b189680

    cmpl-float v0, p1, v0

    if-gez v0, :cond_8

    const v0, -0x34e76980

    cmpg-float v0, p1, v0

    if-lez v0, :cond_8

    .line 167
    const v0, -0x457ced91

    cmpl-float v0, p1, v0

    if-lez v0, :cond_e

    const v0, 0x3a83126f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_e

    .line 168
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/luni/util/NumberConverter;->freeFormatExponential()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 150
    .restart local v11       #ff:I
    :cond_9
    shl-int/lit8 v11, v11, 0x1

    .line 151
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 156
    .end local v11           #ff:I
    :cond_a
    const/high16 v0, 0x80

    or-int/2addr v9, v0

    .line 157
    add-int/lit16 v3, v7, -0x96

    goto :goto_4

    .line 161
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 163
    :cond_c
    int-to-long v1, v9

    if-nez v7, :cond_d

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/luni/util/NumberConverter;->bigIntDigitGeneratorInstImpl(JIZZI)V

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    goto :goto_7

    .line 171
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/luni/util/NumberConverter;->freeFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method
