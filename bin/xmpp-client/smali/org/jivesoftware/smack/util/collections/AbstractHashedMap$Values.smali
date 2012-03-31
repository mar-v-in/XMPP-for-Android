.class public Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TV;>;"
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
    .line 416
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.Values<TK;TV;>;"
    .local p1, parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 417
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    .line 418
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 422
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.Values<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->clear()V

    .line 423
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 427
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.Values<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.Values<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->createValuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 437
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.Values<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;->parent:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method
