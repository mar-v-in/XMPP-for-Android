.class public Lorg/apache/harmony/luni/platform/MappedPlatformAddress;
.super Lorg/apache/harmony/luni/platform/PlatformAddress;
.source "MappedPlatformAddress.java"


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .parameter "address"
    .parameter "size"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/PlatformAddress;-><init>(JJ)V

    .line 22
    return-void
.end method


# virtual methods
.method public duplicate()Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 4

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:J

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->mapOn(JJ)Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public final free()V
    .locals 5

    .prologue
    .line 31
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v0, p0}, Lorg/apache/harmony/luni/platform/IMemorySpy;->free(Lorg/apache/harmony/luni/platform/PlatformAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:J

    iget-wide v3, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/IMemorySystem;->unmap(JJ)V

    .line 34
    :cond_0
    return-void
.end method

.method public final mmapFlush()V
    .locals 5

    .prologue
    .line 37
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 38
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:J

    iget-wide v3, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/IMemorySystem;->flush(JJ)V

    .line 39
    return-void
.end method

.method public final mmapIsLoaded()Z
    .locals 5

    .prologue
    .line 42
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 43
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:J

    iget-wide v3, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/IMemorySystem;->isLoaded(JJ)Z

    move-result v0

    return v0
.end method

.method public final mmapLoad()V
    .locals 5

    .prologue
    .line 47
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 48
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:J

    iget-wide v3, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/IMemorySystem;->load(JJ)V

    .line 49
    return-void
.end method

.method public final offsetBytes(I)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 6
    .parameter "offset"

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->mapOn(JJ)Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public final offsetBytes(J)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 4
    .parameter "offset"

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->mapOn(JJ)Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    move-result-object v0

    return-object v0
.end method
