.class final Lorg/apache/harmony/luni/platform/RuntimeMemorySpy;
.super Lorg/apache/harmony/luni/platform/AbstractMemorySpy;
.source "RuntimeMemorySpy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 30
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/RuntimeMemorySpy;->notifyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 31
    .local v0, ref:Ljava/lang/ref/Reference;
    :goto_0
    if-nez v0, :cond_0

    .line 36
    invoke-super {p0, p1}, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    .line 37
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/platform/RuntimeMemorySpy;->orphanedMemory(Ljava/lang/ref/Reference;)V

    .line 33
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/RuntimeMemorySpy;->notifyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0
.end method
