.class public Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field protected final parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


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
    .line 68
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.EntrySet<TK;TV;>;"
    .local p1, parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    .line 70
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 74
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->clear()V

    .line 75
    return-void
.end method

.method public contains(Ljava/util/Map$Entry;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.EntrySet<TK;TV;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    move-object v0, p1

    .line 79
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v1

    .line 80
    .local v1, match:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.EntrySet<TK;TV;>;"
    const/4 v2, 0x0

    .line 90
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 96
    check-cast v0, Ljava/util/Map$Entry;

    .line 97
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 98
    .local v1, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 104
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method
