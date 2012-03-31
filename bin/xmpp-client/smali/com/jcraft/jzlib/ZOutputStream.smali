.class public Lcom/jcraft/jzlib/ZOutputStream;
.super Ljava/io/OutputStream;
.source "ZOutputStream.java"


# instance fields
.field protected buf:[B

.field protected buf1:[B

.field protected bufsize:I

.field protected compress:Z

.field protected flush:I

.field protected out:Ljava/io/OutputStream;

.field protected z:Lcom/jcraft/jzlib/ZStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 40
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 41
    const/16 v0, 0x200

    iput v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    .line 42
    iput v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 43
    iget v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    .line 51
    iput-object p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 52
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->inflateInit()I

    .line 53
    iput-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter "out"
    .parameter "level"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jzlib/ZOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 2
    .parameter "out"
    .parameter "level"
    .parameter "nowrap"

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 40
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 41
    const/16 v0, 0x200

    iput v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 43
    iget v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    .line 61
    iput-object p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 62
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jzlib/ZStream;->deflateInit(IZ)I

    .line 63
    iput-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    .line 64
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->end()V

    .line 133
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 134
    iput-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 136
    return-void

    .line 132
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->end()V

    .line 133
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 134
    iput-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 132
    throw v0

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public end()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->deflateEnd()I

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->free()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->inflateEnd()I

    goto :goto_1
.end method

.method public finish()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    iput-object v2, v1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 105
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput v5, v1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 106
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    iput v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 107
    iget-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v1, v6}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v0

    .line 109
    .local v0, err:I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_3

    .line 110
    new-instance v2, Lcom/jcraft/jzlib/ZStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v1, :cond_2

    const-string v1, "de"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "flating: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v0           #err:I
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v1, v6}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v0

    .restart local v0       #err:I
    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "in"

    goto :goto_1

    .line 111
    :cond_3
    iget v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    iget-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    iget v3, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    iget-object v4, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->flush()V

    .line 117
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 154
    return-void
.end method

.method public getFlushMode()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    return v0
.end method

.method public getTotalIn()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    return-wide v0
.end method

.method public getTotalOut()J
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    return-wide v0
.end method

.method public setFlushMode(I)V
    .locals 0
    .parameter "flush"

    .prologue
    .line 98
    iput p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 99
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 68
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jzlib/ZOutputStream;->write([BII)V

    .line 69
    return-void
.end method

.method public write([BII)V
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 72
    if-nez p3, :cond_0

    .line 91
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 76
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput p2, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 77
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput p3, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    iput-object v2, v1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 80
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput v5, v1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 81
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    iput v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 82
    iget-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v0

    .line 86
    .local v0, err:I
    :goto_1
    if-eqz v0, :cond_4

    .line 87
    new-instance v2, Lcom/jcraft/jzlib/ZStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v1, :cond_3

    const-string v1, "de"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "flating: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    .end local v0           #err:I
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v0

    .restart local v0       #err:I
    goto :goto_1

    .line 87
    :cond_3
    const-string v1, "in"

    goto :goto_2

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    iget v3, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    iget-object v4, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-eqz v1, :cond_1

    goto :goto_0
.end method
