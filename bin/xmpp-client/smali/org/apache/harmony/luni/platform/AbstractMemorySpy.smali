.class abstract Lorg/apache/harmony/luni/platform/AbstractMemorySpy;
.super Ljava/lang/Object;
.source "AbstractMemorySpy.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/IMemorySpy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    }
.end annotation


# instance fields
.field protected memoryInUse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/luni/platform/PlatformAddress;",
            "Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected notifyQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected refToShadow:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/Reference;",
            "Lorg/apache/harmony/luni/platform/PlatformAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->memoryInUse:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->refToShadow:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->notifyQueue:Ljava/lang/ref/ReferenceQueue;

    .line 60
    return-void
.end method


# virtual methods
.method public alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 64
    new-instance v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;-><init>(Lorg/apache/harmony/luni/platform/AbstractMemorySpy;Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    .line 65
    .local v0, wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->memoryInUse:Ljava/util/Map;

    iget-object v2, v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->refToShadow:Ljava/util/Map;

    iget-object v2, v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->wrAddress:Ljava/lang/ref/PhantomReference;

    iget-object v3, v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit p0

    .line 69
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public autoFree(Lorg/apache/harmony/luni/platform/PlatformAddress;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->memoryInUse:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;

    .line 81
    .local v0, wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->autoFree:Z

    .line 87
    :cond_0
    return-void

    .line 81
    .end local v0           #wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public free(Lorg/apache/harmony/luni/platform/PlatformAddress;)Z
    .locals 4
    .parameter "address"

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->memoryInUse:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;

    .line 92
    .local v0, wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-nez v0, :cond_0

    .line 97
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Memory Spy! Fixed attempt to free memory that was not allocated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 92
    .end local v0           #wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 100
    .restart local v0       #wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected orphanedMemory(Ljava/lang/ref/Reference;)V
    .locals 5
    .parameter "ref"

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->refToShadow:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 107
    .local v0, shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;
    iget-object v2, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->memoryInUse:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;

    .line 108
    .local v1, wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    if-eqz v1, :cond_1

    .line 110
    iget-boolean v2, v1, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->autoFree:Z

    if-nez v2, :cond_0

    .line 111
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Memory Spy! Fixed memory leak by freeing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v2, v1, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->free()V

    .line 105
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 118
    return-void

    .line 105
    .end local v0           #shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;
    .end local v1           #wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V
    .locals 0
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 124
    return-void
.end method
