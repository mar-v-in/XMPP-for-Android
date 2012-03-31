.class public Lorg/apache/harmony/luni/util/TwoKeyHashMap;
.super Ljava/util/AbstractMap;
.source "TwoKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,
        Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,
        Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;,
        Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;,
        Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_SIZE:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f


# instance fields
.field private arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private arrSize:I

.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private loadFactor:F

.field private modCount:I

.field private size:I

.field threshold:I

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 309
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(IF)V

    .line 310
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 318
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(IF)V

    .line 319
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .parameter "initialCapacity"
    .parameter "initialLoadFactor"

    .prologue
    .line 328
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->threshold:I

    .line 329
    if-gez p1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialCapacity should be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 334
    const-string v1, "initialLoadFactor should be > 0"

    .line 333
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    iput p2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->loadFactor:F

    .line 337
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_2

    .line 338
    add-int/lit8 p1, p1, -0x1

    .line 340
    :cond_2
    if-lez p1, :cond_3

    .end local p1
    :goto_0
    iput p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    .line 341
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->threshold:I

    .line 342
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 343
    return-void

    .line 340
    .restart local p1
    :cond_3
    const/4 p1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I
    .locals 1
    .parameter

    .prologue
    .line 297
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    return v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .locals 1
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I
    .locals 1
    .parameter

    .prologue
    .line 293
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    return v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/luni/util/TwoKeyHashMap;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    return-void
.end method

.method static synthetic access$4(Lorg/apache/harmony/luni/util/TwoKeyHashMap;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    iput p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    return-void
.end method

.method static synthetic access$5(Lorg/apache/harmony/luni/util/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lorg/apache/harmony/luni/util/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method private final findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .locals 5
    .parameter "key1"
    .parameter "key2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 415
    iget-object v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget v4, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    aget-object v0, v3, v4

    .line 429
    :cond_0
    :goto_0
    return-object v0

    .line 418
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 419
    .local v1, hash:I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    iget v4, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    rem-int v2, v3, v4

    .line 420
    .local v2, index:I
    iget-object v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v3, v2

    .line 422
    .local v0, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_1
    if-nez v0, :cond_2

    .line 429
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    :cond_2
    iget v3, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->hash:I

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 424
    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 427
    :cond_3
    iget-object v0, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_1
.end method

.method private final removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .locals 8
    .parameter "key1"
    .parameter "key2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    const/4 v5, 0x0

    .line 552
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 553
    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    .line 554
    .local v2, index:I
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v6, v6, v2

    if-eqz v6, :cond_0

    .line 555
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v4, v6, v2

    .line 556
    .local v4, ret:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aput-object v5, v6, v2

    .line 557
    iget v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    .line 558
    iget v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    .line 585
    .end local v4           #ret:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v5

    .line 561
    goto :goto_0

    .line 564
    .end local v2           #index:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int v1, v6, v7

    .line 565
    .local v1, hash:I
    const v6, 0x7fffffff

    and-int/2addr v6, v1

    iget v7, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    rem-int v2, v6, v7

    .line 567
    .restart local v2       #index:I
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v6, v2

    .line 568
    .local v0, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    move-object v3, v0

    .line 569
    .local v3, prev:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_1
    if-nez v0, :cond_2

    move-object v4, v5

    .line 585
    goto :goto_0

    .line 570
    :cond_2
    iget v6, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->hash:I

    if-ne v1, v6, :cond_4

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 571
    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 572
    if-ne v3, v0, :cond_3

    .line 573
    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v6, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aput-object v6, v5, v2

    .line 577
    :goto_2
    iget v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    .line 578
    iget v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    move-object v4, v0

    .line 579
    goto :goto_0

    .line 575
    :cond_3
    iget-object v5, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v5, v3, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_2

    .line 582
    :cond_4
    move-object v3, v0

    .line 583
    iget-object v0, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    const/4 v3, 0x0

    .line 350
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    .line 351
    iput v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    .line 352
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 353
    return-void
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 366
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .locals 6
    .parameter "hashCode"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TK;TV;",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;)",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    .local p2, key1:Ljava/lang/Object;,"TE;"
    .local p3, key2:Ljava/lang/Object;,"TK;"
    .local p4, value:Ljava/lang/Object;,"TV;"
    .local p5, next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;)V

    return-object v0
.end method

.method createEntrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;-><init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V

    return-object v0
.end method

.method createValueCollectionIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;-><init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;-><init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->entrySet:Ljava/util/Set;

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key1"
    .parameter "key2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    .line 441
    .local v0, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    if-eqz v0, :cond_0

    .line 442
    iget-object v1, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    .line 444
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 452
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    .local p1, key1:Ljava/lang/Object;,"TE;"
    .local p2, key2:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    const/4 v2, 0x0

    .line 464
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 465
    iget v10, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    .line 466
    .local v10, index:I
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v0, v10

    if-nez v0, :cond_1

    .line 467
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    aput-object v0, v6, v10

    .line 468
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    .line 469
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    .line 499
    :cond_0
    :goto_0
    return-object v2

    .line 472
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v0, v10

    iget-object v11, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    .line 473
    .local v11, oldValue:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v0, v10

    iput-object p3, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    move-object v2, v11

    .line 474
    goto :goto_0

    .line 478
    .end local v10           #index:I
    .end local v11           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v4, v0, v1

    .line 479
    .local v4, hash:I
    const v0, 0x7fffffff

    and-int/2addr v0, v4

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    rem-int v10, v0, v1

    .line 480
    .restart local v10       #index:I
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v9, v0, v10

    .line 482
    .local v9, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_1
    if-nez v9, :cond_3

    .line 492
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v8, v1, v10

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v1

    aput-object v1, v0, v10

    .line 493
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    .line 494
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    .line 496
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->threshold:I

    if-le v0, v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->rehash()V

    goto :goto_0

    .line 483
    :cond_3
    iget v0, v9, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->hash:I

    if-ne v4, v0, :cond_4

    invoke-virtual {v9}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    invoke-virtual {v9}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 485
    iget-object v11, v9, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    .line 486
    .restart local v11       #oldValue:Ljava/lang/Object;,"TV;"
    iput-object p3, v9, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    move-object v2, v11

    .line 487
    goto :goto_0

    .line 489
    .end local v11           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_4
    iget-object v9, v9, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_1
.end method

.method rehash()V
    .locals 9

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    const v8, 0x7fffffff

    .line 508
    iget v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v3, v6, 0x1

    .line 509
    .local v3, newArrSize:I
    if-gez v3, :cond_0

    .line 510
    const v3, 0x7ffffffe

    .line 512
    :cond_0
    add-int/lit8 v6, v3, 0x1

    new-array v2, v6, [Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 514
    .local v2, newArr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_2

    .line 526
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget v7, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    aget-object v6, v6, v7

    aput-object v6, v2, v3

    .line 527
    iput v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    .line 531
    iget v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    if-ne v6, v8, :cond_1

    .line 532
    iget v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->loadFactor:F

    const/high16 v7, 0x4120

    mul-float/2addr v6, v7

    iput v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->loadFactor:F

    .line 534
    :cond_1
    iget v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    int-to-float v6, v6

    iget v7, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->loadFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->threshold:I

    .line 535
    iput-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 536
    return-void

    .line 515
    :cond_2
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v6, v1

    .line 516
    .local v0, entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_1
    if-nez v0, :cond_3

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_3
    iget-object v5, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 519
    .local v5, next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    iget v6, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->hash:I

    and-int/2addr v6, v8

    rem-int v4, v6, v3

    .line 520
    .local v4, newIndex:I
    aget-object v6, v2, v4

    iput-object v6, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 521
    aput-object v0, v2, v4

    .line 523
    move-object v0, v5

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key1"
    .parameter "key2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    .line 547
    .local v0, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 593
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;-><init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values:Ljava/util/Collection;

    .line 604
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values:Ljava/util/Collection;

    return-object v0
.end method
