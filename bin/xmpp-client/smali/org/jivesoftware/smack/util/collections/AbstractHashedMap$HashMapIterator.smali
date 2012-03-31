.class public Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;
.super Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;
.source "AbstractHashedMap.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/collections/MapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HashMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator",
        "<TK;TV;>;",
        "Lorg/jivesoftware/smack/util/collections/MapIterator",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashMapIterator<TK;TV;>;"
    .local p1, parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    .line 310
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashMapIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 315
    .local v0, current:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 316
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 317
    const-string v2, "getKey() can only be called after next() and before remove()"

    .line 316
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashMapIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 325
    .local v0, current:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 326
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 327
    const-string v2, "getValue() can only be called after next() and before remove()"

    .line 326
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashMapIterator<TK;TV;>;"
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->nextEntry()Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashMapIterator<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 340
    .local v0, current:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 341
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 342
    const-string v2, "setValue() can only be called after next() and before remove()"

    .line 341
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
