.class Lorg/jivesoftware/smack/util/Cache$2$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/util/Cache$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smack/util/Cache$CacheObject",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/jivesoftware/smack/util/Cache$2;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/util/Cache$2;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/util/Cache$2$1;->this$1:Lorg/jivesoftware/smack/util/Cache$2;

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iget-object v0, p1, Lorg/jivesoftware/smack/util/Cache$2;->values:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Cache$2$1;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$2$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$2$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;

    iget-object v0, v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$2$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 696
    return-void
.end method
