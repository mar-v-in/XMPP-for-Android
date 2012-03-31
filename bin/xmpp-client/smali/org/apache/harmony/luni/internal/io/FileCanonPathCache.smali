.class public Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;
.super Ljava/lang/Object;
.source "FileCanonPathCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x100

.field private static cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;",
            ">;"
        }
    .end annotation
.end field

.field private static list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lock:Ljava/lang/Object;

.field private static timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 48
    const/16 v1, 0x100

    .line 47
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->cache:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->list:Ljava/util/LinkedList;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->lock:Ljava/lang/Object;

    .line 60
    const-wide/32 v0, 0x927c0

    sput-wide v0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->timeout:J

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 66
    sget-object v1, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    sget-object v0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 66
    monitor-exit v1

    .line 70
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, element:Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;
    sget-object v7, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 83
    :try_start_0
    sget-object v5, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;

    move-object v1, v0

    .line 82
    monitor-exit v7

    .line 86
    if-nez v1, :cond_0

    move-object v5, v6

    .line 105
    :goto_0
    return-object v5

    .line 82
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 91
    .local v3, time:J
    iget-wide v7, v1, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;->timestamp:J

    sub-long v7, v3, v7

    sget-wide v9, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->timeout:J

    cmp-long v5, v7, v9

    if-lez v5, :cond_3

    .line 93
    sget-object v7, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 94
    :try_start_1
    sget-object v5, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, oldest:Ljava/lang/String;
    :cond_1
    sget-object v5, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #oldest:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 98
    .restart local v2       #oldest:Ljava/lang/String;
    sget-object v5, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 96
    if-eqz v5, :cond_1

    .line 93
    .end local v2           #oldest:Ljava/lang/String;
    :cond_2
    monitor-exit v7

    move-object v5, v6

    .line 102
    goto :goto_0

    .line 93
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 105
    :cond_3
    iget-object v5, v1, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;->canonicalPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTimeout()J
    .locals 2

    .prologue
    .line 109
    sget-wide v0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->timeout:J

    return-wide v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "canonicalPath"

    .prologue
    .line 121
    new-instance v0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, element:Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;
    sget-object v3, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    :try_start_0
    sget-object v2, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v4, 0x100

    if-lt v2, v4, :cond_0

    .line 125
    sget-object v2, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .local v1, oldest:Ljava/lang/String;
    sget-object v2, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v1           #oldest:Ljava/lang/String;
    :cond_0
    sget-object v2, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v2, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 122
    monitor-exit v3

    .line 131
    return-void

    .line 122
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static setTimeout(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 134
    sput-wide p0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;->timeout:J

    .line 135
    return-void
.end method
