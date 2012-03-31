.class final Lorg/apache/harmony/luni/util/HexStringParser;
.super Ljava/lang/Object;
.source "HexStringParser.java"


# static fields
.field private static final BINARY_EXPONENT:Ljava/lang/String; = "[pP]([+-]?\\d+)"

.field private static final DOUBLE_EXPONENT_WIDTH:I = 0xb

.field private static final DOUBLE_MANTISSA_WIDTH:I = 0x34

.field private static final FLOAT_EXPONENT_WIDTH:I = 0x8

.field private static final FLOAT_MANTISSA_WIDTH:I = 0x17

.field private static final FLOAT_TYPE_SUFFIX:Ljava/lang/String; = "[fFdD]?"

.field private static final HEX_PATTERN:Ljava/lang/String; = "[\\x00-\\x20]*([+-]?)0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)[pP]([+-]?\\d+)[fFdD]?[\\x00-\\x20]*"

.field private static final HEX_RADIX:I = 0x10

.field private static final HEX_SIGNIFICANT:Ljava/lang/String; = "0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)"

.field private static final MAX_SIGNIFICANT_LENGTH:I = 0xf

.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final EXPONENT_BASE:J

.field private final EXPONENT_WIDTH:I

.field private final MANTISSA_MASK:J

.field private final MANTISSA_WIDTH:I

.field private final MAX_EXPONENT:J

.field private final MIN_EXPONENT:J

.field private abandonedNumber:Ljava/lang/String;

.field private exponent:J

.field private mantissa:J

.field private sign:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "[\\x00-\\x20]*([+-]?)0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)[pP]([+-]?\\d+)[fFdD]?[\\x00-\\x20]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/util/HexStringParser;->PATTERN:Ljava/util/regex/Pattern;

    .line 26
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .parameter "exponent_width"
    .parameter "mantissa_width"

    .prologue
    const-wide/16 v2, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->abandonedNumber:Ljava/lang/String;

    .line 109
    iput p1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->EXPONENT_WIDTH:I

    .line 110
    iput p2, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    .line 112
    add-int/lit8 v0, p1, -0x1

    shl-long v0, v2, v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->EXPONENT_BASE:J

    .line 113
    shl-long v0, v2, p1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MAX_EXPONENT:J

    .line 114
    iget v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MIN_EXPONENT:J

    .line 115
    shl-long v0, v2, p2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_MASK:J

    .line 116
    return-void
.end method

.method private checkedAddExponent(J)V
    .locals 7
    .parameter "offset"

    .prologue
    .line 123
    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    add-long v1, v3, p1

    .line 124
    .local v1, result:J
    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    invoke-static {v3, v4}, Ljava/lang/Long;->signum(J)I

    move-result v0

    .line 125
    .local v0, expSign:I
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    move-result v3

    mul-int/2addr v3, v0

    if-lez v3, :cond_0

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Long;->signum(J)I

    move-result v3

    mul-int/2addr v3, v0

    if-gez v3, :cond_0

    .line 127
    int-to-long v3, v0

    const-wide v5, 0x7fffffffffffffffL

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    goto :goto_0
.end method

.method private countBitsLength(J)I
    .locals 2
    .parameter "value"

    .prologue
    .line 134
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 135
    .local v0, leadingZeros:I
    rsub-int/lit8 v1, v0, 0x40

    return v1
.end method

.method private discardTrailingBits(J)V
    .locals 6
    .parameter "num"

    .prologue
    const-wide/16 v4, -0x1

    .line 142
    long-to-int v2, p1

    shl-long v2, v4, v2

    xor-long v0, v2, v4

    .line 143
    .local v0, mask:J
    iget-object v2, p0, Lorg/apache/harmony/luni/util/HexStringParser;->abandonedNumber:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    and-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/util/HexStringParser;->abandonedNumber:Ljava/lang/String;

    .line 144
    iget-wide v2, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    long-to-int v4, p1

    shr-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 145
    return-void
.end method

.method private fitMantissaInDesiredWidth(I)V
    .locals 4
    .parameter "desiredWidth"

    .prologue
    .line 151
    iget-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    invoke-direct {p0, v1, v2}, Lorg/apache/harmony/luni/util/HexStringParser;->countBitsLength(J)I

    move-result v0

    .line 152
    .local v0, bitLength:I
    if-le v0, p1, :cond_0

    .line 153
    sub-int v1, v0, p1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lorg/apache/harmony/luni/util/HexStringParser;->discardTrailingBits(J)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    sub-int v3, p1, v0

    shl-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    goto :goto_0
.end method

.method private getNormalizedSignificand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strIntegerPart"
    .parameter "strDecimalPart"

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, significand:Ljava/lang/String;
    const-string v1, "^0+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 167
    const-string v0, "0"

    .line 169
    :cond_0
    return-object v0
.end method

.method private getOffset(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "strIntegerPart"
    .parameter "strDecimalPart"

    .prologue
    const/16 v5, 0x10

    const/4 v2, 0x0

    .line 179
    const-string v3, "^0+"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, leadingNumber:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x4

    .line 185
    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/util/HexStringParser;->countBitsLength(J)I

    move-result v3

    .line 184
    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 199
    .end local v1           #leadingNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 192
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    .line 195
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 198
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 199
    .restart local v1       #leadingNumber:Ljava/lang/String;
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x4

    .line 200
    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/util/HexStringParser;->countBitsLength(J)I

    move-result v3

    .line 199
    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 192
    .end local v1           #leadingNumber:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getSegmentsFromHexString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "hexString"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 55
    sget-object v2, Lorg/apache/harmony/luni/util/HexStringParser;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 56
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 60
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    .line 61
    .local v0, hexSegments:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 62
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 63
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 65
    return-object v0
.end method

.method private parse(Ljava/lang/String;)J
    .locals 8
    .parameter "hexString"

    .prologue
    .line 204
    invoke-static {p1}, Lorg/apache/harmony/luni/util/HexStringParser;->getSegmentsFromHexString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, hexSegments:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v2, v1, v4

    .line 206
    .local v2, signStr:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, v1, v4

    .line 207
    .local v3, significantStr:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v0, v1, v4

    .line 209
    .local v0, exponentStr:Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/util/HexStringParser;->parseHexSign(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/util/HexStringParser;->parseExponent(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/util/HexStringParser;->parseMantissa(Ljava/lang/String;)V

    .line 213
    iget-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->sign:J

    iget v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    iget v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->EXPONENT_WIDTH:I

    add-int/2addr v6, v7

    shl-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->sign:J

    .line 214
    iget-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    iget v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    shl-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 215
    iget-wide v4, p0, Lorg/apache/harmony/luni/util/HexStringParser;->sign:J

    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    or-long/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    or-long/2addr v4, v6

    return-wide v4
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 5
    .parameter "hexString"

    .prologue
    .line 72
    new-instance v0, Lorg/apache/harmony/luni/util/HexStringParser;

    .line 73
    const/16 v3, 0xb

    const/16 v4, 0x34

    .line 72
    invoke-direct {v0, v3, v4}, Lorg/apache/harmony/luni/util/HexStringParser;-><init>(II)V

    .line 74
    .local v0, parser:Lorg/apache/harmony/luni/util/HexStringParser;
    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/HexStringParser;->parse(Ljava/lang/String;)J

    move-result-wide v1

    .line 75
    .local v1, result:J
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    return-wide v3
.end method

.method private parseExponent(Ljava/lang/String;)V
    .locals 7
    .parameter "exponentStr"

    .prologue
    const/4 v3, 0x1

    .line 222
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 223
    .local v2, leadingChar:C
    const/16 v4, 0x2d

    if-ne v2, v4, :cond_1

    const/4 v1, -0x1

    .line 224
    .local v1, expSign:I
    :goto_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 229
    :cond_0
    int-to-long v3, v1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 230
    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->EXPONENT_BASE:J

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/util/HexStringParser;->checkedAddExponent(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    return-void

    .end local v1           #expSign:I
    :cond_1
    move v1, v3

    .line 223
    goto :goto_0

    .line 231
    .restart local v1       #expSign:I
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/NumberFormatException;
    int-to-long v3, v1

    const-wide v5, 0x7fffffffffffffffL

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    goto :goto_1
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 4
    .parameter "hexString"

    .prologue
    .line 82
    new-instance v0, Lorg/apache/harmony/luni/util/HexStringParser;

    .line 83
    const/16 v2, 0x8

    const/16 v3, 0x17

    .line 82
    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/luni/util/HexStringParser;-><init>(II)V

    .line 84
    .local v0, parser:Lorg/apache/harmony/luni/util/HexStringParser;
    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/HexStringParser;->parse(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 85
    .local v1, result:I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method private parseHexSign(Ljava/lang/String;)V
    .locals 2
    .parameter "signStr"

    .prologue
    .line 240
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->sign:J

    .line 241
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseMantissa(Ljava/lang/String;)V
    .locals 11
    .parameter "significantStr"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/16 v9, 0xf

    .line 247
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, strings:[Ljava/lang/String;
    aget-object v3, v4, v10

    .line 249
    .local v3, strIntegerPart:Ljava/lang/String;
    array-length v5, v4

    if-le v5, v6, :cond_0

    aget-object v2, v4, v6

    .line 251
    .local v2, strDecimalPart:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3, v2}, Lorg/apache/harmony/luni/util/HexStringParser;->getNormalizedSignificand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, significand:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 254
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->setZero()V

    .line 284
    :goto_1
    return-void

    .line 249
    .end local v1           #significand:Ljava/lang/String;
    .end local v2           #strDecimalPart:Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 258
    .restart local v1       #significand:Ljava/lang/String;
    .restart local v2       #strDecimalPart:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3, v2}, Lorg/apache/harmony/luni/util/HexStringParser;->getOffset(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, offset:I
    int-to-long v5, v0

    invoke-direct {p0, v5, v6}, Lorg/apache/harmony/luni/util/HexStringParser;->checkedAddExponent(J)V

    .line 261
    iget-wide v5, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    iget-wide v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MAX_EXPONENT:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 262
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->setInfinite()V

    goto :goto_1

    .line 266
    :cond_2
    iget-wide v5, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    iget-wide v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MIN_EXPONENT:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    .line 267
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->setZero()V

    goto :goto_1

    .line 271
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_4

    .line 272
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/util/HexStringParser;->abandonedNumber:Ljava/lang/String;

    .line 273
    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 276
    :cond_4
    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 278
    iget-wide v5, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-ltz v5, :cond_5

    .line 279
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->processNormalNumber()V

    goto :goto_1

    .line 281
    :cond_5
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->processSubNormalNumber()V

    goto :goto_1
.end method

.method private processNormalNumber()V
    .locals 5

    .prologue
    .line 287
    iget v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v1, 0x2

    .line 288
    .local v0, desiredWidth:I
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/util/HexStringParser;->fitMantissaInDesiredWidth(I)V

    .line 289
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->round()V

    .line 290
    iget-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_MASK:J

    and-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 291
    return-void
.end method

.method private processSubNormalNumber()V
    .locals 5

    .prologue
    .line 294
    iget v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v1, 0x1

    .line 295
    .local v0, desiredWidth:I
    iget-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 296
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 297
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/util/HexStringParser;->fitMantissaInDesiredWidth(I)V

    .line 298
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->round()V

    .line 299
    iget-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    iget-wide v3, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_MASK:J

    and-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 300
    return-void
.end method

.method private round()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/4 v6, 0x1

    .line 308
    iget-object v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->abandonedNumber:Ljava/lang/String;

    const-string v8, "0+"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, result:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    move v1, v6

    .line 311
    .local v1, moreThanZero:Z
    :goto_0
    iget-wide v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    and-long/2addr v7, v10

    long-to-int v0, v7

    .line 312
    .local v0, lastDiscardedBit:I
    iget-wide v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    shr-long/2addr v7, v6

    iput-wide v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 313
    iget-wide v7, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    and-long/2addr v7, v10

    long-to-int v5, v7

    .line 315
    .local v5, tailBitInMantissa:I
    if-ne v0, v6, :cond_1

    if-nez v1, :cond_0

    if-ne v5, v6, :cond_1

    .line 316
    :cond_0
    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    invoke-direct {p0, v6, v7}, Lorg/apache/harmony/luni/util/HexStringParser;->countBitsLength(J)I

    move-result v3

    .line 317
    .local v3, oldLength:I
    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 318
    iget-wide v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    invoke-direct {p0, v6, v7}, Lorg/apache/harmony/luni/util/HexStringParser;->countBitsLength(J)I

    move-result v2

    .line 321
    .local v2, newLength:I
    iget v6, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MANTISSA_WIDTH:I

    if-lt v3, v6, :cond_1

    if-le v2, v3, :cond_1

    .line 322
    invoke-direct {p0, v10, v11}, Lorg/apache/harmony/luni/util/HexStringParser;->checkedAddExponent(J)V

    .line 325
    .end local v2           #newLength:I
    .end local v3           #oldLength:I
    :cond_1
    return-void

    .line 309
    .end local v0           #lastDiscardedBit:I
    .end local v1           #moreThanZero:Z
    .end local v5           #tailBitInMantissa:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setInfinite()V
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->MAX_EXPONENT:J

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 330
    return-void
.end method

.method private setZero()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 333
    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->exponent:J

    .line 334
    iput-wide v0, p0, Lorg/apache/harmony/luni/util/HexStringParser;->mantissa:J

    .line 335
    return-void
.end method
