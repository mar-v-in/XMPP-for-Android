.class public Lorg/apache/harmony/auth/jgss/GSSUtils;
.super Ljava/lang/Object;
.source "GSSUtils.java"


# static fields
.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_GSSEXCEPTION_MAJOR_CODE:I = 0x3

.field public static final DEFAULT_GSSEXCEPTION_MINOR_CODE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(II)[B
    .locals 5
    .parameter "source"
    .parameter "length"

    .prologue
    .line 33
    if-gez p0, :cond_0

    .line 34
    new-instance v3, Ljava/lang/Error;

    .line 35
    const-string v4, "org.apache.harmony.auth.jgss.GSSUtils.getBytes(int i, int length) does not support negative integer"

    .line 34
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 37
    :cond_0
    if-lez p1, :cond_1

    const/4 v3, 0x4

    if-le p1, v3, :cond_2

    .line 38
    :cond_1
    new-instance v3, Ljava/lang/Error;

    .line 39
    const-string v4, "org.apache.harmony.auth.jgss.GSSUtils.getBytes(int i, int length) must have 0<length<=4"

    .line 38
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    :cond_2
    new-array v2, p1, [B

    .line 42
    .local v2, target:[B
    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v1, v3, 0x8

    .line 43
    .local v1, shift:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-lt v0, p1, :cond_3

    .line 47
    return-object v2

    .line 44
    :cond_3
    ushr-int v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 45
    add-int/lit8 v1, v1, -0x8

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/ietf/jgss/GSSException;

    const/4 v2, 0x3

    .line 55
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-direct {v1, v2, v3, v4}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v1
.end method

.method public static toInt([BII)I
    .locals 5
    .parameter "source"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 60
    if-eqz p2, :cond_0

    const/4 v3, 0x4

    if-le p2, v3, :cond_1

    .line 61
    :cond_0
    new-instance v3, Ljava/lang/Error;

    .line 62
    const-string v4, "org.apache.harmony.auth.jgss.GSSUtils.toInt(byte[] source) must have 0<source.length<=4"

    .line 61
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_1
    const/4 v3, 0x0

    aget-byte v3, p0, v3

    if-gez v3, :cond_2

    .line 65
    new-instance v3, Ljava/lang/Error;

    .line 66
    const-string v4, "org.apache.harmony.auth.jgss.GSSUtils.toInt(byte[] source) does not support negative integer."

    .line 65
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_2
    const/4 v2, 0x0

    .line 69
    .local v2, target:I
    move v1, p1

    .local v1, index:I
    :goto_0
    add-int v3, p1, p2

    if-lt v1, v3, :cond_3

    .line 74
    return v2

    .line 70
    :cond_3
    aget-byte v0, p0, v1

    .line 71
    .local v0, b:B
    shl-int/lit8 v2, v2, 0x8

    .line 72
    and-int/lit16 v3, v0, 0xff

    add-int/2addr v2, v3

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/ietf/jgss/GSSException;

    const/4 v2, 0x3

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-direct {v1, v2, v3, v4}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v1
.end method
