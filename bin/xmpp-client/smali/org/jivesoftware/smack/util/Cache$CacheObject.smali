.class Lorg/jivesoftware/smack/util/Cache$CacheObject;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public ageListNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

.field public lastAccessedListNode:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

.field public object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>.CacheObject<TV;>;"
    .local p1, object:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->object:Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 105
    .local p0, this:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>.CacheObject<TV;>;"
    if-ne p0, p1, :cond_0

    .line 106
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    .line 108
    :cond_0
    instance-of v1, p1, Lorg/jivesoftware/smack/util/Cache$CacheObject;

    if-nez v1, :cond_1

    .line 109
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 112
    check-cast v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;

    .line 114
    .local v0, cacheObject:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache$CacheObject<*>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->object:Ljava/lang/Object;

    iget-object v2, v0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->object:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 120
    .local p0, this:Lorg/jivesoftware/smack/util/Cache$CacheObject;,"Lorg/jivesoftware/smack/util/Cache<TK;TV;>.CacheObject<TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$CacheObject;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
