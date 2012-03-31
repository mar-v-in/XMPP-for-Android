.class public Lorg/apache/harmony/luni/platform/PlatformAddress;
.super Ljava/lang/Object;
.source "PlatformAddress.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/ICommonDataTypes;
.implements Ljava/lang/Comparable;


# static fields
.field public static final INVALID:Lorg/apache/harmony/luni/platform/PlatformAddress; = null

.field public static final NULL:Lorg/apache/harmony/luni/platform/PlatformAddress; = null

#the value of this static final field might be set in the static constructor
.field static final SIZEOF:I = 0x0

.field static final UNKNOWN:J = -0x1L

.field public static final memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

.field static final osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;


# instance fields
.field final osaddr:J

.field final size:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, -0x1

    .line 33
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getMemorySystem()Lorg/apache/harmony/luni/platform/IMemorySystem;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getPointerSize()I

    move-result v0

    sput v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->SIZEOF:I

    .line 38
    new-instance v0, Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-direct {v0, v3, v4, v3, v4}, Lorg/apache/harmony/luni/platform/PlatformAddress;-><init>(JJ)V

    sput-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->NULL:Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 44
    new-instance v0, Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;-><init>(JJ)V

    sput-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->INVALID:Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 47
    new-instance v0, Lorg/apache/harmony/luni/platform/RuntimeMemorySpy;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/RuntimeMemorySpy;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    .line 49
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getMemorySystem()Lorg/apache/harmony/luni/platform/IMemorySystem;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    .line 23
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0
    .parameter "address"
    .parameter "size"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    .line 58
    iput-wide p3, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    .line 59
    return-void
.end method


# virtual methods
.method public final autoFree()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v0, p0}, Lorg/apache/harmony/luni/platform/IMemorySpy;->autoFree(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    .line 70
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 77
    :cond_0
    instance-of v2, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;

    if-eqz v2, :cond_3

    .line 78
    check-cast p1, Lorg/apache/harmony/luni/platform/PlatformAddress;

    .end local p1
    iget-wide v0, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    .line 79
    .local v0, otherPA:J
    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 80
    const/4 v2, 0x0

    .line 82
    :goto_0
    return v2

    :cond_1
    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 85
    .end local v0           #otherPA:J
    .restart local p1
    :cond_3
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2
.end method

.method public duplicate()Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 4

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(JJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    .line 94
    instance-of v0, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Lorg/apache/harmony/luni/platform/PlatformAddress;

    .end local p1
    iget-wide v0, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 94
    goto :goto_0
.end method

.method public free()V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v0, p0}, Lorg/apache/harmony/luni/platform/IMemorySpy;->free(Lorg/apache/harmony/luni/platform/PlatformAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->free(J)V

    .line 104
    :cond_0
    return-void
.end method

.method public final getAddress(I)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 3
    .parameter "offset"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getInt(I)I

    move-result v0

    .line 108
    .local v0, addr:I
    int-to-long v1, v0

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(J)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    return-object v1
.end method

.method public final getByte(I)B
    .locals 5
    .parameter "offset"

    .prologue
    .line 112
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 113
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getByte(J)B

    move-result v0

    return v0
.end method

.method public final getByteArray(I[BII)V
    .locals 6
    .parameter "offset"
    .parameter "bytes"
    .parameter "bytesOffset"
    .parameter "length"

    .prologue
    .line 118
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    mul-int/lit8 v1, p4, 0x1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 119
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getByteArray(J[BII)V

    .line 120
    return-void
.end method

.method public final getDouble(I)D
    .locals 5
    .parameter "offset"

    .prologue
    .line 123
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 124
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(ILorg/apache/harmony/luni/platform/Endianness;)D
    .locals 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 128
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 129
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getDouble(JLorg/apache/harmony/luni/platform/Endianness;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat(I)F
    .locals 5
    .parameter "offset"

    .prologue
    .line 133
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 134
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public final getFloat(ILorg/apache/harmony/luni/platform/Endianness;)F
    .locals 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 138
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 139
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getFloat(JLorg/apache/harmony/luni/platform/Endianness;)F

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .locals 5
    .parameter "offset"

    .prologue
    .line 143
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 144
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getInt(J)I

    move-result v0

    return v0
.end method

.method public final getInt(ILorg/apache/harmony/luni/platform/Endianness;)I
    .locals 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 148
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 149
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getInt(JLorg/apache/harmony/luni/platform/Endianness;)I

    move-result v0

    return v0
.end method

.method public final getLong(I)J
    .locals 5
    .parameter "offset"

    .prologue
    .line 153
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 154
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(ILorg/apache/harmony/luni/platform/Endianness;)J
    .locals 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 158
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 159
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getLong(JLorg/apache/harmony/luni/platform/Endianness;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort(I)S
    .locals 5
    .parameter "offset"

    .prologue
    .line 163
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x2

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 164
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getShort(J)S

    move-result v0

    return v0
.end method

.method public final getShort(ILorg/apache/harmony/luni/platform/Endianness;)S
    .locals 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 168
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x2

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 169
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getShort(JLorg/apache/harmony/luni/platform/Endianness;)S

    move-result v0

    return v0
.end method

.method public final getSize()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    long-to-int v0, v0

    return v0
.end method

.method public final isNULL()Z
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->NULL:Lorg/apache/harmony/luni/platform/PlatformAddress;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final moveTo(Lorg/apache/harmony/luni/platform/PlatformAddress;J)V
    .locals 7
    .parameter "dest"
    .parameter "numBytes"

    .prologue
    .line 186
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    iget-wide v3, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/IMemorySystem;->memmove(JJJ)V

    .line 187
    return-void
.end method

.method public offsetBytes(I)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 6
    .parameter "offset"

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(JJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public offsetBytes(J)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .locals 4
    .parameter "offset"

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(JJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public final setAddress(ILorg/apache/harmony/luni/platform/PlatformAddress;)V
    .locals 5
    .parameter "offset"
    .parameter "address"

    .prologue
    .line 198
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iget-wide v3, p2, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setAddress(JJ)V

    .line 199
    return-void
.end method

.method public final setByte(IB)V
    .locals 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 202
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 203
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setByte(JB)V

    .line 204
    return-void
.end method

.method public final setByteArray(I[BII)V
    .locals 6
    .parameter "offset"
    .parameter "bytes"
    .parameter "bytesOffset"
    .parameter "length"

    .prologue
    .line 208
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    mul-int/lit8 v1, p4, 0x1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 209
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setByteArray(J[BII)V

    .line 210
    return-void
.end method

.method public final setDouble(ID)V
    .locals 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 213
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 214
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setDouble(JD)V

    .line 215
    return-void
.end method

.method public final setDouble(IDLorg/apache/harmony/luni/platform/Endianness;)V
    .locals 6
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 218
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 219
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setDouble(JDLorg/apache/harmony/luni/platform/Endianness;)V

    .line 220
    return-void
.end method

.method public final setFloat(IF)V
    .locals 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 223
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 224
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setFloat(JF)V

    .line 225
    return-void
.end method

.method public final setFloat(IFLorg/apache/harmony/luni/platform/Endianness;)V
    .locals 5
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 228
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 229
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setFloat(JFLorg/apache/harmony/luni/platform/Endianness;)V

    .line 230
    return-void
.end method

.method public final setInt(II)V
    .locals 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 233
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 234
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setInt(JI)V

    .line 235
    return-void
.end method

.method public final setInt(IILorg/apache/harmony/luni/platform/Endianness;)V
    .locals 5
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 238
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 239
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setInt(JILorg/apache/harmony/luni/platform/Endianness;)V

    .line 240
    return-void
.end method

.method public final setLong(IJ)V
    .locals 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 243
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 244
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setLong(JJ)V

    .line 245
    return-void
.end method

.method public final setLong(IJLorg/apache/harmony/luni/platform/Endianness;)V
    .locals 6
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 248
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 249
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setLong(JJLorg/apache/harmony/luni/platform/Endianness;)V

    .line 250
    return-void
.end method

.method public final setShort(IS)V
    .locals 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 253
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x2

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 254
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setShort(JS)V

    .line 255
    return-void
.end method

.method public final setShort(ISLorg/apache/harmony/luni/platform/Endianness;)V
    .locals 5
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 258
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x2

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 259
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setShort(JSLorg/apache/harmony/luni/platform/Endianness;)V

    .line 260
    return-void
.end method

.method public final toLong()J
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlatformAddress["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
