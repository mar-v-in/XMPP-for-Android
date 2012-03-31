.class public Lorg/jivesoftware/smack/util/collections/EmptyIterator;
.super Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;
.source "EmptyIterator.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator",
        "<TE;>;",
        "Lorg/jivesoftware/smack/util/collections/ResettableIterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Ljava/util/Iterator;

.field public static final RESETTABLE_INSTANCE:Lorg/jivesoftware/smack/util/collections/ResettableIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/collections/EmptyIterator;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->RESETTABLE_INSTANCE:Lorg/jivesoftware/smack/util/collections/ResettableIterator;

    .line 46
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->RESETTABLE_INSTANCE:Lorg/jivesoftware/smack/util/collections/ResettableIterator;

    sput-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 32
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    .local p0, this:Lorg/jivesoftware/smack/util/collections/EmptyIterator;,"Lorg/jivesoftware/smack/util/collections/EmptyIterator<TE;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;-><init>()V

    .line 57
    return-void
.end method

.method public static getInstance()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0
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
