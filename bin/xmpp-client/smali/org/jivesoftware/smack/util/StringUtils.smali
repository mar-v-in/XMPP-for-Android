.class public Lorg/jivesoftware/smack/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final AMP_ENCODE:[C

.field private static final APOS_ENCODE:[C

.field private static final GT_ENCODE:[C

.field private static final LT_ENCODE:[C

.field private static final QUOTE_ENCODE:[C

.field public static final XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

.field private static digest:Ljava/security/MessageDigest;

.field private static numbersAndLetters:[C

.field private static randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 48
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 47
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    .line 50
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 53
    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->QUOTE_ENCODE:[C

    .line 54
    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->APOS_ENCODE:[C

    .line 55
    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->AMP_ENCODE:[C

    .line 56
    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->LT_ENCODE:[C

    .line 57
    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->GT_ENCODE:[C

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->randGen:Ljava/util/Random;

    .line 77
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 77
    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->numbersAndLetters:[C

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .parameter "data"

    .prologue
    .line 88
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 144
    const/4 v0, 0x0

    check-cast v0, [B

    .line 146
    .local v0, bytes:[B
    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    :goto_0
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BIIZ)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "lineBreaks"

    .prologue
    .line 132
    .line 133
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 132
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static encodeBase64([BZ)Ljava/lang/String;
    .locals 2
    .parameter "data"
    .parameter "lineBreaks"

    .prologue
    .line 113
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/16 v5, 0x10

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v1, hex:Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 163
    :cond_0
    aget-byte v0, p0, v2

    .line 164
    .local v0, aByte:B
    and-int/lit16 v4, v0, 0xff

    if-ge v4, v5, :cond_1

    .line 165
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_1
    and-int/lit16 v4, v0, 0xff

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static escapeForXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "string"

    .prologue
    const/16 v10, 0x3e

    .line 182
    if-nez p0, :cond_1

    .line 183
    const/4 p0, 0x0

    .line 241
    .end local p0
    .local v1, i:I
    .local v2, input:[C
    .local v3, last:I
    .local v4, len:I
    .local v5, out:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 186
    .end local v1           #i:I
    .end local v2           #input:[C
    .end local v3           #last:I
    .end local v4           #len:I
    .end local v5           #out:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    .line 187
    .restart local v1       #i:I
    const/4 v3, 0x0

    .line 188
    .restart local v3       #last:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 189
    .restart local v2       #input:[C
    array-length v4, v2

    .line 190
    .restart local v4       #len:I
    new-instance v5, Ljava/lang/StringBuilder;

    int-to-double v6, v4

    const-wide v8, 0x3ff4cccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    .restart local v5       #out:Ljava/lang/StringBuilder;
    :goto_1
    if-lt v1, v4, :cond_3

    .line 235
    if-eqz v3, :cond_0

    .line 238
    if-le v1, v3, :cond_2

    .line 239
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 241
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 192
    :cond_3
    aget-char v0, v2, v1

    .line 193
    .local v0, ch:C
    if-gt v0, v10, :cond_5

    .line 194
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_6

    .line 195
    if-le v1, v3, :cond_4

    .line 196
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 198
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 199
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->LT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 191
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    :cond_6
    if-ne v0, v10, :cond_8

    .line 201
    if-le v1, v3, :cond_7

    .line 202
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 204
    :cond_7
    add-int/lit8 v3, v1, 0x1

    .line 205
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->GT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 208
    :cond_8
    const/16 v6, 0x26

    if-ne v0, v6, :cond_b

    .line 209
    if-le v1, v3, :cond_9

    .line 210
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 214
    :cond_9
    add-int/lit8 v6, v1, 0x5

    if-le v4, v6, :cond_a

    add-int/lit8 v6, v1, 0x1

    aget-char v6, v2, v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_a

    .line 215
    add-int/lit8 v6, v1, 0x2

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 216
    add-int/lit8 v6, v1, 0x3

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 217
    add-int/lit8 v6, v1, 0x4

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v6, v1, 0x5

    aget-char v6, v2, v6

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_5

    .line 218
    :cond_a
    add-int/lit8 v3, v1, 0x1

    .line 219
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->AMP_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 221
    :cond_b
    const/16 v6, 0x22

    if-ne v0, v6, :cond_d

    .line 222
    if-le v1, v3, :cond_c

    .line 223
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 225
    :cond_c
    add-int/lit8 v3, v1, 0x1

    .line 226
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->QUOTE_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 227
    :cond_d
    const/16 v6, 0x27

    if-ne v0, v6, :cond_5

    .line 228
    if-le v1, v3, :cond_e

    .line 229
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 231
    :cond_e
    add-int/lit8 v3, v1, 0x1

    .line 232
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->APOS_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static escapeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "node"

    .prologue
    .line 315
    if-nez p0, :cond_0

    .line 316
    const/4 v4, 0x0

    .line 358
    :goto_0
    return-object v4

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 319
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, n:I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 321
    .local v1, c:C
    sparse-switch v1, :sswitch_data_0

    .line 350
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    const-string v4, "\\20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    :sswitch_0
    const-string v4, "\\22"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 326
    :sswitch_1
    const-string v4, "\\26"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 329
    :sswitch_2
    const-string v4, "\\27"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 332
    :sswitch_3
    const-string v4, "\\2f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 335
    :sswitch_4
    const-string v4, "\\3a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 338
    :sswitch_5
    const-string v4, "\\3c"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 341
    :sswitch_6
    const-string v4, "\\3e"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 344
    :sswitch_7
    const-string v4, "\\40"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 347
    :sswitch_8
    const-string v4, "\\5c"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 353
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x26 -> :sswitch_1
        0x27 -> :sswitch_2
        0x2f -> :sswitch_3
        0x3a -> :sswitch_4
        0x3c -> :sswitch_5
        0x3e -> :sswitch_6
        0x40 -> :sswitch_7
        0x5c -> :sswitch_8
    .end sparse-switch
.end method

.method public static formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 369
    sget-object v1, Lorg/jivesoftware/smack/util/StringUtils;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    monitor-enter v1

    .line 370
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 392
    const-class v3, Lorg/jivesoftware/smack/util/StringUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 394
    :try_start_1
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sput-object v2, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;

    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 406
    :goto_1
    :try_start_3
    sget-object v2, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, nsae:Ljava/security/NoSuchAlgorithmException;
    :try_start_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Failed to load the SHA-1 MessageDigest. Jive will be unable to function normally."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 392
    .end local v1           #nsae:Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 403
    :catch_1
    move-exception v0

    .line 404
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_5
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static parseBareAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "XMPPAddress"

    .prologue
    .line 419
    if-nez p0, :cond_1

    .line 420
    const/4 p0, 0x0

    .line 428
    .end local p0
    .local v0, slashIndex:I
    :cond_0
    :goto_0
    return-object p0

    .line 422
    .end local v0           #slashIndex:I
    .restart local p0
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 423
    .restart local v0       #slashIndex:I
    if-ltz v0, :cond_0

    .line 425
    if-nez v0, :cond_2

    .line 426
    const-string p0, ""

    goto :goto_0

    .line 428
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "XMPPAddress"

    .prologue
    .line 442
    if-nez p0, :cond_0

    .line 443
    const/4 v1, 0x0

    .line 449
    :goto_0
    return-object v1

    .line 445
    :cond_0
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 446
    .local v0, atIndex:I
    if-gtz v0, :cond_1

    .line 447
    const-string v1, ""

    goto :goto_0

    .line 449
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "XMPPAddress"

    .prologue
    .line 463
    if-nez p0, :cond_0

    .line 464
    const/4 v1, 0x0

    .line 470
    :goto_0
    return-object v1

    .line 466
    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, slashIndex:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    if-gez v0, :cond_2

    .line 468
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 470
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "XMPPAddress"

    .prologue
    .line 485
    if-nez p0, :cond_0

    .line 486
    const/4 v2, 0x0

    .line 497
    :goto_0
    return-object v2

    .line 488
    :cond_0
    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 490
    .local v0, atIndex:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 491
    const-string v2, ""

    goto :goto_0

    .line 493
    :cond_1
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 494
    .local v1, slashIndex:I
    if-lez v1, :cond_2

    if-le v1, v0, :cond_2

    .line 495
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 497
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static parseXEP0082Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .parameter "dateString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 513
    sget-object v1, Lorg/jivesoftware/smack/util/StringUtils;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    monitor-enter v1

    .line 514
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 5
    .parameter "length"

    .prologue
    .line 534
    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    .line 535
    const/4 v2, 0x0

    .line 542
    :goto_0
    return-object v2

    .line 538
    :cond_0
    new-array v1, p0, [C

    .line 539
    .local v1, randBuffer:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 542
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 540
    :cond_1
    sget-object v2, Lorg/jivesoftware/smack/util/StringUtils;->numbersAndLetters:[C

    sget-object v3, Lorg/jivesoftware/smack/util/StringUtils;->randGen:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static unescapeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "node"

    .prologue
    .line 618
    if-nez p0, :cond_0

    .line 619
    const/4 v7, 0x0

    .line 684
    :goto_0
    return-object v7

    .line 621
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 622
    .local v6, nodeChars:[C
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v7, v6

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 623
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    array-length v5, v6

    .local v5, n:I
    :goto_1
    if-lt v4, v5, :cond_1

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 626
    .local v1, c:C
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_2

    add-int/lit8 v7, v4, 0x2

    if-ge v7, v5, :cond_2

    .line 627
    add-int/lit8 v7, v4, 0x1

    aget-char v2, v6, v7

    .line 628
    .local v2, c2:C
    add-int/lit8 v7, v4, 0x2

    aget-char v3, v6, v7

    .line 629
    .local v3, c3:C
    const/16 v7, 0x32

    if-ne v2, v7, :cond_3

    .line 630
    sparse-switch v3, :sswitch_data_0

    .line 681
    .end local v2           #c2:C
    .end local v3           #c3:C
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 632
    .restart local v2       #c2:C
    .restart local v3       #c3:C
    :sswitch_0
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    add-int/lit8 v4, v4, 0x2

    .line 634
    goto :goto_3

    .line 636
    :sswitch_1
    const/16 v7, 0x22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    add-int/lit8 v4, v4, 0x2

    .line 638
    goto :goto_3

    .line 640
    :sswitch_2
    const/16 v7, 0x26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    add-int/lit8 v4, v4, 0x2

    .line 642
    goto :goto_3

    .line 644
    :sswitch_3
    const/16 v7, 0x27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    add-int/lit8 v4, v4, 0x2

    .line 646
    goto :goto_3

    .line 648
    :sswitch_4
    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 649
    add-int/lit8 v4, v4, 0x2

    .line 650
    goto :goto_3

    .line 652
    :cond_3
    const/16 v7, 0x33

    if-ne v2, v7, :cond_4

    .line 653
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 655
    :pswitch_1
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    add-int/lit8 v4, v4, 0x2

    .line 657
    goto :goto_3

    .line 659
    :pswitch_2
    const/16 v7, 0x3c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    add-int/lit8 v4, v4, 0x2

    .line 661
    goto :goto_3

    .line 663
    :pswitch_3
    const/16 v7, 0x3e

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    add-int/lit8 v4, v4, 0x2

    .line 665
    goto :goto_3

    .line 667
    :cond_4
    const/16 v7, 0x34

    if-ne v2, v7, :cond_5

    .line 668
    const/16 v7, 0x30

    if-ne v3, v7, :cond_2

    .line 669
    const-string v7, "@"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    add-int/lit8 v4, v4, 0x2

    .line 671
    goto :goto_3

    .line 673
    :cond_5
    const/16 v7, 0x35

    if-ne v2, v7, :cond_2

    .line 674
    const/16 v7, 0x63

    if-ne v3, v7, :cond_2

    .line 675
    const-string v7, "\\"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    add-int/lit8 v4, v4, 0x2

    .line 677
    goto :goto_3

    .line 630
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x32 -> :sswitch_1
        0x36 -> :sswitch_2
        0x37 -> :sswitch_3
        0x66 -> :sswitch_4
    .end sparse-switch

    .line 653
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
