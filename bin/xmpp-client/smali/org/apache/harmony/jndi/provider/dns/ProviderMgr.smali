.class public Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;
.super Ljava/lang/Object;
.source "ProviderMgr.java"


# static fields
.field static final CHECK_NAMES:Z = false

.field static final LOG_DEBUG:I = 0x3

.field static final LOG_ERROR:I = 0x1

.field static final LOG_NONE:I = 0x0

.field static final LOG_WARNING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBit(II)Z
    .locals 1
    .parameter "value"
    .parameter "mask"

    .prologue
    .line 54
    and-int v0, p0, p1

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getIpStr([B)Ljava/lang/String;
    .locals 5
    .parameter "ip"

    .prologue
    const/4 v4, 0x4

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v2, p0

    if-ge v2, v4, :cond_1

    .line 74
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "jndi.61"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_2

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 77
    :cond_2
    if-lez v0, :cond_3

    .line 78
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMatchingCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "name1"
    .parameter "name2"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, k:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 100
    :cond_0
    const/4 v3, 0x0

    .line 111
    :goto_0
    return v3

    .line 102
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v1, st1:Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v2, st2:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v3, v0

    .line 111
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getParentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 134
    :goto_0
    return-object v1

    .line 127
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 128
    :cond_1
    const-string v1, "."

    goto :goto_0

    .line 130
    :cond_2
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 131
    .local v0, n:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_3

    .line 132
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_3
    const-string v1, "."

    goto :goto_0
.end method

.method public static getRecordClassNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrClassNames:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 150
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 144
    .restart local v0       #i:I
    :cond_1
    sget-object v1, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrClassNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 145
    sget-object v1, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrClassNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRecordTypeNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 166
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 160
    .restart local v0       #i:I
    :cond_1
    sget-object v1, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 161
    sget-object v1, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "name1"
    .parameter "name2"

    .prologue
    .line 184
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static normalizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "zone"

    .prologue
    .line 202
    if-nez p0, :cond_0

    .line 205
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object p0, v0

    goto :goto_0

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static parse16Int([BI)I
    .locals 3
    .parameter "buffer"
    .parameter "idx"

    .prologue
    .line 220
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v0, v2, 0x8

    .line 221
    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v1, v2, 0xff

    .line 223
    .local v1, b:I
    or-int v2, v0, v1

    return v2
.end method

.method public static parse32Int([BI)J
    .locals 13
    .parameter "buffer"
    .parameter "idx"

    .prologue
    const-wide/16 v11, 0xff

    .line 237
    aget-byte v8, p0, p1

    int-to-long v8, v8

    and-long/2addr v8, v11

    const/16 v10, 0x18

    shl-long v0, v8, v10

    .line 238
    .local v0, a:J
    add-int/lit8 v8, p1, 0x1

    aget-byte v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v11

    const/16 v10, 0x10

    shl-long v2, v8, v10

    .line 239
    .local v2, b:J
    add-int/lit8 v8, p1, 0x2

    aget-byte v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v11

    const/16 v10, 0x8

    shl-long v4, v8, v10

    .line 240
    .local v4, c:J
    add-int/lit8 v8, p1, 0x3

    aget-byte v8, p0, v8

    int-to-long v8, v8

    and-long v6, v8, v11

    .line 242
    .local v6, d:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public static parse8Int([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "idx"

    .prologue
    .line 256
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static parseCharString([BILjava/lang/StringBuffer;)I
    .locals 3
    .parameter "mesBytes"
    .parameter "startIdx"
    .parameter "result"

    .prologue
    .line 274
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 276
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "jndi.60"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_1
    aget-byte v0, p0, p1

    .line 279
    .local v0, len:I
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, p0, v2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    add-int/lit8 v1, p1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public static parseIpStr(Ljava/lang/String;)[B
    .locals 10
    .parameter "ipStr"

    .prologue
    const/4 v9, 0x4

    .line 296
    new-array v0, v9, [B

    .line 298
    .local v0, b:[B
    const-string v8, "jndi.62"

    invoke-static {v8}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, errMsg1:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 301
    const/4 v3, 0x0

    .line 303
    .local v3, k:I
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v8, "."

    invoke-direct {v6, p0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v6, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_0

    .line 315
    if-eq v3, v9, :cond_2

    .line 316
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 305
    :cond_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, token:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 313
    .local v5, n:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .local v4, k:I
    int-to-byte v8, v5

    aput-byte v8, v0, v3

    move v3, v4

    .end local v4           #k:I
    .restart local v3       #k:I
    goto :goto_0

    .line 310
    .end local v5           #n:I
    :catch_0
    move-exception v1

    .line 311
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 320
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #k:I
    .end local v6           #st:Ljava/util/StringTokenizer;
    .end local v7           #token:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "jndi.63"

    invoke-static {v9}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 322
    .restart local v3       #k:I
    .restart local v6       #st:Ljava/util/StringTokenizer;
    :cond_2
    return-object v0
.end method

.method public static parseName([BILjava/lang/StringBuffer;)I
    .locals 8
    .parameter "mesBytes"
    .parameter "startIdx"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2e

    .line 340
    move v1, p1

    .line 341
    .local v1, idx:I
    const/4 v0, 0x1

    .line 343
    .local v0, firstTime:Z
    if-nez p0, :cond_0

    .line 345
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "jndi.5B"

    invoke-static {v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 347
    :cond_0
    if-nez p2, :cond_2

    .line 349
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "jndi.5C"

    invoke-static {v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 379
    .end local v1           #idx:I
    .local v2, idx:I
    .local v3, n:I
    :cond_1
    if-eqz v0, :cond_7

    .line 380
    const/4 v0, 0x0

    .line 384
    :goto_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    add-int v1, v2, v3

    .line 352
    .end local v2           #idx:I
    .end local v3           #n:I
    .restart local v1       #idx:I
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .restart local v2       #idx:I
    invoke-static {p0, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse8Int([BI)I

    move-result v3

    .line 354
    .restart local v3       #n:I
    if-nez v3, :cond_3

    move v1, v2

    .line 387
    .end local v2           #idx:I
    .restart local v1       #idx:I
    :goto_1
    return v1

    .line 358
    .end local v1           #idx:I
    .restart local v2       #idx:I
    :cond_3
    and-int/lit16 v5, v3, 0xc0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_5

    .line 360
    add-int/lit8 v1, v2, -0x1

    .end local v2           #idx:I
    .restart local v1       #idx:I
    invoke-static {p0, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v5

    and-int/lit16 v4, v5, 0x3fff

    .line 362
    .local v4, namePtr:I
    add-int/lit8 v1, v1, 0x2

    .line 363
    if-nez v0, :cond_4

    .line 364
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    :cond_4
    invoke-static {p0, v4, p2}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseName([BILjava/lang/StringBuffer;)I

    goto :goto_1

    .line 370
    .end local v1           #idx:I
    .end local v4           #namePtr:I
    .restart local v2       #idx:I
    :cond_5
    const/16 v5, 0x3f

    if-le v3, v5, :cond_6

    .line 372
    new-instance v5, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v6, "jndi.59"

    invoke-static {v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 374
    :cond_6
    add-int v5, v2, v3

    array-length v6, p0

    if-le v5, v6, :cond_1

    .line 376
    new-instance v5, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v6, "jndi.5D"

    invoke-static {v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 382
    :cond_7
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static setBit(IIZ)I
    .locals 1
    .parameter "value"
    .parameter "mask"
    .parameter "bit"

    .prologue
    .line 421
    if-eqz p2, :cond_0

    .line 422
    or-int/2addr p0, p1

    .line 426
    :goto_0
    return p0

    .line 424
    :cond_0
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p0, v0

    goto :goto_0
.end method

.method public static write16Int(I[BI)I
    .locals 3
    .parameter "value"
    .parameter "buffer"
    .parameter "startIdx"

    .prologue
    .line 441
    move v0, p2

    .line 443
    .local v0, idx:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .local v1, idx:I
    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 444
    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 445
    return v0
.end method

.method public static write32Int(J[BI)I
    .locals 5
    .parameter "value"
    .parameter "buffer"
    .parameter "startIdx"

    .prologue
    .line 460
    move v0, p3

    .line 462
    .local v0, idx:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .local v1, idx:I
    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 463
    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 464
    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .restart local v1       #idx:I
    const-wide/32 v2, 0xff00

    and-long/2addr v2, p0

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 465
    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 466
    return v0
.end method

.method public static writeCharString(Ljava/lang/String;[BI)I
    .locals 6
    .parameter "value"
    .parameter "buffer"
    .parameter "startIdx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    .line 487
    move v2, p2

    .line 489
    .local v2, idx:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 491
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "jndi.5E"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 493
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xff

    if-le v4, v5, :cond_2

    .line 495
    new-instance v4, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v5, "jndi.5F"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 497
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 498
    .local v0, bytes:[B
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    array-length v4, v0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 499
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_3

    .line 502
    return v3

    .line 499
    :cond_3
    aget-byte v1, v0, v4

    .line 500
    .local v1, element:B
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    aput-byte v1, p1, v3

    .line 499
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #idx:I
    .restart local v3       #idx:I
    goto :goto_0
.end method

.method public static writeName(Ljava/lang/String;[BI)I
    .locals 10
    .parameter "name"
    .parameter "buffer"
    .parameter "startIdx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xff

    .line 521
    move v1, p2

    .line 523
    .local v1, idx:I
    if-eqz p0, :cond_4

    .line 525
    if-nez p1, :cond_0

    .line 527
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "jndi.32"

    invoke-static {v8}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 529
    :cond_0
    array-length v7, p1

    if-gt p2, v7, :cond_1

    if-gez p2, :cond_2

    .line 530
    :cond_1
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v7

    .line 538
    :cond_2
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v7, "."

    invoke-direct {v3, p0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .local v3, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_5

    .line 568
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    const/4 v7, 0x0

    aput-byte v7, p1, v1

    move v1, v2

    .line 570
    .end local v2           #idx:I
    .end local v3           #st:Ljava/util/StringTokenizer;
    .restart local v1       #idx:I
    :cond_4
    return v1

    .line 540
    .restart local v3       #st:Ljava/util/StringTokenizer;
    :cond_5
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, token:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 547
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 548
    .local v5, tokenBytes:[B
    array-length v6, v5

    .line 549
    .local v6, tokenBytesLen:I
    const/16 v7, 0x3f

    if-le v6, v7, :cond_6

    .line 551
    new-instance v7, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    .line 552
    const-string v8, "jndi.64"

    .line 551
    invoke-static {v8, v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 554
    :cond_6
    add-int v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    array-length v8, p1

    if-le v7, v8, :cond_7

    .line 555
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v7

    .line 557
    :cond_7
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .restart local v2       #idx:I
    int-to-byte v7, v6

    aput-byte v7, p1, v1

    .line 558
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v6, :cond_8

    .line 561
    sub-int v7, v2, p2

    add-int/lit8 v7, v7, 0x1

    if-le v7, v9, :cond_9

    .line 563
    new-instance v7, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    .line 564
    const-string v8, "jndi.5A"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 563
    invoke-static {v8, v9, p0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 559
    :cond_8
    add-int/lit8 v1, v2, 0x1

    .end local v2           #idx:I
    .restart local v1       #idx:I
    aget-byte v7, v5, v0

    aput-byte v7, p1, v2

    .line 558
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #idx:I
    .restart local v2       #idx:I
    goto :goto_1

    :cond_9
    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_0
.end method
