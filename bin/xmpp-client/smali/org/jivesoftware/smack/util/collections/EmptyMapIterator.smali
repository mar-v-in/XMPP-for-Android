.class public Lorg/jivesoftware/smack/util/collections/EmptyMapIterator;
.super Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;
.source "EmptyMapIterator.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/collections/MapIterator;
.implements Lorg/jivesoftware/smack/util/collections/ResettableIterator;


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smack/util/collections/MapIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/jivesoftware/smack/util/collections/EmptyMapIterator;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/collections/EmptyMapIterator;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/collections/EmptyMapIterator;->INSTANCE:Lorg/jivesoftware/smack/util/collections/MapIterator;

    .line 26
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasNext()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasPrevious()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextIndex()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousIndex()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->reset()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
