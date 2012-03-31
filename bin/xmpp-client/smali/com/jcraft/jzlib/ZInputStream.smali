.class public Lcom/jcraft/jzlib/ZInputStream;
.super Ljava/io/FilterInputStream;
.source "ZInputStream.java"


# instance fields
.field protected buf:[B

.field protected buf1:[B

.field protected bufsize:I

.field protected compress:Z

.field protected flush:I

.field protected in:Ljava/io/InputStream;

.field private nomoreinput:Z

.field protected z:Lcom/jcraft/jzlib/ZStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jzlib/ZInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .parameter "in"
    .parameter "level"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 41
    const/16 v0, 0x200

    iput v0, p0, Lcom/jcraft/jzlib/ZInputStream;->bufsize:I

    .line 42
    iput v2, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    .line 43
    iget v0, p0, Lcom/jcraft/jzlib/ZInputStream;->bufsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->buf:[B

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->buf1:[B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    .line 82
    iput-boolean v2, p0, Lcom/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    .line 64
    iput-object p1, p0, Lcom/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    .line 65
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0, p2}, Lcom/jcraft/jzlib/ZStream;->deflateInit(I)I

    .line 66
    iput-boolean v1, p0, Lcom/jcraft/jzlib/ZInputStream;->compress:Z

    .line 67
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v1, p0, Lcom/jcraft/jzlib/ZInputStream;->buf:[B

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 68
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput v2, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 69
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput v2, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .parameter "in"
    .parameter "nowrap"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 41
    const/16 v0, 0x200

    iput v0, p0, Lcom/jcraft/jzlib/ZInputStream;->bufsize:I

    .line 42
    iput v2, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    .line 43
    iget v0, p0, Lcom/jcraft/jzlib/ZInputStream;->bufsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->buf:[B

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->buf1:[B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    .line 82
    iput-boolean v2, p0, Lcom/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    .line 54
    iput-object p1, p0, Lcom/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    .line 55
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0, p2}, Lcom/jcraft/jzlib/ZStream;->inflateInit(Z)I

    .line 56
    iput-boolean v2, p0, Lcom/jcraft/jzlib/ZInputStream;->compress:Z

    .line 57
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v1, p0, Lcom/jcraft/jzlib/ZInputStream;->buf:[B

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 58
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput v2, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 59
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput v2, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 60
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 148
    return-void
.end method

.method public getFlushMode()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    return v0
.end method

.method public getTotalIn()J
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    return-wide v0
.end method

.method public getTotalOut()J
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 77
    iget-object v1, p0, Lcom/jcraft/jzlib/ZInputStream;->buf1:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/jcraft/jzlib/ZInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->buf1:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 85
    if-nez p3, :cond_0

    .line 113
    :goto_0
    return v1

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v3, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 89
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput p2, v3, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 90
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput p3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    if-nez v3, :cond_2

    .line 93
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 94
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v4, p0, Lcom/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/jcraft/jzlib/ZInputStream;->buf:[B

    iget v6, p0, Lcom/jcraft/jzlib/ZInputStream;->bufsize:I

    invoke-virtual {v4, v5, v1, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    iput v4, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 95
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-ne v3, v2, :cond_2

    .line 96
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 97
    iput-boolean v7, p0, Lcom/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    .line 100
    :cond_2
    iget-boolean v3, p0, Lcom/jcraft/jzlib/ZInputStream;->compress:Z

    if-eqz v3, :cond_3

    .line 101
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v4, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    invoke-virtual {v3, v4}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v0

    .line 104
    .local v0, err:I
    :goto_1
    iget-boolean v3, p0, Lcom/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    if-eqz v3, :cond_4

    const/4 v3, -0x5

    if-ne v0, v3, :cond_4

    move v1, v2

    .line 105
    goto :goto_0

    .line 103
    .end local v0           #err:I
    :cond_3
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v4, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    invoke-virtual {v3, v4}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v0

    .restart local v0       #err:I
    goto :goto_1

    .line 106
    :cond_4
    if-eqz v0, :cond_6

    if-eq v0, v7, :cond_6

    .line 107
    new-instance v2, Lcom/jcraft/jzlib/ZStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v1, p0, Lcom/jcraft/jzlib/ZInputStream;->compress:Z

    if-eqz v1, :cond_5

    const-string v1, "de"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "flating: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string v1, "in"

    goto :goto_2

    .line 108
    :cond_6
    iget-boolean v3, p0, Lcom/jcraft/jzlib/ZInputStream;->nomoreinput:Z

    if-nez v3, :cond_7

    if-ne v0, v7, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-ne v3, p3, :cond_8

    move v1, v2

    .line 109
    goto/16 :goto_0

    .line 111
    :cond_8
    iget-object v3, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-ne v3, p3, :cond_9

    if-eqz v0, :cond_1

    .line 113
    :cond_9
    iget-object v1, p0, Lcom/jcraft/jzlib/ZInputStream;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int v1, p3, v1

    goto/16 :goto_0
.end method

.method public setFlushMode(I)V
    .locals 0
    .parameter "flush"

    .prologue
    .line 129
    iput p1, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    .line 130
    return-void
.end method

.method public skip(J)J
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/16 v0, 0x200

    .line 118
    .local v0, len:I
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 119
    long-to-int v0, p1

    .line 120
    :cond_0
    new-array v1, v0, [B

    .line 121
    .local v1, tmp:[B
    invoke-virtual {p0, v1}, Lcom/jcraft/jzlib/ZInputStream;->read([B)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method
