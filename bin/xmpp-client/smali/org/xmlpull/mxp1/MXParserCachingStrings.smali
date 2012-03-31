.class public Lorg/xmlpull/mxp1/MXParserCachingStrings;
.super Lorg/xmlpull/mxp1/MXParser;
.source "MXParserCachingStrings.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final CACHE_LOAD:I = 0x4d

.field protected static final CACHE_STATISTICS:Z = false

.field protected static final INITIAL_CAPACITY:I = 0xd

.field protected static final TRACE_SIZING:Z


# instance fields
.field protected cacheEntriesCount:I

.field protected cacheEntriesThreshold:I

.field protected cacheStatCalls:I

.field protected cacheStatRehash:I

.field protected cacheStatResets:I

.field protected cacheStatWalks:I

.field protected keys:[[C

.field protected values:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    .line 75
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->initStringCache()V

    .line 76
    return-void
.end method

.method private cloneCCArr([[C)[[C
    .locals 3
    .parameter "ccarr"

    .prologue
    .line 251
    invoke-virtual {p1}, [[C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    .line 252
    .local v0, cca:[[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 257
    return-object v0

    .line 253
    :cond_0
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 254
    aget-object v2, v0, v1

    invoke-virtual {v2}, [C->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    aput-object v2, v0, v1

    .line 252
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final keysAreEqual([CII[CII)Z
    .locals 4
    .parameter "a"
    .parameter "astart"
    .parameter "alength"
    .parameter "b"
    .parameter "bstart"
    .parameter "blength"

    .prologue
    const/4 v1, 0x0

    .line 33
    if-eq p2, p5, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p2, :cond_2

    .line 41
    const/4 v1, 0x1

    goto :goto_0

    .line 37
    :cond_2
    add-int v2, p1, v0

    aget-char v2, p0, v2

    add-int v3, p4, v0

    aget-char v3, p3, v3

    if-ne v2, v3, :cond_0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private rehash()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 364
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v9, v2, 0x1

    .line 365
    .local v9, newSize:I
    mul-int/lit8 v2, v9, 0x4d

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    .line 366
    iget v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    if-lt v2, v9, :cond_0

    .line 367
    new-instance v1, Ljava/lang/RuntimeException;

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "internal error: threshold must be less than capacity: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 368
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_0
    new-array v7, v9, [[C

    .line 375
    .local v7, newKeys:[[C
    new-array v10, v9, [Ljava/lang/String;

    .line 376
    .local v10, newValues:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v2, v2

    if-lt v6, v2, :cond_1

    .line 398
    iput-object v7, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    .line 399
    iput-object v10, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    .line 400
    return-void

    .line 377
    :cond_1
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    aget-object v3, v2, v6

    .line 378
    .local v3, k:[C
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    aput-object v12, v2, v6

    .line 379
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    aget-object v11, v2, v6

    .line 380
    .local v11, v:Ljava/lang/String;
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    aput-object v12, v2, v6

    .line 381
    if-eqz v3, :cond_2

    .line 382
    array-length v2, v3

    invoke-static {v3, v1, v2}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->fastHash([CII)I

    move-result v2

    rem-int v8, v2, v9

    .local v8, newOffset:I
    move-object v0, v12

    .line 383
    check-cast v0, [C

    .line 384
    .local v0, newk:[C
    :goto_1
    aget-object v0, v7, v8

    if-nez v0, :cond_3

    .line 394
    aput-object v3, v7, v8

    .line 395
    aput-object v11, v10, v8

    .line 376
    .end local v0           #newk:[C
    .end local v8           #newOffset:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 385
    .restart local v0       #newk:[C
    .restart local v8       #newOffset:I
    :cond_3
    array-length v2, v0

    array-length v5, v3

    move v4, v1

    invoke-static/range {v0 .. v5}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keysAreEqual([CII[CII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 386
    new-instance v1, Ljava/lang/RuntimeException;

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "internal cache error: duplicated keys: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 389
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_4
    add-int/lit8 v2, v8, 0x1

    rem-int v8, v2, v9

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_0

    .line 81
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->reader:Ljava/io/Reader;

    instance-of v4, v4, Ljava/lang/Cloneable;

    if-nez v4, :cond_0

    .line 82
    new-instance v4, Ljava/lang/CloneNotSupportedException;

    .line 83
    const-string v5, "reader used in parser must implement Cloneable!"

    .line 82
    invoke-direct {v4, v5}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 87
    check-cast v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;

    .line 91
    .local v0, cloned:Lorg/xmlpull/mxp1/MXParserCachingStrings;
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_1

    .line 100
    :try_start_0
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "clone"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 101
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->reader:Ljava/io/Reader;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, o:Ljava/lang/Object;
    check-cast v3, Ljava/io/Reader;

    .end local v3           #o:Ljava/lang/Object;
    iput-object v3, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->reader:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    if-eqz v4, :cond_2

    .line 122
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    invoke-virtual {v4}, [[C->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[C

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    .line 126
    :cond_2
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 127
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    .line 133
    :cond_3
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elRawName:[[C

    if-eqz v4, :cond_4

    .line 134
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elRawName:[[C

    invoke-direct {p0, v4}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cloneCCArr([[C)[[C

    move-result-object v4

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elRawName:[[C

    .line 138
    :cond_4
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elRawNameEnd:[I

    if-eqz v4, :cond_5

    .line 139
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elRawNameEnd:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elRawNameEnd:[I

    .line 143
    :cond_5
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elRawNameLine:[I

    if-eqz v4, :cond_6

    .line 144
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elRawNameLine:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elRawNameLine:[I

    .line 148
    :cond_6
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elName:[Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 149
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elName:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elName:[Ljava/lang/String;

    .line 153
    :cond_7
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elPrefix:[Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 154
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elPrefix:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elPrefix:[Ljava/lang/String;

    .line 158
    :cond_8
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elUri:[Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 159
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elUri:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elUri:[Ljava/lang/String;

    .line 163
    :cond_9
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elNamespaceCount:[I

    if-eqz v4, :cond_a

    .line 164
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elNamespaceCount:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->elNamespaceCount:[I

    .line 168
    :cond_a
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeName:[Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 169
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeName:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeName:[Ljava/lang/String;

    .line 173
    :cond_b
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeNameHash:[I

    if-eqz v4, :cond_c

    .line 174
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeNameHash:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeNameHash:[I

    .line 178
    :cond_c
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributePrefix:[Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 179
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributePrefix:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributePrefix:[Ljava/lang/String;

    .line 183
    :cond_d
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeUri:[Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 184
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeUri:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeUri:[Ljava/lang/String;

    .line 188
    :cond_e
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeValue:[Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 189
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeValue:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->attributeValue:[Ljava/lang/String;

    .line 193
    :cond_f
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->namespacePrefix:[Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 194
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->namespacePrefix:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->namespacePrefix:[Ljava/lang/String;

    .line 198
    :cond_10
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->namespacePrefixHash:[I

    if-eqz v4, :cond_11

    .line 199
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->namespacePrefixHash:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->namespacePrefixHash:[I

    .line 203
    :cond_11
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->namespaceUri:[Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 204
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->namespaceUri:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->namespaceUri:[Ljava/lang/String;

    .line 208
    :cond_12
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityName:[Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 209
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityName:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityName:[Ljava/lang/String;

    .line 213
    :cond_13
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityNameBuf:[[C

    if-eqz v4, :cond_14

    .line 214
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityNameBuf:[[C

    invoke-direct {p0, v4}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cloneCCArr([[C)[[C

    move-result-object v4

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityNameBuf:[[C

    .line 218
    :cond_14
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityNameHash:[I

    if-eqz v4, :cond_15

    .line 219
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityNameHash:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityNameHash:[I

    .line 223
    :cond_15
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityReplacementBuf:[[C

    if-eqz v4, :cond_16

    .line 224
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityReplacementBuf:[[C

    invoke-direct {p0, v4}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cloneCCArr([[C)[[C

    move-result-object v4

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityReplacementBuf:[[C

    .line 228
    :cond_16
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityReplacement:[Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 229
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityReplacement:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->entityReplacement:[Ljava/lang/String;

    .line 233
    :cond_17
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->buf:[C

    if-eqz v4, :cond_18

    .line 234
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->buf:[C

    invoke-virtual {v4}, [C->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->buf:[C

    .line 238
    :cond_18
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->pc:[C

    if-eqz v4, :cond_19

    .line 239
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->pc:[C

    invoke-virtual {v4}, [C->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->pc:[C

    .line 243
    :cond_19
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->charRefOneCharBuf:[C

    if-eqz v4, :cond_1a

    .line 244
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->charRefOneCharBuf:[C

    invoke-virtual {v4}, [C->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->charRefOneCharBuf:[C

    .line 247
    :cond_1a
    return-object v0

    .line 103
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/CloneNotSupportedException;

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to call clone() on reader "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->reader:Ljava/io/Reader;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-direct {v2, v4}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, ee:Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2, v1}, Ljava/lang/CloneNotSupportedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 109
    throw v2
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 280
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    .line 283
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected initStringCache()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 289
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    if-nez v0, :cond_1

    .line 299
    const/16 v0, 0xa

    iput v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    .line 300
    iget v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    if-lt v0, v1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    .line 302
    const-string v1, "internal error: threshold must be less than capacity: 13"

    .line 301
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    new-array v0, v1, [[C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    .line 306
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    .line 309
    :cond_1
    return-void
.end method

.method protected newString([CII)Ljava/lang/String;
    .locals 1
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 317
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0, p1, p2, p3}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .locals 8
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v1, 0x0

    .line 334
    iget v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    if-lt v2, v3, :cond_0

    .line 335
    invoke-direct {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->rehash()V

    .line 337
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->fastHash([CII)I

    move-result v2

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v3, v3

    rem-int v6, v2, v3

    .line 338
    .local v6, offset:I
    const/4 v0, 0x0

    check-cast v0, [C

    .line 339
    .local v0, k:[C
    :goto_0
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    aget-object v0, v2, v6

    if-eqz v0, :cond_1

    .line 340
    array-length v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keysAreEqual([CII[CII)Z

    move-result v2

    .line 339
    if-eqz v2, :cond_2

    .line 346
    :cond_1
    if-eqz v0, :cond_3

    .line 347
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    aget-object v7, v1, v6

    .line 355
    :goto_1
    return-object v7

    .line 341
    :cond_2
    add-int/lit8 v2, v6, 0x1

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v3, v3

    rem-int v6, v2, v3

    goto :goto_0

    .line 349
    :cond_3
    new-array v0, p3, [C

    .line 350
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, v:Ljava/lang/String;
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    aput-object v0, v1, v6

    .line 353
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    aput-object v7, v1, v6

    .line 354
    iget v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    goto :goto_1
.end method

.method protected resetStringCache()V
    .locals 0

    .prologue
    .line 408
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->initStringCache()V

    .line 409
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 417
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    iget v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->eventType:I

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 420
    const-string v1, "interning names feature can only be changed before parsing"

    .line 421
    const/4 v2, 0x0

    .line 419
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 423
    :cond_0
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    .line 424
    if-nez p2, :cond_1

    .line 425
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->resetStringCache()V

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/xmlpull/mxp1/MXParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0
.end method
