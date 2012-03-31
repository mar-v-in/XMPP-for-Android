.class abstract Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;
.super Ljava/lang/Object;
.source "AbstractEmptyIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    .local p1, obj:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 39
    const-string v1, "add() not supported for empty Iterator"

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 71
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 75
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 80
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    .local p1, obj:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;,"Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
