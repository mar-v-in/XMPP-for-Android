.class Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;
.super Ljava/io/InputStream;
.source "X509CertFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoringInputStream"
.end annotation


# static fields
.field private static final BUFF_SIZE:I = 0x20


# instance fields
.field private bar:I

.field private final buff:[I

.field private end:I

.field private final inStream:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "inStream"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 71
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 78
    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    .line 80
    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    .line 86
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    .line 87
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 104
    return-void
.end method

.method public mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    const/4 v1, 0x0

    .line 112
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-gez v0, :cond_0

    .line 113
    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 114
    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    .line 115
    const/16 v0, 0x1f

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-ltz v1, :cond_2

    .line 146
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    rem-int/lit8 v0, v1, 0x20

    .line 148
    .local v0, cur:I
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    if-ge v0, v1, :cond_0

    .line 150
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 151
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    aget v1, v1, v0

    .line 169
    .end local v0           #cur:I
    :goto_0
    return v1

    .line 154
    .restart local v0       #cur:I
    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    if-eq v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    aput v2, v1, v0

    .line 158
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    .line 159
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 160
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    aget v1, v1, v0

    goto :goto_0

    .line 165
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 169
    .end local v0           #cur:I
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 195
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 190
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->read()I

    move-result v1

    .local v1, read_b:I
    if-ne v1, v2, :cond_2

    .line 191
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_1

    .line 193
    :cond_2
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-ltz v0, :cond_0

    .line 204
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 208
    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.15A"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-ltz v3, :cond_3

    .line 217
    const-wide/16 v1, 0x0

    .line 218
    .local v1, i:J
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->available()I

    move-result v0

    .line 219
    .local v0, av:I
    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    .line 220
    int-to-long p1, v0

    .line 222
    :cond_0
    :goto_0
    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 227
    .end local v0           #av:I
    .end local v1           #i:J
    :cond_1
    :goto_1
    return-wide v1

    .line 223
    .restart local v0       #av:I
    .restart local v1       #i:J
    :cond_2
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    .line 227
    .end local v0           #av:I
    .end local v1           #i:J
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    goto :goto_1
.end method
