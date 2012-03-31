.class Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;
.super Ljava/lang/Object;
.source "ModelUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final _i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ListIterator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, this:Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;,"Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator<TK;>;"
    .local p1, i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    .line 288
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 295
    .local p0, this:Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;,"Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator<TK;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, this:Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;,"Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator<TK;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 305
    .local p0, this:Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;,"Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator<TK;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;->_i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 306
    return-void
.end method
