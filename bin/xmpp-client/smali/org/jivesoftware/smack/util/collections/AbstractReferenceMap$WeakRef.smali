.class Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$WeakRef;
.super Ljava/lang/ref/WeakReference;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final hash:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .parameter "hash"
    .parameter
    .parameter "q"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/ref/ReferenceQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$WeakRef;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.WeakRef<TT;>;"
    .local p2, r:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 599
    iput p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$WeakRef;->hash:I

    .line 600
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .prologue
    .line 604
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$WeakRef;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.WeakRef<TT;>;"
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$WeakRef;->hash:I

    return v0
.end method
