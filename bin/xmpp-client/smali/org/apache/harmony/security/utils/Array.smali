.class public Lorg/apache/harmony/security/utils/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "array"
    .parameter "prefix"

    .prologue
    .line 42
    const/4 v10, 0x5

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v7, v10

    const/4 v10, 0x1

    .line 43
    const-string v11, "000"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    .line 44
    const-string v11, "00"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    .line 45
    const-string v11, "0"

    aput-object v11, v7, v10

    const/4 v10, 0x4

    .line 46
    const-string v11, ""

    aput-object v11, v7, v10

    .line 48
    .local v7, offsetPrefix:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v8, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, charForm:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 51
    .local v4, i:I
    const/4 v4, 0x0

    :goto_0
    array-length v10, p0

    if-lt v4, v10, :cond_2

    .line 87
    rem-int/lit8 v10, v4, 0x10

    if-eqz v10, :cond_1

    .line 88
    rem-int/lit8 v10, v4, 0x10

    rsub-int/lit8 v9, v10, 0x10

    .line 89
    .local v9, ws2add:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-lt v5, v9, :cond_8

    .line 92
    const/16 v10, 0x8

    if-le v9, v10, :cond_0

    .line 93
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .end local v5           #j:I
    .end local v9           #ws2add:I
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 52
    :cond_2
    rem-int/lit8 v10, v4, 0x10

    if-nez v10, :cond_3

    .line 53
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, offset:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 62
    .end local v6           #offset:Ljava/lang/String;
    :cond_3
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    aget-byte v10, p0, v4

    and-int/lit16 v1, v10, 0xff

    .line 65
    .local v1, currentByte:I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, hexTail:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 67
    const/16 v10, 0x30

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :cond_4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const v10, 0xffff

    and-int/2addr v10, v1

    int-to-char v2, v10

    .line 73
    .local v2, currentChar:C
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v2, 0x2e

    .end local v2           #currentChar:C
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v10, v4, 0x1

    rem-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_6

    .line 77
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :cond_6
    add-int/lit8 v10, v4, 0x1

    rem-int/lit8 v10, v10, 0x10

    if-nez v10, :cond_7

    .line 81
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 90
    .end local v1           #currentByte:I
    .end local v3           #hexTail:Ljava/lang/String;
    .restart local v5       #j:I
    .restart local v9       #ws2add:I
    :cond_8
    const-string v10, "   "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method
