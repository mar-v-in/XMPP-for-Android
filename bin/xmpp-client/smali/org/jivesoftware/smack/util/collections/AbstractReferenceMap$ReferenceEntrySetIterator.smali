.class Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;
.super Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;
.source "AbstractReferenceMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceEntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntrySetIterator<TK;TV;>;"
    .local p1, abstractReferenceMap:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    .line 324
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;->next()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntrySetIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;->superNext()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method
