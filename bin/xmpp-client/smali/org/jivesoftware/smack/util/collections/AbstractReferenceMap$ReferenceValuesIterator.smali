.class Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValuesIterator;
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
    name = "ReferenceValuesIterator"
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
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V
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
    .line 559
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValuesIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceValuesIterator<TK;TV;>;"
    .local p1, parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    .line 560
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValuesIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceValuesIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValuesIterator;->nextEntry()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
