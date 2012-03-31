.class public Lorg/apache/harmony/luni/platform/PlatformAddressFactory;
.super Ljava/lang/Object;
.source "PlatformAddressFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alloc(J)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 4
    .parameter "size"

    .prologue
    .line 30
    sget-object v3, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    invoke-interface {v3, p0, p1}, Lorg/apache/harmony/luni/platform/IMemorySystem;->malloc(J)J

    move-result-wide v1

    .line 31
    .local v1, osAddress:J
    invoke-static {v1, v2, p0, p1}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(JJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    .line 32
    .local v0, newMemory:Lorg/apache/harmony/luni/platform/PlatformAddress;
    sget-object v3, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v3, v0}, Lorg/apache/harmony/luni/platform/IMemorySpy;->alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    .line 33
    return-object v0
.end method

.method public static alloc(JB)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 7
    .parameter "size"
    .parameter "init"

    .prologue
    .line 47
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    invoke-interface {v0, p0, p1}, Lorg/apache/harmony/luni/platform/IMemorySystem;->malloc(J)J

    move-result-wide v1

    .line 48
    .local v1, osAddress:J
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    move v3, p2

    move-wide v4, p0

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IMemorySystem;->memset(JBJ)V

    .line 49
    invoke-static {v1, v2, p0, p1}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(JJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v6

    .line 50
    .local v6, newMemory:Lorg/apache/harmony/luni/platform/PlatformAddress;
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v0, v6}, Lorg/apache/harmony/luni/platform/IMemorySpy;->alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    .line 51
    return-object v6
.end method

.method public static allocMap(JJJI)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 13
    .parameter "fd"
    .parameter "start"
    .parameter "size"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    .line 59
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->mapOn(JJ)Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    move-result-object v10

    .line 65
    :goto_0
    return-object v10

    .line 61
    :cond_0
    sget-object v2, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    move-wide v3, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lorg/apache/harmony/luni/platform/IMemorySystem;->mmap(JJJI)J

    move-result-wide v11

    .line 63
    .local v11, osAddress:J
    move-wide/from16 v0, p4

    invoke-static {v11, v12, v0, v1}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->mapOn(JJ)Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    move-result-object v10

    .line 64
    .local v10, newMemory:Lorg/apache/harmony/luni/platform/PlatformAddress;
    sget-object v2, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v2, v10}, Lorg/apache/harmony/luni/platform/IMemorySpy;->alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    goto :goto_0
.end method

.method public static mapOn(JJ)Lorg/apache/harmony/luni/platform/MappedPlatformAddress;
    .locals 1
    .parameter "value"
    .parameter "size"

    .prologue
    .line 69
    new-instance v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;-><init>(JJ)V

    .line 71
    .local v0, addr:Lorg/apache/harmony/luni/platform/MappedPlatformAddress;
    return-object v0
.end method

.method public static on(J)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 2
    .parameter "value"

    .prologue
    .line 75
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(JJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public static on(JJ)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 3
    .parameter "value"
    .parameter "size"

    .prologue
    .line 79
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->NULL:Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 81
    .local v0, addr:Lorg/apache/harmony/luni/platform/PlatformAddress;
    :goto_0
    return-object v0

    .line 80
    .end local v0           #addr:Lorg/apache/harmony/luni/platform/PlatformAddress;
    :cond_0
    new-instance v0, Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/PlatformAddress;-><init>(JJ)V

    goto :goto_0
.end method
