.class public Lorg/apache/harmony/luni/util/InputStreamHelper;
.super Ljava/lang/Object;
.source "InputStreamHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;
    }
.end annotation


# static fields
.field private static final BAIS_BUF:Ljava/lang/reflect/Field;

.field private static final BAIS_POS:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/reflect/Field;

    .line 84
    .local v0, f:[Ljava/lang/reflect/Field;
    new-instance v1, Lorg/apache/harmony/luni/util/InputStreamHelper$1;

    invoke-direct {v1, v0}, Lorg/apache/harmony/luni/util/InputStreamHelper$1;-><init>([Ljava/lang/reflect/Field;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 98
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lorg/apache/harmony/luni/util/InputStreamHelper;->BAIS_BUF:Ljava/lang/reflect/Field;

    .line 99
    const/4 v1, 0x1

    aget-object v1, v0, v1

    sput-object v1, Lorg/apache/harmony/luni/util/InputStreamHelper;->BAIS_POS:Ljava/lang/reflect/Field;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static expose(Ljava/io/ByteArrayInputStream;)[B
    .locals 7
    .parameter "bais"

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 116
    .local v0, available:I
    :try_start_1
    sget-object v5, Lorg/apache/harmony/luni/util/InputStreamHelper;->BAIS_BUF:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 117
    .local v1, buf:[B
    sget-object v5, Lorg/apache/harmony/luni/util/InputStreamHelper;->BAIS_POS:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 121
    .local v4, pos:I
    if-nez v4, :cond_0

    :try_start_2
    array-length v5, v1

    if-ne v0, v5, :cond_0

    .line 122
    move-object v2, v1

    .line 127
    .local v2, buffer:[B
    :goto_0
    int-to-long v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 113
    monitor-exit p0

    .line 129
    return-object v2

    .line 118
    .end local v1           #buf:[B
    .end local v2           #buffer:[B
    .end local v4           #pos:I
    :catch_0
    move-exception v3

    .line 119
    .local v3, iae:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/InternalError;

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    .end local v0           #available:I
    .end local v3           #iae:Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 124
    .restart local v0       #available:I
    .restart local v1       #buf:[B
    .restart local v4       #pos:I
    :cond_0
    :try_start_3
    new-array v2, v0, [B

    .line 125
    .restart local v2       #buffer:[B
    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static expose(Ljava/io/InputStream;)[B
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 145
    instance-of v0, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;

    if-eqz v0, :cond_0

    .line 146
    check-cast p0, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;

    .end local p0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/InputStreamHelper$ExposedByteArrayInputStream;->expose()[B

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 149
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    check-cast p0, Ljava/io/ByteArrayInputStream;

    .end local p0
    invoke-static {p0}, Lorg/apache/harmony/luni/util/InputStreamHelper;->expose(Ljava/io/ByteArrayInputStream;)[B

    move-result-object v0

    goto :goto_0

    .line 154
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static readFullyAndClose(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 174
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 175
    .local v1, buffer:[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 176
    .local v2, count:I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 179
    .local v4, nextByte:I
    if-ne v4, v6, :cond_0

    .line 180
    new-array v3, v2, [B

    .line 181
    .local v3, dest:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 193
    .end local v3           #dest:[B
    :goto_0
    return-object v3

    .line 186
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 187
    mul-int/lit8 v5, v2, 0x2

    .line 186
    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 188
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 189
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 192
    if-ne v2, v6, :cond_1

    .line 193
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 198
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 195
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 197
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v4           #nextByte:I
    :catchall_0
    move-exception v5

    .line 198
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 199
    throw v5
.end method
