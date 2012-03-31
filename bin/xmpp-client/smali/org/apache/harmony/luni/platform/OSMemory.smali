.class final Lorg/apache/harmony/luni/platform/OSMemory;
.super Ljava/lang/Object;
.source "OSMemory.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/IMemorySystem;


# static fields
.field public static final NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

.field public static final POINTER_SIZE:I

.field private static final singleton:Lorg/apache/harmony/luni/platform/OSMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lorg/apache/harmony/luni/platform/OSMemory;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/OSMemory;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->singleton:Lorg/apache/harmony/luni/platform/OSMemory;

    .line 57
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSMemory;->getPointerSizeImpl()I

    move-result v0

    sput v0, Lorg/apache/harmony/luni/platform/OSMemory;->POINTER_SIZE:I

    .line 59
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSMemory;->isLittleEndianImpl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lorg/apache/harmony/luni/platform/Endianness;->LITTLE_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    sput-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    .line 40
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    sput-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private native flushImpl(JJ)I
.end method

.method public static getOSMemory()Lorg/apache/harmony/luni/platform/OSMemory;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->singleton:Lorg/apache/harmony/luni/platform/OSMemory;

    return-object v0
.end method

.method private static native getPointerSizeImpl()I
.end method

.method private static native isLittleEndianImpl()Z
.end method

.method private native isLoadedImpl(JJ)Z
.end method

.method private native loadImpl(JJ)I
.end method

.method private native mmapImpl(JJJI)J
.end method

.method private swap(I)I
    .locals 6
    .parameter "value"

    .prologue
    .line 607
    shr-int/lit8 v4, p1, 0x10

    int-to-short v1, v4

    .line 608
    .local v1, left:S
    int-to-short v2, p1

    .line 609
    .local v2, right:S
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(S)S

    move-result v4

    shl-int/lit8 v3, v4, 0x10

    .line 610
    .local v3, topEnd:I
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(S)S

    move-result v4

    const v5, 0xffff

    and-int v0, v4, v5

    .line 611
    .local v0, btmEnd:I
    or-int v4, v3, v0

    return v4
.end method

.method private swap(J)J
    .locals 10
    .parameter "value"

    .prologue
    const/16 v8, 0x20

    .line 615
    shr-long v6, p1, v8

    long-to-int v2, v6

    .line 616
    .local v2, left:I
    long-to-int v3, p1

    .line 617
    .local v3, right:I
    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v6

    int-to-long v6, v6

    shl-long v4, v6, v8

    .line 618
    .local v4, topEnd:J
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long v0, v6, v8

    .line 619
    .local v0, btmEnd:J
    or-long v6, v4, v0

    return-wide v6
.end method

.method private swap(S)S
    .locals 3
    .parameter "value"

    .prologue
    .line 626
    shl-int/lit8 v1, p1, 0x8

    .line 627
    .local v1, topEnd:I
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v0, v2, 0xff

    .line 628
    .local v0, btmEnd:I
    or-int v2, v1, v0

    int-to-short v2, v2

    return v2
.end method

.method private native unmapImpl(JJ)V
.end method


# virtual methods
.method public flush(JJ)V
    .locals 0
    .parameter "addr"
    .parameter "size"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSMemory;->flushImpl(JJ)I

    .line 98
    return-void
.end method

.method public native free(J)V
.end method

.method public native getAddress(J)J
.end method

.method public native getByte(J)B
.end method

.method public native getByteArray(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public native getDouble(J)D
.end method

.method public getDouble(JLorg/apache/harmony/luni/platform/Endianness;)D
    .locals 4
    .parameter "address"
    .parameter "endianness"

    .prologue
    .line 195
    sget-object v2, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p3, v2, :cond_0

    .line 196
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->getDouble(J)D

    move-result-wide v2

    .line 199
    :goto_0
    return-wide v2

    .line 198
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->getLong(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(J)J

    move-result-wide v0

    .line 199
    .local v0, doubleBits:J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    goto :goto_0
.end method

.method public native getFloat(J)F
.end method

.method public getFloat(JLorg/apache/harmony/luni/platform/Endianness;)F
    .locals 2
    .parameter "address"
    .parameter "endianness"

    .prologue
    .line 222
    sget-object v1, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p3, v1, :cond_0

    .line 223
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->getFloat(J)F

    move-result v1

    .line 226
    :goto_0
    return v1

    .line 225
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->getInt(J)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v0

    .line 226
    .local v0, floatBits:I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    goto :goto_0
.end method

.method public native getInt(J)I
.end method

.method public getInt(JLorg/apache/harmony/luni/platform/Endianness;)I
    .locals 1
    .parameter "address"
    .parameter "endianness"

    .prologue
    .line 247
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->getInt(J)I

    move-result v0

    :goto_0
    return v0

    .line 248
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->getInt(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v0

    goto :goto_0
.end method

.method public native getLong(J)J
.end method

.method public getLong(JLorg/apache/harmony/luni/platform/Endianness;)J
    .locals 2
    .parameter "address"
    .parameter "endianness"

    .prologue
    .line 269
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->getLong(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 270
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->getLong(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNativeOrder()Lorg/apache/harmony/luni/platform/Endianness;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    return-object v0
.end method

.method public getPointerSize()I
    .locals 1

    .prologue
    .line 284
    sget v0, Lorg/apache/harmony/luni/platform/OSMemory;->POINTER_SIZE:I

    return v0
.end method

.method public native getShort(J)S
.end method

.method public getShort(JLorg/apache/harmony/luni/platform/Endianness;)S
    .locals 1
    .parameter "address"
    .parameter "endianness"

    .prologue
    .line 305
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->getShort(J)S

    move-result v0

    :goto_0
    return v0

    .line 306
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->getShort(J)S

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(S)S

    move-result v0

    goto :goto_0
.end method

.method public isLittleEndian()Z
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    sget-object v1, Lorg/apache/harmony/luni/platform/Endianness;->LITTLE_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded(JJ)Z
    .locals 2
    .parameter "addr"
    .parameter "size"

    .prologue
    .line 322
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSMemory;->isLoadedImpl(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public load(JJ)V
    .locals 0
    .parameter "addr"
    .parameter "size"

    .prologue
    .line 329
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSMemory;->loadImpl(JJ)I

    .line 330
    return-void
.end method

.method public native malloc(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method public native memmove(JJJ)V
.end method

.method public native memset(JBJ)V
.end method

.method public mmap(JJJI)J
    .locals 2
    .parameter "fileDescriptor"
    .parameter "alignment"
    .parameter "size"
    .parameter "mapMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct/range {p0 .. p7}, Lorg/apache/harmony/luni/platform/OSMemory;->mmapImpl(JJJI)J

    move-result-wide v0

    .line 398
    .local v0, address:J
    return-wide v0
.end method

.method public native setAddress(JJ)V
.end method

.method public native setByte(JB)V
.end method

.method public native setByteArray(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public native setDouble(JD)V
.end method

.method public setDouble(JDLorg/apache/harmony/luni/platform/Endianness;)V
    .locals 4
    .parameter "address"
    .parameter "value"
    .parameter "endianness"

    .prologue
    .line 491
    sget-object v2, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p5, v2, :cond_0

    .line 492
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSMemory;->setDouble(JD)V

    .line 497
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 495
    .local v0, doubleBits:J
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(J)J

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->setLong(JJ)V

    goto :goto_0
.end method

.method public native setFloat(JF)V
.end method

.method public setFloat(JFLorg/apache/harmony/luni/platform/Endianness;)V
    .locals 2
    .parameter "address"
    .parameter "value"
    .parameter "endianness"

    .prologue
    .line 518
    sget-object v1, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p4, v1, :cond_0

    .line 519
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->setFloat(JF)V

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 522
    .local v0, floatBits:I
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->setInt(JI)V

    goto :goto_0
.end method

.method public native setInt(JI)V
.end method

.method public setInt(JILorg/apache/harmony/luni/platform/Endianness;)V
    .locals 1
    .parameter "address"
    .parameter "value"
    .parameter "endianness"

    .prologue
    .line 545
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p4, v0, :cond_0

    .line 546
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->setInt(JI)V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-direct {p0, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->setInt(JI)V

    goto :goto_0
.end method

.method public native setLong(JJ)V
.end method

.method public setLong(JJLorg/apache/harmony/luni/platform/Endianness;)V
    .locals 2
    .parameter "address"
    .parameter "value"
    .parameter "endianness"

    .prologue
    .line 572
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p5, v0, :cond_0

    .line 573
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSMemory;->setLong(JJ)V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->setLong(JJ)V

    goto :goto_0
.end method

.method public native setShort(JS)V
.end method

.method public setShort(JSLorg/apache/harmony/luni/platform/Endianness;)V
    .locals 1
    .parameter "address"
    .parameter "value"
    .parameter "endianness"

    .prologue
    .line 599
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p4, v0, :cond_0

    .line 600
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->setShort(JS)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-direct {p0, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(S)S

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->setShort(JS)V

    goto :goto_0
.end method

.method public unmap(JJ)V
    .locals 0
    .parameter "addr"
    .parameter "size"

    .prologue
    .line 633
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSMemory;->unmapImpl(JJ)V

    .line 634
    return-void
.end method
