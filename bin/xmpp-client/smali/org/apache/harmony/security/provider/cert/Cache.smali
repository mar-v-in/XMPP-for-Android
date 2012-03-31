.class public Lorg/apache/harmony/security/provider/cert/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field private static final HASH_MASK:J = -0x10000L

.field private static final INDEX_MASK:I = 0xffff

.field private static final PREFIX_HASH_MASK:J = -0x100000000L


# instance fields
.field private final cache:[Ljava/lang/Object;

.field private cache_is_full:Z

.field private final cache_size:I

.field private final encodings:[[B

.field private final hashes:[J

.field private final hashes_idx:[J

.field private last_cached:I

.field private final prefix_size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 126
    const/16 v0, 0x1c

    const/16 v1, 0x384

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(II)V

    .line 127
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pref_size"

    .prologue
    .line 137
    const/16 v0, 0x384

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(II)V

    .line 138
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pref_size"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    .line 120
    iput-boolean v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_is_full:Z

    .line 150
    iput p2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    .line 151
    iput p1, p0, Lorg/apache/harmony/security/provider/cert/Cache;->prefix_size:I

    .line 152
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes:[J

    .line 153
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    .line 154
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->encodings:[[B

    .line 155
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache:[Ljava/lang/Object;

    .line 156
    return-void
.end method

.method private getSuffHash([B)J
    .locals 5
    .parameter "arr"

    .prologue
    .line 238
    const-wide/16 v0, 0x0

    .line 239
    .local v0, hash_addon:J
    array-length v3, p1

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    array-length v3, p1

    iget v4, p0, Lorg/apache/harmony/security/provider/cert/Cache;->prefix_size:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    .line 242
    const/16 v3, 0x10

    shl-long v3, v0, v3

    return-wide v3

    .line 240
    :cond_0
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 239
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public contains(J)Z
    .locals 6
    .parameter "prefix_hash"

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 170
    .local v0, idx:I
    iget v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-ne v0, v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aget-wide v2, v2, v0

    const-wide v4, -0x100000000L

    and-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public get(J[B)Ljava/lang/Object;
    .locals 7
    .parameter "hash"
    .parameter "encoding"

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-direct {p0, p3}, Lorg/apache/harmony/security/provider/cert/Cache;->getSuffHash([B)J

    move-result-wide v3

    or-long/2addr p1, v3

    .line 193
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v3, -0x1

    .line 194
    .local v1, idx:I
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-ne v1, v3, :cond_3

    .line 207
    :cond_0
    :goto_0
    return-object v2

    .line 198
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aget-wide v3, v3, v1

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    long-to-int v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 199
    .local v0, i:I
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->encodings:[[B

    aget-object v3, v3, v0

    invoke-static {p3, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_0

    .line 202
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 203
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-eq v1, v3, :cond_0

    .line 197
    .end local v0           #i:I
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aget-wide v3, v3, v1

    const-wide/32 v5, -0x10000

    and-long/2addr v3, v5

    cmp-long v3, v3, p1

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public getHash([B)J
    .locals 5
    .parameter "arr"

    .prologue
    .line 224
    const-wide/16 v0, 0x0

    .line 225
    .local v0, hash:J
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->prefix_size:I

    if-lt v2, v3, :cond_0

    .line 230
    const/16 v3, 0x20

    shl-long/2addr v0, v3

    .line 231
    return-wide v0

    .line 226
    :cond_0
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public put(J[BLjava/lang/Object;)V
    .locals 12
    .parameter "hash"
    .parameter "encoding"
    .parameter "object"

    .prologue
    .line 257
    iget v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    iget v8, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-ne v7, v8, :cond_0

    .line 261
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    .line 262
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_is_full:Z

    .line 265
    :cond_0
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    .line 268
    .local v3, index:I
    invoke-direct {p0, p3}, Lorg/apache/harmony/security/provider/cert/Cache;->getSuffHash([B)J

    move-result-wide v7

    or-long/2addr p1, v7

    .line 270
    iget-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_is_full:Z

    if-eqz v7, :cond_6

    .line 272
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes:[J

    aget-wide v7, v7, v3

    add-int/lit8 v9, v3, 0x1

    int-to-long v9, v9

    or-long v1, v7, v9

    .line 273
    .local v1, idx_hash:J
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 274
    .local v0, idx:I
    if-gez v0, :cond_1

    .line 277
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WARNING! "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v7, v0, 0x1

    neg-int v0, v7

    .line 280
    :cond_1
    add-int/lit8 v7, v3, 0x1

    int-to-long v7, v7

    or-long v4, p1, v7

    .line 281
    .local v4, new_hash_idx:J
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v7, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    .line 282
    .local v6, new_idx:I
    if-ltz v6, :cond_3

    .line 284
    if-eq v0, v6, :cond_2

    .line 287
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "WARNING: "

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ">> idx: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " new_idx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    .end local v4           #new_hash_idx:J
    .end local v6           #new_idx:I
    :cond_2
    :goto_0
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes:[J

    aput-wide p1, v7, v3

    .line 323
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->encodings:[[B

    aput-object p3, v7, v3

    .line 324
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache:[Ljava/lang/Object;

    aput-object p4, v7, v3

    .line 325
    return-void

    .line 292
    .restart local v4       #new_hash_idx:J
    .restart local v6       #new_idx:I
    :cond_3
    add-int/lit8 v7, v6, 0x1

    neg-int v6, v7

    .line 294
    if-le v6, v0, :cond_4

    .line 295
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    .line 296
    sub-int v10, v6, v0

    add-int/lit8 v10, v10, -0x1

    .line 295
    invoke-static {v7, v8, v9, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    add-int/lit8 v8, v6, -0x1

    aput-wide v4, v7, v8

    goto :goto_0

    .line 298
    :cond_4
    if-le v0, v6, :cond_5

    .line 299
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    iget-object v8, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    .line 300
    add-int/lit8 v9, v6, 0x1

    sub-int v10, v0, v6

    .line 299
    invoke-static {v7, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aput-wide v4, v7, v6

    goto :goto_0

    .line 303
    :cond_5
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aput-wide v4, v7, v6

    goto :goto_0

    .line 307
    .end local v0           #idx:I
    .end local v1           #idx_hash:J
    .end local v4           #new_hash_idx:J
    .end local v6           #new_idx:I
    :cond_6
    add-int/lit8 v7, v3, 0x1

    int-to-long v7, v7

    or-long v1, p1, v7

    .line 308
    .restart local v1       #idx_hash:J
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 309
    .restart local v0       #idx:I
    if-gez v0, :cond_7

    .line 311
    add-int/lit8 v7, v0, 0x1

    neg-int v0, v7

    .line 313
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 314
    iget v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-eq v0, v7, :cond_8

    .line 316
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    iget v8, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v8, v3

    iget-object v9, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    .line 317
    iget v10, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v10, v3

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v11, v3

    sub-int v11, v0, v11

    add-int/lit8 v11, v11, 0x1

    .line 316
    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    :cond_8
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aput-wide v1, v7, v0

    goto :goto_0
.end method
