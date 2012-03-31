.class Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySetIterator;
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
    name = "ReferenceKeySetIterator"
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
        "<TK;>;"
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
    .line 471
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySetIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceKeySetIterator<TK;TV;>;"
    .local p1, parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    .line 472
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySetIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceKeySetIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySetIterator;->nextEntry()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
