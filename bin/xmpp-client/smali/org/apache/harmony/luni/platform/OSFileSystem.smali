.class Lorg/apache/harmony/luni/platform/OSFileSystem;
.super Ljava/lang/Object;
.source "OSFileSystem.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/IFileSystem;


# static fields
.field private static final singleton:Lorg/apache/harmony/luni/platform/OSFileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSFileSystem;->oneTimeInitializationImpl()V

    .line 34
    new-instance v0, Lorg/apache/harmony/luni/platform/OSFileSystem;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/OSFileSystem;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/platform/OSFileSystem;->singleton:Lorg/apache/harmony/luni/platform/OSFileSystem;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private native availableImpl(J)J
.end method

.method private native closeImpl(J)I
.end method

.method private native fflushImpl(JZ)I
.end method

.method public static getOSFileSystem()Lorg/apache/harmony/luni/platform/OSFileSystem;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/apache/harmony/luni/platform/OSFileSystem;->singleton:Lorg/apache/harmony/luni/platform/OSFileSystem;

    return-object v0
.end method

.method private native lockImpl(JJJIZ)I
.end method

.method private static native oneTimeInitializationImpl()V
.end method

.method private native openImpl([BI)J
.end method

.method private native readDirectImpl(JJII)J
.end method

.method private native readImpl(J[BII)J
.end method

.method private native readvImpl(J[J[I[II)J
.end method

.method private native seekImpl(JJI)J
.end method

.method private native sizeImpl(J)J
.end method

.method private native transferImpl(JLjava/io/FileDescriptor;JJ)J
.end method

.method private native truncateImpl(JJ)I
.end method

.method private native ttyAvailableImpl()J
.end method

.method private native ttyReadImpl([BII)J
.end method

.method private native unlockImpl(JJJ)I
.end method

.method private final validateLockArgs(IJJ)V
    .locals 3
    .parameter "type"
    .parameter "start"
    .parameter "length"

    .prologue
    const-wide/16 v1, 0x0

    .line 274
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 275
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal lock type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    cmp-long v0, p2, v1

    if-gez v0, :cond_1

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 282
    const-string v1, "Lock start position must be non-negative"

    .line 281
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    cmp-long v0, p4, v1

    if-gez v0, :cond_2

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 288
    const-string v1, "Lock length must be non-negative"

    .line 287
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_2
    return-void
.end method

.method private native writeDirectImpl(JJII)J
.end method

.method private native writeImpl(J[BII)J
.end method


# virtual methods
.method public available(J)J
    .locals 4
    .parameter "fileDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSFileSystem;->availableImpl(J)J

    move-result-wide v0

    .line 49
    .local v0, nChar:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 50
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 52
    :cond_0
    return-wide v0
.end method

.method public close(J)V
    .locals 2
    .parameter "fileDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSFileSystem;->closeImpl(J)I

    move-result v0

    .line 65
    .local v0, rc:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 68
    :cond_0
    return-void
.end method

.method public fflush(JZ)V
    .locals 2
    .parameter "fileDescriptor"
    .parameter "metadata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSFileSystem;->fflushImpl(JZ)I

    move-result v0

    .line 76
    .local v0, result:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 77
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 79
    :cond_0
    return-void
.end method

.method public native getAllocGranularity()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public lock(JJJIZ)Z
    .locals 7
    .parameter "fileDescriptor"
    .parameter "start"
    .parameter "length"
    .parameter "type"
    .parameter "waitFlag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move v1, p7

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->validateLockArgs(IJJ)V

    .line 96
    invoke-direct/range {p0 .. p8}, Lorg/apache/harmony/luni/platform/OSFileSystem;->lockImpl(JJJIZ)I

    move-result v6

    .line 98
    .local v6, result:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open([BI)J
    .locals 7
    .parameter "fileName"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 113
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSFileSystem;->openImpl([BI)J

    move-result-wide v2

    .line 114
    .local v2, handler:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 116
    :try_start_0
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 120
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 119
    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    invoke-virtual {v0, v1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 122
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 125
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :cond_1
    return-wide v2
.end method

.method public read(J[BII)J
    .locals 4
    .parameter "fileDescriptor"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    if-nez p3, :cond_0

    .line 134
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 136
    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->readImpl(J[BII)J

    move-result-wide v0

    .line 137
    .local v0, bytesRead:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 145
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 147
    :cond_1
    return-wide v0
.end method

.method public readDirect(JJII)J
    .locals 4
    .parameter "fileDescriptor"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/luni/platform/OSFileSystem;->readDirectImpl(JJII)J

    move-result-wide v0

    .line 155
    .local v0, bytesRead:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 156
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 158
    :cond_0
    return-wide v0
.end method

.method public readv(J[J[I[II)J
    .locals 4
    .parameter "fileDescriptor"
    .parameter "addresses"
    .parameter "offsets"
    .parameter "lengths"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/luni/platform/OSFileSystem;->readvImpl(J[J[I[II)J

    move-result-wide v0

    .line 181
    .local v0, bytesRead:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 182
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 184
    :cond_0
    return-wide v0
.end method

.method public seek(JJI)J
    .locals 4
    .parameter "fileDescriptor"
    .parameter "offset"
    .parameter "whence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->seekImpl(JJI)J

    move-result-wide v0

    .line 194
    .local v0, pos:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 197
    :cond_0
    return-wide v0
.end method

.method public size(J)J
    .locals 4
    .parameter "fileDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSFileSystem;->sizeImpl(J)J

    move-result-wide v0

    .line 205
    .local v0, nChar:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 206
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 208
    :cond_0
    return-wide v0
.end method

.method public transfer(JLjava/io/FileDescriptor;JJ)J
    .locals 4
    .parameter "fileHandler"
    .parameter "socketDescriptor"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct/range {p0 .. p7}, Lorg/apache/harmony/luni/platform/OSFileSystem;->transferImpl(JLjava/io/FileDescriptor;JJ)J

    move-result-wide v0

    .line 218
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 219
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 221
    :cond_0
    return-wide v0
.end method

.method public truncate(JJ)V
    .locals 2
    .parameter "fileDescriptor"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSFileSystem;->truncateImpl(JJ)I

    move-result v0

    .line 230
    .local v0, rc:I
    if-gez v0, :cond_0

    .line 231
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 233
    :cond_0
    return-void
.end method

.method public ttyAvailable()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0}, Lorg/apache/harmony/luni/platform/OSFileSystem;->ttyAvailableImpl()J

    move-result-wide v0

    .line 240
    .local v0, nChar:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 241
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 243
    :cond_0
    return-wide v0
.end method

.method public ttyRead([BII)J
    .locals 4
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSFileSystem;->ttyReadImpl([BII)J

    move-result-wide v0

    .line 252
    .local v0, nChar:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 253
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 255
    :cond_0
    return-wide v0
.end method

.method public unlock(JJJ)V
    .locals 7
    .parameter "fileDescriptor"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->validateLockArgs(IJJ)V

    .line 265
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/luni/platform/OSFileSystem;->unlockImpl(JJJ)I

    move-result v6

    .line 266
    .local v6, result:I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    .line 267
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 269
    :cond_0
    return-void
.end method

.method public write(J[BII)J
    .locals 4
    .parameter "fileDescriptor"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->writeImpl(J[BII)J

    move-result-wide v0

    .line 297
    .local v0, bytesWritten:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 298
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 300
    :cond_0
    return-wide v0
.end method

.method public writeDirect(JJII)J
    .locals 4
    .parameter "fileDescriptor"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/luni/platform/OSFileSystem;->writeDirectImpl(JJII)J

    move-result-wide v0

    .line 308
    .local v0, bytesWritten:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 309
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 311
    :cond_0
    return-wide v0
.end method

.method public native writev(J[Ljava/lang/Object;[I[II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
