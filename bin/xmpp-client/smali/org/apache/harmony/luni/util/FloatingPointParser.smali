.class public final Lorg/apache/harmony/luni/util/FloatingPointParser;
.super Ljava/lang/Object;
.source "FloatingPointParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initialParse(Ljava/lang/String;I)Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    .locals 13
    .parameter "s"
    .parameter "length"

    .prologue
    .line 58
    const/4 v9, 0x0

    .line 61
    .local v9, negative:Z
    const/4 v5, 0x0

    .line 63
    .local v5, e:I
    const/4 v10, 0x0

    .line 64
    .local v10, start:I
    if-nez p1, :cond_0

    .line 65
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-direct {v11, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 68
    :cond_0
    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 69
    .local v2, c:C
    const/16 v11, 0x44

    if-eq v2, v11, :cond_1

    const/16 v11, 0x64

    if-eq v2, v11, :cond_1

    const/16 v11, 0x46

    if-eq v2, v11, :cond_1

    const/16 v11, 0x66

    if-ne v2, v11, :cond_2

    .line 70
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 71
    if-nez p1, :cond_2

    .line 72
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-direct {v11, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 76
    :cond_2
    const/16 v11, 0x45

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/16 v12, 0x65

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 77
    .local v6, end:I
    const/4 v11, -0x1

    if-le v6, v11, :cond_6

    .line 78
    add-int/lit8 v11, v6, 0x1

    if-ne v11, p1, :cond_3

    .line 79
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-direct {v11, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 82
    :cond_3
    add-int/lit8 v8, v6, 0x1

    .line 83
    .local v8, exponent_offset:I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_5

    .line 84
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_4

    .line 85
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-direct {v11, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 87
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 90
    :cond_5
    :try_start_0
    invoke-virtual {p0, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 101
    .end local v8           #exponent_offset:I
    :goto_0
    if-nez p1, :cond_7

    .line 102
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-direct {v11, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 91
    .restart local v8       #exponent_offset:I
    :catch_0
    move-exception v7

    .line 95
    .local v7, ex:Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-direct {v11, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 99
    .end local v7           #ex:Ljava/lang/NumberFormatException;
    .end local v8           #exponent_offset:I
    :cond_6
    move v6, p1

    goto :goto_0

    .line 105
    :cond_7
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 106
    const/16 v11, 0x2d

    if-ne v2, v11, :cond_9

    .line 107
    add-int/lit8 v10, v10, 0x1

    .line 108
    add-int/lit8 p1, p1, -0x1

    .line 109
    const/4 v9, 0x1

    .line 114
    :cond_8
    :goto_1
    if-nez p1, :cond_a

    .line 115
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-direct {v11, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 110
    :cond_9
    const/16 v11, 0x2b

    if-ne v2, v11, :cond_8

    .line 111
    add-int/lit8 v10, v10, 0x1

    .line 112
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 118
    :cond_a
    const/16 v11, 0x2e

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 119
    .local v4, decimal:I
    const/4 v11, -0x1

    if-le v4, v11, :cond_b

    .line 120
    sub-int v11, v6, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v5, v11

    .line 121
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {p0, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 126
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_c

    .line 127
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-direct {v11}, Ljava/lang/NumberFormatException;-><init>()V

    throw v11

    .line 123
    :cond_b
    invoke-virtual {p0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 130
    :cond_c
    move v6, p1

    .line 131
    :goto_3
    const/4 v11, 0x1

    if-le v6, v11, :cond_d

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-eq v11, v12, :cond_12

    .line 135
    :cond_d
    const/4 v10, 0x0

    .line 136
    :goto_4
    add-int/lit8 v11, v6, -0x1

    if-ge v10, v11, :cond_e

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-eq v11, v12, :cond_13

    .line 140
    :cond_e
    if-ne v6, p1, :cond_f

    if-eqz v10, :cond_10

    .line 141
    :cond_f
    sub-int v11, p1, v6

    add-int/2addr v5, v11

    .line 142
    invoke-virtual {p0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 147
    :cond_10
    const/16 v0, -0x167

    .line 148
    .local v0, APPROX_MIN_MAGNITUDE:I
    const/16 v1, 0x34

    .line 149
    .local v1, MAX_DIGITS:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 150
    const/16 v11, 0x34

    if-le p1, v11, :cond_11

    const/16 v11, -0x167

    if-ge v5, v11, :cond_11

    .line 151
    rsub-int v11, v5, -0x167

    add-int/lit8 v12, p1, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 152
    .local v3, d:I
    const/4 v11, 0x0

    sub-int v12, p1, v3

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 153
    add-int/2addr v5, v3

    .line 156
    .end local v3           #d:I
    :cond_11
    new-instance v11, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;

    invoke-direct {v11, p0, v5, v9}, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;-><init>(Ljava/lang/String;IZ)V

    return-object v11

    .line 132
    .end local v0           #APPROX_MIN_MAGNITUDE:I
    .end local v1           #MAX_DIGITS:I
    :cond_12
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 137
    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_4
.end method

.method private static native parseDblImpl(Ljava/lang/String;I)D
.end method

.method private static parseDblName(Ljava/lang/String;I)D
    .locals 8
    .parameter "namedDouble"
    .parameter "length"

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 183
    if-eq p1, v7, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-eq p1, v5, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 187
    :cond_0
    const/4 v6, 0x0

    .line 188
    .local v6, negative:Z
    const/4 v2, 0x0

    .line 189
    .local v2, cmpstart:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    :pswitch_0
    const-string v3, "Infinity"

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    if-eqz v6, :cond_1

    const-wide/high16 v0, -0x10

    .line 203
    :goto_1
    return-wide v0

    .line 191
    :pswitch_1
    const/4 v6, 0x1

    .line 193
    :pswitch_2
    const/4 v2, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const-wide/high16 v0, 0x7ff0

    goto :goto_1

    .line 202
    :cond_2
    const-string v3, "NaN"

    move-object v0, p0

    move v4, v1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    const-wide/high16 v0, 0x7ff8

    goto :goto_1

    .line 206
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 7
    .parameter "s"

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 223
    .local v2, length:I
    if-nez v2, :cond_0

    .line 224
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 228
    :cond_0
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 229
    .local v1, last:C
    const/16 v5, 0x79

    if-eq v1, v5, :cond_1

    const/16 v5, 0x4e

    if-ne v1, v5, :cond_3

    .line 230
    :cond_1
    invoke-static {p0, v2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseDblName(Ljava/lang/String;I)D

    move-result-wide v3

    .line 245
    :cond_2
    :goto_0
    return-wide v3

    .line 234
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 235
    invoke-static {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    goto :goto_0

    .line 238
    :cond_4
    invoke-static {p0, v2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->initialParse(Ljava/lang/String;I)Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;

    move-result-object v0

    .line 240
    .local v0, info:Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    iget-object v5, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->s:Ljava/lang/String;

    iget v6, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->e:I

    invoke-static {v5, v6}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseDblImpl(Ljava/lang/String;I)D

    move-result-wide v3

    .line 241
    .local v3, result:D
    iget-boolean v5, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->negative:Z

    if-eqz v5, :cond_2

    .line 242
    neg-double v3, v3

    goto :goto_0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 6
    .parameter "s"

    .prologue
    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 262
    .local v2, length:I
    if-nez v2, :cond_0

    .line 263
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 267
    :cond_0
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 268
    .local v1, last:C
    const/16 v4, 0x79

    if-eq v1, v4, :cond_1

    const/16 v4, 0x4e

    if-ne v1, v4, :cond_3

    .line 269
    :cond_1
    invoke-static {p0, v2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseFltName(Ljava/lang/String;I)F

    move-result v3

    .line 284
    :cond_2
    :goto_0
    return v3

    .line 273
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 274
    invoke-static {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_0

    .line 277
    :cond_4
    invoke-static {p0, v2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->initialParse(Ljava/lang/String;I)Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;

    move-result-object v0

    .line 279
    .local v0, info:Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    iget-object v4, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->s:Ljava/lang/String;

    iget v5, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->e:I

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseFltImpl(Ljava/lang/String;I)F

    move-result v3

    .line 280
    .local v3, result:F
    iget-boolean v4, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->negative:Z

    if-eqz v4, :cond_2

    .line 281
    neg-float v3, v3

    goto :goto_0
.end method

.method private static native parseFltImpl(Ljava/lang/String;I)F
.end method

.method private static parseFltName(Ljava/lang/String;I)F
    .locals 8
    .parameter "namedFloat"
    .parameter "length"

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 311
    if-eq p1, v7, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-eq p1, v5, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 315
    :cond_0
    const/4 v6, 0x0

    .line 316
    .local v6, negative:Z
    const/4 v2, 0x0

    .line 317
    .local v2, cmpstart:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    :pswitch_0
    const-string v3, "Infinity"

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    if-eqz v6, :cond_1

    const/high16 v0, -0x80

    .line 330
    :goto_1
    return v0

    .line 319
    :pswitch_1
    const/4 v6, 0x1

    .line 321
    :pswitch_2
    const/4 v2, 0x1

    goto :goto_0

    .line 326
    :cond_1
    const/high16 v0, 0x7f80

    goto :goto_1

    .line 329
    :cond_2
    const-string v3, "NaN"

    move-object v0, p0

    move v4, v1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    const/high16 v0, 0x7fc0

    goto :goto_1

    .line 333
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
