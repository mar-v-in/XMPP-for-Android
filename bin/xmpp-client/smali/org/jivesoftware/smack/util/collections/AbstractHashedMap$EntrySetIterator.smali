.class public Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySetIterator;
.super Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;
.source "AbstractHashedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySetIterator"
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
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
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
    .line 115
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySetIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.EntrySetIterator<TK;TV;>;"
    .local p1, parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    .line 116
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySetIterator;->next()Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySetIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.EntrySetIterator<TK;TV;>;"
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;->nextEntry()Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    return-object v0
.end method
