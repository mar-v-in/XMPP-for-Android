.class Lorg/jivesoftware/smack/util/Cache$2;
.super Ljava/util/AbstractCollection;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/util/Cache;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/util/Cache;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/util/Cache$CacheObject",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/util/Cache;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/util/Cache$2;->this$0:Lorg/jivesoftware/smack/util/Cache;

    .line 675
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 676
    iget-object v0, p1, Lorg/jivesoftware/smack/util/Cache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Cache$2;->values:Ljava/util/Collection;

    return-void
.end method


# virtual methods
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
    .line 680
    new-instance v0, Lorg/jivesoftware/smack/util/Cache$2$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/Cache$2$1;-><init>(Lorg/jivesoftware/smack/util/Cache$2;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$2;->values:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
