.class Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;
.super Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values",
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
    .line 533
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceValues<TK;TV;>;"
    .local p1, parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    .line 534
    return-void
.end method


# virtual methods
.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 538
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceValues<TK;TV;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter "arr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceValues<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    .local v0, list:Ljava/util/List;,"Ljava/util/List<TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 548
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 545
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    .line 546
    .local v1, v:Ljava/lang/Object;,"TV;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
