.class public abstract Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;
.super Ljava/lang/Object;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "HashIterator"
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
.field protected expectedModCount:I

.field protected hashIndex:I

.field protected last:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected final parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashIterator<TK;TV;>;"
    .local p1, parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    .line 238
    iget-object v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 239
    .local v0, data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    array-length v1, v0

    .line 240
    .local v1, i:I
    const/4 v2, 0x0

    .line 241
    .local v2, next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_0
    if-lez v1, :cond_0

    if-eqz v2, :cond_1

    .line 244
    :cond_0
    iput-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 245
    iput v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 246
    iget v3, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    iput v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->expectedModCount:I

    .line 247
    return-void

    .line 242
    :cond_1
    add-int/lit8 v1, v1, -0x1

    aget-object v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected currentEntry()Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->last:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 254
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected nextEntry()Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashIterator<TK;TV;>;"
    iget-object v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    iget v4, v4, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    iget v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->expectedModCount:I

    if-eq v4, v5, :cond_0

    .line 259
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 261
    :cond_0
    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 262
    .local v3, newCurrent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    if-nez v3, :cond_1

    .line 263
    new-instance v4, Ljava/util/NoSuchElementException;

    .line 264
    const-string v5, "No next() entry in the iteration"

    .line 263
    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 266
    :cond_1
    iget-object v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    iget-object v0, v4, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 267
    .local v0, data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 268
    .local v1, i:I
    iget-object v2, v3, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 269
    .local v2, n:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_0
    if-nez v2, :cond_2

    if-gtz v1, :cond_3

    .line 272
    :cond_2
    iput-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 273
    iput v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->hashIndex:I

    .line 274
    iput-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->last:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 275
    return-object v3

    .line 270
    :cond_3
    add-int/lit8 v1, v1, -0x1

    aget-object v2, v0, v1

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 279
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->last:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 281
    const-string v1, "remove() can only be called once after next()"

    .line 280
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    iget v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    .line 284
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 286
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->last:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->last:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 288
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    iget v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->expectedModCount:I

    .line 289
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->last:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Iterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->last:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->last:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    goto :goto_0
.end method
