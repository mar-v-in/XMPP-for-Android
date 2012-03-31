.class public interface abstract Lorg/apache/harmony/luni/platform/IMemorySpy;
.super Ljava/lang/Object;
.source "IMemorySpy.java"


# virtual methods
.method public abstract alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V
.end method

.method public abstract autoFree(Lorg/apache/harmony/luni/platform/PlatformAddress;)V
.end method

.method public abstract free(Lorg/apache/harmony/luni/platform/PlatformAddress;)Z
.end method

.method public abstract rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method
