.class public interface abstract Lorg/apache/harmony/luni/platform/IMemorySystem;
.super Ljava/lang/Object;
.source "IMemorySystem.java"


# static fields
.field public static final MMAP_READ_ONLY:I = 0x1

.field public static final MMAP_READ_WRITE:I = 0x2

.field public static final MMAP_WRITE_COPY:I = 0x4


# virtual methods
.method public abstract flush(JJ)V
.end method

.method public abstract free(J)V
.end method

.method public abstract getAddress(J)J
.end method

.method public abstract getByte(J)B
.end method

.method public abstract getByteArray(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getDouble(J)D
.end method

.method public abstract getDouble(JLorg/apache/harmony/luni/platform/Endianness;)D
.end method

.method public abstract getFloat(J)F
.end method

.method public abstract getFloat(JLorg/apache/harmony/luni/platform/Endianness;)F
.end method

.method public abstract getInt(J)I
.end method

.method public abstract getInt(JLorg/apache/harmony/luni/platform/Endianness;)I
.end method

.method public abstract getLong(J)J
.end method

.method public abstract getLong(JLorg/apache/harmony/luni/platform/Endianness;)J
.end method

.method public abstract getPointerSize()I
.end method

.method public abstract getShort(J)S
.end method

.method public abstract getShort(JLorg/apache/harmony/luni/platform/Endianness;)S
.end method

.method public abstract isLittleEndian()Z
.end method

.method public abstract isLoaded(JJ)Z
.end method

.method public abstract load(JJ)V
.end method

.method public abstract malloc(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method public abstract memmove(JJJ)V
.end method

.method public abstract memset(JBJ)V
.end method

.method public abstract mmap(JJJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAddress(JJ)V
.end method

.method public abstract setByte(JB)V
.end method

.method public abstract setByteArray(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract setDouble(JD)V
.end method

.method public abstract setDouble(JDLorg/apache/harmony/luni/platform/Endianness;)V
.end method

.method public abstract setFloat(JF)V
.end method

.method public abstract setFloat(JFLorg/apache/harmony/luni/platform/Endianness;)V
.end method

.method public abstract setInt(JI)V
.end method

.method public abstract setInt(JILorg/apache/harmony/luni/platform/Endianness;)V
.end method

.method public abstract setLong(JJ)V
.end method

.method public abstract setLong(JJLorg/apache/harmony/luni/platform/Endianness;)V
.end method

.method public abstract setShort(JS)V
.end method

.method public abstract setShort(JSLorg/apache/harmony/luni/platform/Endianness;)V
.end method

.method public abstract unmap(JJ)V
.end method
