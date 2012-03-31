.class public Lde/javawi/jstun/util/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fourBytesToLong([B)J
    .locals 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 18
    array-length v4, p0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 19
    new-instance v4, Lde/javawi/jstun/util/UtilityException;

    const-string v5, "Byte array too short!"

    invoke-direct {v4, v5}, Lde/javawi/jstun/util/UtilityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 21
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    .line 22
    .local v0, temp0:I
    const/4 v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 23
    .local v1, temp1:I
    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 24
    .local v2, temp2:I
    const/4 v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 25
    .local v3, temp3:I
    int-to-long v4, v0

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    shl-int/lit8 v6, v1, 0x10

    int-to-long v6, v6

    add-long/2addr v4, v6

    shl-int/lit8 v6, v2, 0x8

    int-to-long v6, v6

    add-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public static final integerToFourBytes(I)[B
    .locals 7
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 31
    .local v0, result:[B
    int-to-double v1, p0

    const-wide/high16 v3, 0x4000

    const-wide v5, 0x404f800000000000L

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    if-gez p0, :cond_1

    .line 32
    :cond_0
    new-instance v1, Lde/javawi/jstun/util/UtilityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Integer value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    const-string v3, " is larger than 2^63"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-direct {v1, v2}, Lde/javawi/jstun/util/UtilityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_1
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 36
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 37
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 38
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 39
    return-object v0
.end method

.method public static final integerToOneByte(I)B
    .locals 6
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 44
    int-to-double v0, p0

    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, 0x402e

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    if-gez p0, :cond_1

    .line 45
    :cond_0
    new-instance v0, Lde/javawi/jstun/util/UtilityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Integer value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    const-string v2, " is larger than 2^15"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Lde/javawi/jstun/util/UtilityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static final integerToTwoBytes(I)[B
    .locals 7
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 54
    .local v0, result:[B
    int-to-double v1, p0

    const-wide/high16 v3, 0x4000

    const-wide/high16 v5, 0x403f

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    if-gez p0, :cond_1

    .line 55
    :cond_0
    new-instance v1, Lde/javawi/jstun/util/UtilityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Integer value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    const-string v3, " is larger than 2^31"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-direct {v1, v2}, Lde/javawi/jstun/util/UtilityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_1
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 59
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 60
    return-object v0
.end method

.method public static final oneByteToInteger(B)I
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 65
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static final twoBytesToInteger([B)I
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 70
    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 71
    new-instance v2, Lde/javawi/jstun/util/UtilityException;

    const-string v3, "Byte array too short!"

    invoke-direct {v2, v3}, Lde/javawi/jstun/util/UtilityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 74
    .local v0, temp0:I
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v1, v2, 0xff

    .line 75
    .local v1, temp1:I
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    return v2
.end method
