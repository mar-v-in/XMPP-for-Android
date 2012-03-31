.class public Lorg/jivesoftware/smack/util/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/Cache$CacheObject;,
        Lorg/jivesoftware/smack/util/Cache$LinkedList;,
        Lorg/jivesoftware/smack/util/Cache$LinkedListNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected ageList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

.field protected cacheHits:J

.field protected cacheMisses:J

.field protected lastAccessedList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

.field protected map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lorg/jivesoftware/smack/util/Cache$CacheObject",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field protected maxCacheSize:I

.field protected maxLifetime:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .parameter "maxSize"
    .parameter "maxLifetime"

    .prologue
    .line 343
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jivesoftware/smack/util/Cache;->cacheMisses:J

    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max cache size cannot be 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iput p1, p0, Lorg/jivesoftware/smack/util/Cache;->maxCacheSize:I

    .line 348
    iput-wide p2, p0, Lorg/jivesoftware/smack/util/Cache;->maxLifetime:J

    .line 352
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    .line 354
    new-instance v0, Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/Cache$LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Cache;->lastAccessedList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    .line 355
    new-instance v0, Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/Cache$LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Cache;->ageList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    .line 356
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 360
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 361
    .local v1, keys:[Ljava/lang/Object;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 366
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 367
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache;->lastAccessedList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->clear()V

    .line 368
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache;->ageList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->clear()V

    .line 370
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/jivesoftware/smack/util/Cache;->cacheHits:J

    .line 371
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/jivesoftware/smack/util/Cache;->cacheMisses:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 361
    :cond_0
    :try_start_1
    aget-object v0, v1, v2

    .line 362
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v0           #key:Ljava/lang/Object;
    .end local v1           #keys:[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 378
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->deleteExpiredEntries()V

    .line 380
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 387
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->deleteExpiredEntries()V

    .line 390
    new-instance v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/util/Cache$CacheObject;-><init>(Ljava/lang/Object;)V

    .line 392
    .local v0, cacheObject:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache$CacheObject<TV;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 387
    .end local v0           #cacheObject:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache$CacheObject<TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized cullCache()V
    .locals 6

    .prologue
    .line 402
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/jivesoftware/smack/util/Cache;->maxCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_1

    .line 428
    :cond_0
    monitor-exit p0

    return-void

    .line 408
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget v3, p0, Lorg/jivesoftware/smack/util/Cache;->maxCacheSize:I

    if-le v2, v3, :cond_0

    .line 410
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->deleteExpiredEntries()V

    .line 414
    iget v2, p0, Lorg/jivesoftware/smack/util/Cache;->maxCacheSize:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 415
    .local v0, desiredSize:I
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 417
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache;->lastAccessedList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->getLast()Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    move-result-object v2

    iget-object v2, v2, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->object:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smack/util/Cache;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 418
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error attempting to cullCache with remove("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    iget-object v4, p0, Lorg/jivesoftware/smack/util/Cache;->lastAccessedList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->getLast()Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    move-result-object v4

    iget-object v4, v4, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->object:Ljava/lang/Object;

    .line 421
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 422
    const-string v4, ") - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 423
    const-string v4, "cacheObject not found in cache!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 419
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache;->lastAccessedList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->getLast()Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 402
    .end local v0           #desiredSize:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized deleteExpiredEntries()V
    .locals 7

    .prologue
    .line 436
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-wide v3, p0, Lorg/jivesoftware/smack/util/Cache;->maxLifetime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 471
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 444
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Cache;->ageList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->getLast()Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    move-result-object v2

    .line 446
    .local v2, node:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    if-eqz v2, :cond_0

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/jivesoftware/smack/util/Cache;->maxLifetime:J

    sub-long v0, v3, v5

    .line 455
    .local v0, expireTime:J
    :cond_2
    iget-wide v3, v2, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->timestamp:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 456
    iget-object v3, v2, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->object:Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/jivesoftware/smack/util/Cache;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 457
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error attempting to remove("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    iget-object v5, v2, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->object:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 459
    const-string v5, ") - cacheObject not found in cache!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->remove()V

    .line 465
    :cond_3
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Cache;->ageList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->getLast()Lorg/jivesoftware/smack/util/Cache$LinkedListNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 467
    if-nez v2, :cond_2

    goto :goto_0

    .line 436
    .end local v0           #expireTime:J
    .end local v2           #node:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->deleteExpiredEntries()V

    .line 482
    new-instance v0, Lorg/jivesoftware/smack/util/Cache$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/Cache$1;-><init>(Lorg/jivesoftware/smack/util/Cache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    const-wide/16 v3, 0x1

    .line 529
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->deleteExpiredEntries()V

    .line 531
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;

    .line 532
    .local v0, cacheObject:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache$CacheObject<TV;>;"
    if-nez v0, :cond_0

    .line 534
    iget-wide v1, p0, Lorg/jivesoftware/smack/util/Cache;->cacheMisses:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jivesoftware/smack/util/Cache;->cacheMisses:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    const/4 v1, 0x0

    .line 545
    :goto_0
    monitor-exit p0

    return-object v1

    .line 539
    :cond_0
    :try_start_1
    iget-object v1, v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->lastAccessedListNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->remove()V

    .line 540
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache;->lastAccessedList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    iget-object v2, v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->lastAccessedListNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->addFirst(Lorg/jivesoftware/smack/util/Cache$LinkedListNode;)Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 544
    iget-wide v1, p0, Lorg/jivesoftware/smack/util/Cache;->cacheHits:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jivesoftware/smack/util/Cache;->cacheHits:J

    .line 545
    iget-object v1, v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->object:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 529
    .end local v0           #cacheObject:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache$CacheObject<TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCacheHits()J
    .locals 2

    .prologue
    .line 549
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    iget-wide v0, p0, Lorg/jivesoftware/smack/util/Cache;->cacheHits:J

    return-wide v0
.end method

.method public getCacheMisses()J
    .locals 2

    .prologue
    .line 553
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    iget-wide v0, p0, Lorg/jivesoftware/smack/util/Cache;->cacheMisses:J

    return-wide v0
.end method

.method public getMaxCacheSize()I
    .locals 1

    .prologue
    .line 557
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    iget v0, p0, Lorg/jivesoftware/smack/util/Cache;->maxCacheSize:I

    return v0
.end method

.method public getMaxLifetime()J
    .locals 2

    .prologue
    .line 561
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    iget-wide v0, p0, Lorg/jivesoftware/smack/util/Cache;->maxLifetime:J

    return-wide v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 568
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->deleteExpiredEntries()V

    .line 570
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->deleteExpiredEntries()V

    .line 579
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    const/4 v2, 0x0

    .line 586
    .local v2, oldValue:Ljava/lang/Object;,"TV;"
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/jivesoftware/smack/util/Cache;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 590
    .end local v2           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/util/Cache$CacheObject;

    invoke-direct {v1, p2}, Lorg/jivesoftware/smack/util/Cache$CacheObject;-><init>(Ljava/lang/Object;)V

    .line 591
    .local v1, cacheObject:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache$CacheObject<TV;>;"
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Cache;->lastAccessedList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->addFirst(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    move-result-object v3

    iput-object v3, v1, Lorg/jivesoftware/smack/util/Cache$CacheObject;->lastAccessedListNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 597
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Cache;->ageList:Lorg/jivesoftware/smack/util/Cache$LinkedList;

    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/util/Cache$LinkedList;->addFirst(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    move-result-object v0

    .line 598
    .local v0, ageNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->timestamp:J

    .line 599
    iput-object v0, v1, Lorg/jivesoftware/smack/util/Cache$CacheObject;->ageListNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 603
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->cullCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-object v2

    .line 584
    .end local v0           #ageNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    .end local v1           #cacheObject:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache$CacheObject<TV;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 621
    return-void

    .line 610
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 611
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 615
    .local v1, value:Ljava/lang/Object;,"TV;"
    instance-of v3, v1, Lorg/jivesoftware/smack/util/Cache$CacheObject;

    if-eqz v3, :cond_1

    .line 617
    check-cast v1, Lorg/jivesoftware/smack/util/Cache$CacheObject;

    .end local v1           #value:Ljava/lang/Object;,"TV;"
    iget-object v1, v1, Lorg/jivesoftware/smack/util/Cache$CacheObject;->object:Ljava/lang/Object;

    .line 619
    .restart local v1       #value:Ljava/lang/Object;,"TV;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/jivesoftware/smack/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/Cache;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "internal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    const/4 v1, 0x0

    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    .local v0, cacheObject:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache$CacheObject<TV;>;"
    if-nez v0, :cond_0

    .line 646
    :goto_0
    monitor-exit p0

    return-object v1

    .line 640
    :cond_0
    :try_start_1
    iget-object v1, v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->lastAccessedListNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->remove()V

    .line 641
    iget-object v1, v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->ageListNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->remove()V

    .line 643
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->ageListNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 644
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->lastAccessedListNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 646
    iget-object v1, v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->object:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 634
    .end local v0           #cacheObject:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache$CacheObject<TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMaxCacheSize(I)V
    .locals 1
    .parameter "maxCacheSize"

    .prologue
    .line 650
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/jivesoftware/smack/util/Cache;->maxCacheSize:I

    .line 653
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->cullCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    monitor-exit p0

    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxLifetime(J)V
    .locals 0
    .parameter "maxLifetime"

    .prologue
    .line 657
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    iput-wide p1, p0, Lorg/jivesoftware/smack/util/Cache;->maxLifetime:J

    .line 658
    return-void
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 664
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->deleteExpiredEntries()V

    .line 666
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, this:Lorg/jivesoftware/smack/util/Cache;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Cache;->deleteExpiredEntries()V

    .line 675
    new-instance v0, Lorg/jivesoftware/smack/util/Cache$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/Cache$2;-><init>(Lorg/jivesoftware/smack/util/Cache;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
