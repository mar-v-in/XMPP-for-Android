.class public final Lorg/apache/harmony/luni/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static MONTHS:[Ljava/lang/String;

.field private static WEEKDAYS:[Ljava/lang/String;

.field private static final defaultEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 30
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "Sunday"

    aput-object v3, v2, v6

    const-string v3, "Monday"

    aput-object v3, v2, v7

    .line 31
    const-string v3, "Tuesday"

    aput-object v3, v2, v8

    const-string v3, "Wednesday"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Thursday"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Friday"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Saturday"

    aput-object v4, v2, v3

    .line 30
    sput-object v2, Lorg/apache/harmony/luni/util/Util;->WEEKDAYS:[Ljava/lang/String;

    .line 33
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "January"

    aput-object v3, v2, v5

    const-string v3, "February"

    aput-object v3, v2, v6

    .line 34
    const-string v3, "March"

    aput-object v3, v2, v7

    const-string v3, "April"

    aput-object v3, v2, v8

    const-string v3, "May"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "June"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "July"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "August"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "September"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 35
    const-string v4, "October"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "November"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "December"

    aput-object v4, v2, v3

    .line 33
    sput-object v2, Lorg/apache/harmony/luni/util/Util;->MONTHS:[Ljava/lang/String;

    .line 40
    const-string v2, "os.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, encoding:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    sput-object v0, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    .line 28
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, t:Ljava/lang/Throwable;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromUTF8([BII)Ljava/lang/String;
    .locals 1
    .parameter "buf"
    .parameter "offset"
    .parameter "utfSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 53
    new-array v0, p2, [C

    invoke-static {p0, v0, p1, p2}, Lorg/apache/harmony/luni/util/Util;->convertUTF8WithBuf([B[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertUTF8WithBuf([B[CII)Ljava/lang/String;
    .locals 10
    .parameter "buf"
    .parameter "out"
    .parameter "offset"
    .parameter "utfSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    .line 58
    const/4 v3, 0x0

    .local v3, count:I
    const/4 v5, 0x0

    .local v5, s:I
    move v6, v5

    .end local v5           #s:I
    .local v6, s:I
    move v4, v3

    .line 59
    .end local v3           #count:I
    .local v4, count:I
    :goto_0
    if-lt v4, p3, :cond_0

    .line 90
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v7

    .line 60
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    add-int v7, p2, v4

    aget-byte v7, p0, v7

    int-to-char v7, v7

    aput-char v7, p1, v6

    if-ge v7, v9, :cond_1

    .line 61
    add-int/lit8 v5, v6, 0x1

    .end local v6           #s:I
    .restart local v5       #s:I
    move v6, v5

    .end local v5           #s:I
    .restart local v6       #s:I
    move v4, v3

    .end local v3           #count:I
    .restart local v4       #count:I
    goto :goto_0

    .line 62
    .end local v4           #count:I
    .restart local v3       #count:I
    :cond_1
    aget-char v0, p1, v6

    .local v0, a:I
    and-int/lit16 v7, v0, 0xe0

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_4

    .line 63
    if-lt v3, p3, :cond_2

    .line 64
    new-instance v7, Ljava/io/UTFDataFormatException;

    .line 65
    const-string v8, "luni.D7"

    .line 64
    invoke-static {v8, v3}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 67
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3           #count:I
    .restart local v4       #count:I
    aget-byte v1, p0, v3

    .line 68
    .local v1, b:I
    and-int/lit16 v7, v1, 0xc0

    if-eq v7, v9, :cond_3

    .line 69
    new-instance v7, Ljava/io/UTFDataFormatException;

    .line 70
    const-string v8, "luni.D7"

    add-int/lit8 v9, v4, -0x1

    .line 69
    invoke-static {v8, v9}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 72
    :cond_3
    add-int/lit8 v5, v6, 0x1

    .end local v6           #s:I
    .restart local v5       #s:I
    and-int/lit8 v7, v0, 0x1f

    shl-int/lit8 v7, v7, 0x6

    and-int/lit8 v8, v1, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v5

    .end local v5           #s:I
    .restart local v6       #s:I
    goto :goto_0

    .line 73
    .end local v1           #b:I
    .end local v4           #count:I
    .restart local v3       #count:I
    :cond_4
    and-int/lit16 v7, v0, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_8

    .line 74
    add-int/lit8 v7, v3, 0x1

    if-lt v7, p3, :cond_5

    .line 75
    new-instance v7, Ljava/io/UTFDataFormatException;

    .line 76
    const-string v8, "luni.D8"

    add-int/lit8 v9, v3, 0x1

    .line 75
    invoke-static {v8, v9}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 78
    :cond_5
    add-int/lit8 v4, v3, 0x1

    .end local v3           #count:I
    .restart local v4       #count:I
    aget-byte v1, p0, v3

    .line 79
    .restart local v1       #b:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    aget-byte v2, p0, v4

    .line 80
    .local v2, c:I
    and-int/lit16 v7, v1, 0xc0

    if-ne v7, v9, :cond_6

    and-int/lit16 v7, v2, 0xc0

    if-eq v7, v9, :cond_7

    .line 81
    :cond_6
    new-instance v7, Ljava/io/UTFDataFormatException;

    .line 82
    const-string v8, "luni.D9"

    add-int/lit8 v9, v3, -0x2

    .line 81
    invoke-static {v8, v9}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 84
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .end local v6           #s:I
    .restart local v5       #s:I
    and-int/lit8 v7, v0, 0xf

    shl-int/lit8 v7, v7, 0xc

    and-int/lit8 v8, v1, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    and-int/lit8 v8, v2, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v5

    .end local v5           #s:I
    .restart local v6       #s:I
    move v4, v3

    .end local v3           #count:I
    .restart local v4       #count:I
    goto/16 :goto_0

    .line 86
    .end local v1           #b:I
    .end local v2           #c:I
    .end local v4           #count:I
    .restart local v3       #count:I
    :cond_8
    new-instance v7, Ljava/io/UTFDataFormatException;

    const-string v8, "luni.DA"

    .line 87
    add-int/lit8 v9, v3, -0x1

    .line 86
    invoke-static {v8, v9}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static decode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "convertPlus"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/harmony/luni/util/Util;->decode(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "s"
    .parameter "convertPlus"
    .parameter "encoding"

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x25

    const/4 v9, -0x1

    .line 118
    if-nez p1, :cond_0

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 159
    .end local p0
    :goto_0
    return-object p0

    .line 121
    .restart local p0
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 122
    .local v6, result:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 125
    .local v0, c:C
    if-eqz p1, :cond_2

    const/16 v7, 0x2b

    if-ne v0, v7, :cond_2

    .line 126
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 127
    :cond_2
    if-ne v0, v10, :cond_9

    .line 128
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 130
    :cond_3
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v7, v8, :cond_4

    .line 131
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 132
    const-string v8, "luni.80"

    .line 131
    invoke-static {v8, v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 134
    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 135
    .local v1, d1:I
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 136
    .local v2, d2:I
    if-eq v1, v9, :cond_5

    if-ne v2, v9, :cond_6

    .line 137
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 138
    const-string v8, "luni.81"

    add-int/lit8 v9, v4, 0x3

    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 139
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 137
    invoke-static {v8, v9, v10}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 141
    :cond_6
    shl-int/lit8 v7, v1, 0x4

    add-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    add-int/lit8 v4, v4, 0x3

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_3

    .line 144
    :cond_7
    if-nez p2, :cond_8

    .line 145
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 148
    :cond_8
    :try_start_0
    invoke-virtual {v5, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 155
    .end local v1           #d1:I
    .end local v2           #d2:I
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_9
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "urlStr"

    .prologue
    const/16 v13, 0x25

    const/4 v8, 0x0

    const/4 v12, -0x1

    .line 169
    const-string v4, "0123456789ABCDEF"

    .line 171
    .local v4, digits:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x10

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v1, buf:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 173
    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 174
    .local v3, ch:C
    if-ne v13, v3, :cond_3

    .line 175
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 176
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 177
    const-string v7, "0123456789ABCDEF"

    .line 178
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 177
    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v12, :cond_2

    .line 179
    const-string v7, "0123456789ABCDEF"

    .line 180
    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 179
    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v12, :cond_2

    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v6, v6, 0x2

    .line 172
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 186
    :cond_2
    const-string v7, "%25"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 188
    :cond_3
    const-string v7, "\"<>%\\^[]`+$,{}`~| "

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v12, :cond_4

    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    :cond_4
    const/4 v2, 0x0

    check-cast v2, [B

    .line 193
    .local v2, bytes:[B
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [C

    const/4 v10, 0x0

    aput-char v3, v9, v10

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([C)V

    const-string v9, "UTF-8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 197
    array-length v9, v2

    move v7, v8

    :goto_2
    if-ge v7, v9, :cond_1

    aget-byte v0, v2, v7

    .line 198
    .local v0, b:B
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    const-string v10, "0123456789ABCDEF"

    and-int/lit16 v11, v0, 0xf0

    shr-int/lit8 v11, v11, 0x4

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    const-string v10, "0123456789ABCDEF"

    and-int/lit8 v11, v0, 0xf

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 194
    .end local v0           #b:B
    :catch_0
    move-exception v5

    .line 195
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "name"

    .prologue
    .line 216
    sget-object v0, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    sget-object v0, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 2
    .parameter "name"

    .prologue
    .line 234
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Util;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private static parse(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "string"
    .parameter "array"

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 242
    .local v5, length:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, p1

    if-lt v6, v0, :cond_1

    .line 247
    const/4 v6, -0x1

    .end local v6           #i:I
    :cond_0
    return v6

    .line 243
    .restart local v6       #i:I
    :cond_1
    const/4 v1, 0x1

    aget-object v3, p1, v6

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 23
    .parameter "string"

    .prologue
    .line 259
    const/16 v16, 0x0

    .line 260
    .local v16, offset:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 261
    .local v11, length:I
    const/16 v18, 0x0

    .line 262
    .local v18, state:I
    const/16 v20, -0x1

    .local v20, year:I
    const/4 v13, -0x1

    .local v13, month:I
    const/4 v8, -0x1

    .line 263
    .local v8, date:I
    const/4 v10, -0x1

    .local v10, hour:I
    const/4 v12, -0x1

    .local v12, minute:I
    const/16 v17, -0x1

    .line 264
    .local v17, second:I
    const/4 v4, 0x0

    .local v4, PAD:I
    const/4 v2, 0x1

    .local v2, LETTERS:I
    const/4 v3, 0x2

    .line 265
    .local v3, NUMBERS:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v5, buffer:Ljava/lang/StringBuilder;
    :goto_0
    move/from16 v0, v16

    if-le v0, v11, :cond_4

    .line 337
    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_1e

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v8, v0, :cond_1e

    .line 338
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_0

    .line 339
    const/4 v10, 0x0

    .line 341
    :cond_0
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_1

    .line 342
    const/4 v12, 0x0

    .line 344
    :cond_1
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 345
    const/16 v17, 0x0

    .line 348
    :cond_2
    const-string v21, "GMT"

    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    .line 347
    invoke-static/range {v21 .. v21}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 349
    .local v6, cal:Ljava/util/Calendar;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    add-int/lit8 v7, v21, -0x50

    .line 350
    .local v7, current:I
    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 351
    div-int/lit8 v21, v7, 0x64

    mul-int/lit8 v21, v21, 0x64

    add-int v20, v20, v21

    .line 352
    move/from16 v0, v20

    if-ge v0, v7, :cond_3

    .line 353
    add-int/lit8 v20, v20, 0x64

    .line 356
    :cond_3
    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 357
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 358
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v6, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 359
    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-virtual {v6, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 360
    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v6, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 361
    const/16 v21, 0xd

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 362
    const/16 v21, 0xe

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 363
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    return-wide v21

    .line 268
    .end local v6           #cal:Ljava/util/Calendar;
    .end local v7           #current:I
    :cond_4
    move/from16 v0, v16

    if-ge v0, v11, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 269
    .local v14, next:C
    :goto_1
    add-int/lit8 v16, v16, 0x1

    .line 272
    const/16 v21, 0x61

    move/from16 v0, v21

    if-lt v14, v0, :cond_5

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-le v14, v0, :cond_6

    :cond_5
    const/16 v21, 0x41

    move/from16 v0, v21

    if-lt v14, v0, :cond_9

    const/16 v21, 0x5a

    move/from16 v0, v21

    if-gt v14, v0, :cond_9

    .line 273
    :cond_6
    const/4 v15, 0x1

    .line 282
    .local v15, nextState:I
    :goto_2
    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v15, v0, :cond_1b

    .line 283
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 284
    .local v9, digit:I
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 285
    const/16 v21, 0x46

    move/from16 v0, v21

    if-lt v9, v0, :cond_10

    .line 286
    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 287
    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v14, v0, :cond_c

    const/16 v21, 0x2c

    move/from16 v0, v21

    if-eq v14, v0, :cond_c

    const/16 v21, 0xd

    move/from16 v0, v21

    if-eq v14, v0, :cond_c

    .line 288
    :cond_7
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 268
    .end local v9           #digit:I
    .end local v14           #next:C
    .end local v15           #nextState:I
    :cond_8
    const/16 v14, 0xd

    goto :goto_1

    .line 274
    .restart local v14       #next:C
    :cond_9
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v14, v0, :cond_a

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v14, v0, :cond_a

    .line 275
    const/4 v15, 0x2

    .restart local v15       #nextState:I
    goto :goto_2

    .line 276
    .end local v15           #nextState:I
    :cond_a
    const-string v21, " ,-:\r\t"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 277
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 279
    :cond_b
    const/4 v15, 0x0

    .restart local v15       #nextState:I
    goto :goto_2

    .line 290
    .restart local v9       #digit:I
    :cond_c
    move/from16 v20, v9

    .line 331
    .end local v9           #digit:I
    :cond_d
    :goto_3
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v15, v0, :cond_e

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v15, v0, :cond_f

    .line 332
    :cond_e
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    :cond_f
    move/from16 v18, v15

    goto/16 :goto_0

    .line 291
    .restart local v9       #digit:I
    :cond_10
    const/16 v21, 0x3a

    move/from16 v0, v21

    if-ne v14, v0, :cond_13

    .line 292
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_11

    .line 293
    move v10, v9

    goto :goto_3

    .line 294
    :cond_11
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_12

    .line 295
    move v12, v9

    goto :goto_3

    .line 297
    :cond_12
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 299
    :cond_13
    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v14, v0, :cond_14

    const/16 v21, 0x2c

    move/from16 v0, v21

    if-eq v14, v0, :cond_14

    const/16 v21, 0x2d

    move/from16 v0, v21

    if-eq v14, v0, :cond_14

    .line 300
    const/16 v21, 0xd

    move/from16 v0, v21

    if-ne v14, v0, :cond_19

    .line 301
    :cond_14
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v10, v0, :cond_15

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_15

    .line 302
    move v12, v9

    goto :goto_3

    .line 303
    :cond_15
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v12, v0, :cond_16

    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 304
    move/from16 v17, v9

    goto :goto_3

    .line 305
    :cond_16
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_17

    .line 306
    move v8, v9

    goto :goto_3

    .line 307
    :cond_17
    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 308
    move/from16 v20, v9

    goto :goto_3

    .line 310
    :cond_18
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 312
    :cond_19
    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_1a

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v8, v0, :cond_1a

    .line 313
    move/from16 v20, v9

    goto/16 :goto_3

    .line 315
    :cond_1a
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 317
    .end local v9           #digit:I
    :cond_1b
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v15, v0, :cond_d

    .line 318
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    .line 319
    .local v19, text:Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 320
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1c

    .line 321
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 323
    :cond_1c
    sget-object v21, Lorg/apache/harmony/luni/util/Util;->WEEKDAYS:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/util/Util;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 324
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_1d

    sget-object v21, Lorg/apache/harmony/luni/util/Util;->MONTHS:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/util/Util;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_d

    .line 325
    :cond_1d
    const-string v21, "GMT"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 327
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 365
    .end local v14           #next:C
    .end local v15           #nextState:I
    .end local v19           #text:Ljava/lang/String;
    :cond_1e
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21
.end method

.method public static toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 369
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 370
    .local v3, len:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 371
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 372
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 373
    .local v1, c:C
    const/16 v4, 0x41

    if-gt v4, v1, :cond_1

    const/16 v4, 0x5a

    if-gt v1, v4, :cond_1

    .line 374
    add-int/lit8 v4, v1, 0x20

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 384
    .local v3, len:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 385
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 386
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 387
    .local v1, c:C
    const/16 v4, 0x61

    if-gt v4, v1, :cond_1

    const/16 v4, 0x7a

    if-gt v1, v4, :cond_1

    .line 388
    add-int/lit8 v4, v1, -0x20

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    const/4 v4, 0x0

    .line 397
    sget-object v0, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 399
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    sget-object v3, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-object v0

    .line 400
    :catch_0
    move-exception v0

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    invoke-direct {v0, p0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 407
    sget-object v0, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 409
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/harmony/luni/util/Util;->defaultEncoding:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-object v0

    .line 410
    :catch_0
    move-exception v0

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public static toUTF8String([B)Ljava/lang/String;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 417
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/harmony/luni/util/Util;->toUTF8String([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUTF8String([BII)Ljava/lang/String;
    .locals 3
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 422
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    return-object v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {p0, p1, p2}, Lorg/apache/harmony/luni/util/Util;->toString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
