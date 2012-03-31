.class Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;
.super Ljava/lang/Object;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceIteratorBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field entry:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previous:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceIteratorBase<TK;TV;>;"
    .local p1, parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    .line 361
    invoke-virtual {p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->index:I

    .line 364
    iget v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->modCount:I

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->expectedModCount:I

    .line 365
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkMod()V
    .locals 2

    .prologue
    .line 368
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceIteratorBase<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->modCount:I

    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 369
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 371
    :cond_0
    return-void
.end method

.method private nextNull()Z
    .locals 1

    .prologue
    .line 418
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceIteratorBase<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected currentEntry()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceIteratorBase<TK;TV;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->checkMod()V

    .line 375
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->previous:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceIteratorBase<TK;TV;>;"
    const/4 v3, 0x0

    .line 379
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->checkMod()V

    .line 380
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextNull()Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 381
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->entry:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    .line 382
    .local v0, e:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->index:I

    .line 383
    .local v1, i:I
    :goto_2
    if-nez v0, :cond_2

    if-gtz v1, :cond_3

    .line 387
    :cond_2
    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->entry:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    .line 388
    iput v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->index:I

    .line 389
    if-nez v0, :cond_4

    .line 390
    iput-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->currentKey:Ljava/lang/Object;

    .line 391
    iput-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->currentValue:Ljava/lang/Object;

    .line 392
    const/4 v2, 0x0

    goto :goto_1

    .line 384
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 385
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget-object v2, v2, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v0, v2, v1

    .end local v0           #e:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    check-cast v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    .restart local v0       #e:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    goto :goto_2

    .line 394
    :cond_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextKey:Ljava/lang/Object;

    .line 395
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextValue:Ljava/lang/Object;

    .line 396
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextNull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->entry:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->next()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->entry:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    goto :goto_0
.end method

.method protected nextEntry()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceIteratorBase<TK;TV;>;"
    const/4 v1, 0x0

    .line 404
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->checkMod()V

    .line 405
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->entry:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->previous:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    .line 409
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->entry:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->next()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->entry:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    .line 410
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->currentKey:Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->currentValue:Ljava/lang/Object;

    .line 412
    iput-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextKey:Ljava/lang/Object;

    .line 413
    iput-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextValue:Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->previous:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceIteratorBase<TK;TV;>;"
    const/4 v2, 0x0

    .line 422
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->checkMod()V

    .line 423
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->previous:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iput-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->previous:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    .line 428
    iput-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->currentKey:Ljava/lang/Object;

    .line 429
    iput-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->currentValue:Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->modCount:I

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->expectedModCount:I

    .line 431
    return-void
.end method

.method public superNext()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceIteratorBase<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;->nextEntry()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method
