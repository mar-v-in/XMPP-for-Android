.class public Lorg/apache/harmony/luni/util/Inet6Util;
.super Ljava/lang/Object;
.source "Inet6Util.java"


# static fields
.field static hexCharacters:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lorg/apache/harmony/luni/util/Inet6Util;->hexCharacters:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressToString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToInt([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 46
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 47
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 46
    or-int/2addr v1, v2

    .line 48
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 46
    or-int/2addr v1, v2

    .line 49
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 46
    or-int v0, v1, v2

    .line 50
    .local v0, value:I
    return v0
.end method

.method public static convertToBytes(Ljava/lang/String;[BI)V
    .locals 7
    .parameter "hexWord"
    .parameter "ipByteArray"
    .parameter "byteIndex"

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 58
    .local v3, hexWordLength:I
    const/4 v1, 0x0

    .line 59
    .local v1, hexWordIndex:I
    aput-byte v5, p1, p2

    .line 60
    add-int/lit8 v4, p2, 0x1

    aput-byte v5, p1, v4

    .line 64
    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 65
    add-int/lit8 v2, v1, 0x1

    .end local v1           #hexWordIndex:I
    .local v2, hexWordIndex:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Inet6Util;->getIntValue(C)I

    move-result v0

    .line 66
    .local v0, charValue:I
    aget-byte v4, p1, p2

    shl-int/lit8 v5, v0, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 70
    .end local v0           #charValue:I
    :goto_0
    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 71
    add-int/lit8 v1, v2, 0x1

    .end local v2           #hexWordIndex:I
    .restart local v1       #hexWordIndex:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Inet6Util;->getIntValue(C)I

    move-result v0

    .line 72
    .restart local v0       #charValue:I
    aget-byte v4, p1, p2

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    move v2, v1

    .line 76
    .end local v0           #charValue:I
    .end local v1           #hexWordIndex:I
    .restart local v2       #hexWordIndex:I
    :cond_0
    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 77
    add-int/lit8 v1, v2, 0x1

    .end local v2           #hexWordIndex:I
    .restart local v1       #hexWordIndex:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Inet6Util;->getIntValue(C)I

    move-result v0

    .line 78
    .restart local v0       #charValue:I
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    shl-int/lit8 v6, v0, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 82
    .end local v0           #charValue:I
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Inet6Util;->getIntValue(C)I

    move-result v0

    .line 83
    .restart local v0       #charValue:I
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v6, v0, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 84
    return-void

    .end local v0           #charValue:I
    .end local v1           #hexWordIndex:I
    .restart local v2       #hexWordIndex:I
    :cond_1
    move v1, v2

    .end local v2           #hexWordIndex:I
    .restart local v1       #hexWordIndex:I
    goto :goto_1

    :cond_2
    move v2, v1

    .end local v1           #hexWordIndex:I
    .restart local v2       #hexWordIndex:I
    goto :goto_0
.end method

.method public static createByteArrayFromIPAddressString(Ljava/lang/String;)[B
    .locals 20
    .parameter "ipAddressString"

    .prologue
    .line 93
    invoke-static/range {p0 .. p0}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIPV4Address(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 94
    new-instance v17, Ljava/util/StringTokenizer;

    .line 95
    const-string v18, "."

    .line 94
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v17, tokenizer:Ljava/util/StringTokenizer;
    const-string v16, ""

    .line 97
    .local v16, token:Ljava/lang/String;
    const/4 v15, 0x0

    .line 98
    .local v15, tempInt:I
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 99
    .local v4, byteAddress:[B
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/16 v18, 0x4

    move/from16 v0, v18

    if-lt v9, v0, :cond_0

    .line 205
    .end local v4           #byteAddress:[B
    .end local v15           #tempInt:I
    :goto_1
    return-object v4

    .line 100
    .restart local v4       #byteAddress:[B
    .restart local v15       #tempInt:I
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 101
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 102
    int-to-byte v0, v15

    move/from16 v18, v0

    aput-byte v18, v4, v9

    .line 99
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 108
    .end local v4           #byteAddress:[B
    .end local v9           #i:I
    .end local v15           #tempInt:I
    .end local v16           #token:Ljava/lang/String;
    .end local v17           #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x5b

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 109
    const/16 v18, 0x1

    .line 110
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    .line 109
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 113
    :cond_2
    new-instance v17, Ljava/util/StringTokenizer;

    .line 114
    const-string v18, ":."

    const/16 v19, 0x1

    .line 113
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    .restart local v17       #tokenizer:Ljava/util/StringTokenizer;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v7, hexStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v5, decStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v16, ""

    .line 118
    .restart local v16       #token:Ljava/lang/String;
    const-string v14, ""

    .line 120
    .local v14, prevToken:Ljava/lang/String;
    const/4 v6, -0x1

    .line 128
    .local v6, doubleColonIndex:I
    :cond_3
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-nez v18, :cond_9

    .line 143
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 144
    const-string v18, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 145
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 155
    :cond_4
    :goto_3
    const/16 v8, 0x8

    .line 159
    .local v8, hexStringsLength:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_5

    .line 160
    add-int/lit8 v8, v8, -0x2

    .line 164
    :cond_5
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_6

    .line 165
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    sub-int v13, v8, v18

    .line 166
    .local v13, numberToInsert:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    if-lt v9, v13, :cond_e

    .line 171
    .end local v9           #i:I
    .end local v13           #numberToInsert:I
    :cond_6
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v10, v0, [B

    .line 174
    .local v10, ipByteArray:[B
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v9, v0, :cond_f

    .line 179
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v9, v0, :cond_10

    .line 185
    const/4 v11, 0x1

    .line 186
    .local v11, ipV4:Z
    const/4 v9, 0x0

    :goto_7
    const/16 v18, 0xa

    move/from16 v0, v18

    if-lt v9, v0, :cond_11

    .line 193
    :goto_8
    const/16 v18, 0xa

    aget-byte v18, v10, v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v18, 0xb

    aget-byte v18, v10, v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 194
    :cond_7
    const/4 v11, 0x0

    .line 197
    :cond_8
    if-eqz v11, :cond_14

    .line 198
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v12, v0, [B

    .line 199
    .local v12, ipv4ByteArray:[B
    const/4 v9, 0x0

    :goto_9
    const/16 v18, 0x4

    move/from16 v0, v18

    if-lt v9, v0, :cond_13

    move-object v4, v12

    .line 202
    goto/16 :goto_1

    .line 129
    .end local v8           #hexStringsLength:I
    .end local v9           #i:I
    .end local v10           #ipByteArray:[B
    .end local v11           #ipV4:Z
    .end local v12           #ipv4ByteArray:[B
    :cond_9
    move-object/from16 v14, v16

    .line 130
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 132
    const-string v18, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 133
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 134
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto/16 :goto_2

    .line 135
    :cond_a
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 136
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 138
    :cond_b
    const-string v18, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 139
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 147
    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 149
    :cond_d
    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 150
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 167
    .restart local v8       #hexStringsLength:I
    .restart local v9       #i:I
    .restart local v13       #numberToInsert:I
    :cond_e
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v7, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 175
    .end local v13           #numberToInsert:I
    .restart local v10       #ipByteArray:[B
    :cond_f
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    mul-int/lit8 v19, v9, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v10, v1}, Lorg/apache/harmony/luni/util/Inet6Util;->convertToBytes(Ljava/lang/String;[BI)V

    .line 174
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 180
    :cond_10
    add-int/lit8 v19, v9, 0xc

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v10, v19

    .line 179
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 187
    .restart local v11       #ipV4:Z
    :cond_11
    aget-byte v18, v10, v9

    if-eqz v18, :cond_12

    .line 188
    const/4 v11, 0x0

    .line 189
    goto/16 :goto_8

    .line 186
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 200
    .restart local v12       #ipv4ByteArray:[B
    :cond_13
    add-int/lit8 v18, v9, 0xc

    aget-byte v18, v10, v18

    aput-byte v18, v12, v9

    .line 199
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .end local v12           #ipv4ByteArray:[B
    :cond_14
    move-object v4, v10

    .line 205
    goto/16 :goto_1
.end method

.method public static createIPAddrStringFromByteArray([B)Ljava/lang/String;
    .locals 9
    .parameter "ipByteArray"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 210
    array-length v5, p0

    if-ne v5, v7, :cond_0

    .line 211
    invoke-static {p0, v8}, Lorg/apache/harmony/luni/util/Inet6Util;->bytesToInt([BI)I

    move-result v5

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Inet6Util;->addressToString(I)Ljava/lang/String;

    move-result-object v5

    .line 247
    :goto_0
    return-object v5

    .line 214
    :cond_0
    array-length v5, p0

    const/16 v6, 0x10

    if-ne v5, v6, :cond_b

    .line 215
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Inet6Util;->isIPv4MappedAddress([B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    new-array v2, v7, [B

    .line 217
    .local v2, ipv4ByteArray:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v7, :cond_1

    .line 220
    invoke-static {v2, v8}, Lorg/apache/harmony/luni/util/Inet6Util;->bytesToInt([BI)I

    move-result v5

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Inet6Util;->addressToString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 218
    :cond_1
    add-int/lit8 v5, v1, 0xc

    aget-byte v5, p0, v5

    aput-byte v5, v2, v1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    .end local v1           #i:I
    .end local v2           #ipv4ByteArray:[B
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 224
    .local v3, isFirst:Z
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v5, p0

    if-lt v1, v5, :cond_3

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 225
    :cond_3
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_4

    .line 226
    const/4 v3, 0x1

    .line 228
    :cond_4
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v4, v5, 0x4

    .line 229
    .local v4, j:I
    if-nez v4, :cond_5

    if-nez v3, :cond_6

    .line 230
    :cond_5
    sget-object v5, Lorg/apache/harmony/luni/util/Inet6Util;->hexCharacters:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    const/4 v3, 0x0

    .line 233
    :cond_6
    aget-byte v5, p0, v1

    and-int/lit8 v4, v5, 0xf

    .line 234
    if-nez v4, :cond_7

    if-nez v3, :cond_8

    .line 235
    :cond_7
    sget-object v5, Lorg/apache/harmony/luni/util/Inet6Util;->hexCharacters:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    const/4 v3, 0x0

    .line 238
    :cond_8
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_a

    add-int/lit8 v5, v1, 0x1

    array-length v6, p0

    if-ge v5, v6, :cond_a

    .line 239
    if-eqz v3, :cond_9

    .line 240
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :cond_9
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 247
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v3           #isFirst:Z
    .end local v4           #j:I
    :cond_b
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static getIntValue(C)I
    .locals 1
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 252
    packed-switch p0, :pswitch_data_0

    .line 275
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    .line 276
    packed-switch p0, :pswitch_data_1

    .line 290
    :goto_0
    :pswitch_0
    return v0

    .line 256
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 260
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 262
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 264
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 266
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 268
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 270
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 272
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 278
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 280
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 282
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 284
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 286
    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    .line 288
    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 276
    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static isIP6AddressInFullForm(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddress"

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIP6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const-string v2, "::"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 296
    .local v0, doubleColonIndex:I
    if-ltz v0, :cond_1

    .line 302
    .end local v0           #doubleColonIndex:I
    :cond_0
    :goto_0
    return v1

    .line 300
    .restart local v0       #doubleColonIndex:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isIPv4MappedAddress([B)Z
    .locals 5
    .parameter "ipAddress"

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 316
    aget-byte v2, p0, v4

    if-ne v2, v3, :cond_0

    const/16 v2, 0xb

    aget-byte v2, p0, v2

    if-eq v2, v3, :cond_2

    .line 320
    :cond_0
    :goto_1
    return v1

    .line 311
    :cond_1
    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static isValidHexChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 326
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_3

    .line 327
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-le p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    .line 326
    goto :goto_0
.end method

.method public static isValidIP4Word(Ljava/lang/String;)Z
    .locals 6
    .parameter "word"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v2

    .line 335
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 341
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xff

    if-gt v4, v5, :cond_0

    move v2, v3

    .line 344
    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 337
    .local v0, c:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isValidIP6Address(Ljava/lang/String;)Z
    .locals 13
    .parameter "ipAddress"

    .prologue
    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 349
    .local v4, length:I
    const/4 v1, 0x0

    .line 350
    .local v1, doubleColon:Z
    const/4 v5, 0x0

    .line 351
    .local v5, numberOfColons:I
    const/4 v7, 0x0

    .line 352
    .local v7, numberOfPeriods:I
    const/4 v6, 0x0

    .line 353
    .local v6, numberOfPercent:I
    const-string v10, ""

    .line 354
    .local v10, word:Ljava/lang/String;
    const/4 v0, 0x0

    .line 355
    .local v0, c:C
    const/4 v9, 0x0

    .line 356
    .local v9, prevChar:C
    const/4 v8, 0x0

    .line 358
    .local v8, offset:I
    const/4 v11, 0x2

    if-ge v4, v11, :cond_0

    .line 359
    const/4 v11, 0x0

    .line 486
    :goto_0
    return v11

    .line 362
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v4, :cond_2

    .line 464
    if-lez v7, :cond_13

    .line 465
    const/4 v11, 0x3

    if-ne v7, v11, :cond_1

    invoke-static {v10}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIP4Word(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 466
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 363
    :cond_2
    move v9, v0

    .line 364
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 365
    sparse-switch v0, :sswitch_data_0

    .line 451
    if-nez v6, :cond_12

    .line 452
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_11

    .line 453
    const/4 v11, 0x0

    goto :goto_0

    .line 369
    :sswitch_0
    if-eqz v3, :cond_3

    .line 370
    const/4 v11, 0x0

    goto :goto_0

    .line 372
    :cond_3
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5d

    if-eq v11, v12, :cond_4

    .line 373
    const/4 v11, 0x0

    goto :goto_0

    .line 375
    :cond_4
    const/4 v8, 0x1

    .line 376
    const/4 v11, 0x4

    if-ge v4, v11, :cond_a

    .line 377
    const/4 v11, 0x0

    goto :goto_0

    .line 383
    :sswitch_1
    add-int/lit8 v11, v4, -0x1

    if-eq v3, v11, :cond_5

    .line 384
    const/4 v11, 0x0

    goto :goto_0

    .line 386
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5b

    if-eq v11, v12, :cond_a

    .line 387
    const/4 v11, 0x0

    goto :goto_0

    .line 393
    :sswitch_2
    add-int/lit8 v7, v7, 0x1

    .line 394
    const/4 v11, 0x3

    if-le v7, v11, :cond_6

    .line 395
    const/4 v11, 0x0

    goto :goto_0

    .line 397
    :cond_6
    invoke-static {v10}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIP4Word(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 398
    const/4 v11, 0x0

    goto :goto_0

    .line 400
    :cond_7
    const/4 v11, 0x6

    if-eq v5, v11, :cond_8

    if-nez v1, :cond_8

    .line 401
    const/4 v11, 0x0

    goto :goto_0

    .line 405
    :cond_8
    const/4 v11, 0x7

    if-ne v5, v11, :cond_9

    add-int/lit8 v11, v8, 0x0

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3a

    if-eq v11, v12, :cond_9

    .line 406
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3a

    if-eq v11, v12, :cond_9

    .line 407
    const/4 v11, 0x0

    goto :goto_0

    .line 409
    :cond_9
    const-string v10, ""

    .line 362
    :cond_a
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 413
    :sswitch_3
    add-int/lit8 v5, v5, 0x1

    .line 414
    const/4 v11, 0x7

    if-le v5, v11, :cond_b

    .line 415
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 417
    :cond_b
    if-lez v7, :cond_c

    .line 418
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 420
    :cond_c
    const/16 v11, 0x3a

    if-ne v9, v11, :cond_e

    .line 421
    if-eqz v1, :cond_d

    .line 422
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 424
    :cond_d
    const/4 v1, 0x1

    .line 426
    :cond_e
    const-string v10, ""

    .line 427
    goto :goto_2

    .line 429
    :sswitch_4
    if-nez v5, :cond_f

    .line 430
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 432
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 435
    add-int/lit8 v11, v3, 0x1

    if-lt v11, v4, :cond_10

    .line 438
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 441
    :cond_10
    add-int/lit8 v11, v3, 0x1

    :try_start_0
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 442
    :catch_0
    move-exception v2

    .line 446
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 455
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_11
    invoke-static {v0}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidHexChar(C)Z

    move-result v11

    if-nez v11, :cond_12

    .line 456
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 459
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 471
    :cond_13
    const/4 v11, 0x7

    if-eq v5, v11, :cond_14

    if-nez v1, :cond_14

    .line 472
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 478
    :cond_14
    if-nez v6, :cond_15

    .line 479
    const-string v11, ""

    if-ne v10, v11, :cond_15

    add-int/lit8 v11, v4, -0x1

    sub-int/2addr v11, v8

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_15

    .line 480
    add-int/lit8 v11, v4, -0x2

    sub-int/2addr v11, v8

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3a

    if-eq v11, v12, :cond_15

    .line 481
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 486
    :cond_15
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x2e -> :sswitch_2
        0x3a -> :sswitch_3
        0x5b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public static isValidIPV4Address(Ljava/lang/String;)Z
    .locals 11
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 497
    const-string v7, "[\\p{Digit}\\.]*"

    invoke-virtual {p0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v5

    .line 501
    :cond_1
    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, parts:[Ljava/lang/String;
    array-length v0, v4

    .line 503
    .local v0, length:I
    const/4 v7, 0x4

    if-gt v0, v7, :cond_0

    .line 508
    array-length v7, v4

    if-ne v7, v6, :cond_2

    .line 509
    aget-object v7, v4, v5

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 510
    .local v1, longValue:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-ltz v7, :cond_0

    const-wide v7, 0xffffffffL

    cmp-long v7, v1, v7

    if-gtz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 513
    .end local v1           #longValue:J
    :cond_2
    array-length v8, v4

    move v7, v5

    :goto_1
    if-lt v7, v8, :cond_3

    move v5, v6

    .line 518
    goto :goto_0

    .line 513
    :cond_3
    aget-object v3, v4, v7

    .line 514
    .local v3, part:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-gt v9, v10, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0xff

    if-gt v9, v10, :cond_0

    .line 513
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
