.class public Lorg/jivesoftware/smack/util/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private final breakLines:Z

.field private final buffer:[B

.field private final bufferLength:I

.field private final decodabet:[B

.field private final encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private final options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "in"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    and-int/lit8 v0, p2, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->breakLines:Z

    .line 140
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->encode:Z

    .line 141
    iget-boolean v0, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->bufferLength:I

    .line 142
    iget v0, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->buffer:[B

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->position:I

    .line 144
    iput v2, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->lineLength:I

    .line 145
    iput p2, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->options:I

    .line 146
    #calls: Lorg/jivesoftware/smack/util/Base64;->getAlphabet(I)[B
    invoke-static {p2}, Lorg/jivesoftware/smack/util/Base64;->access$0(I)[B

    .line 147
    #calls: Lorg/jivesoftware/smack/util/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lorg/jivesoftware/smack/util/Base64;->access$1(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->decodabet:[B

    .line 148
    return-void

    :cond_0
    move v0, v2

    .line 139
    goto :goto_0

    :cond_1
    move v1, v2

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 160
    iget v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->position:I

    if-gez v3, :cond_0

    .line 161
    iget-boolean v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_4

    .line 162
    new-array v0, v4, [B

    .line 163
    .local v0, b3:[B
    const/4 v2, 0x0

    .line 164
    .local v2, numBinaryBytes:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v4, :cond_1

    .line 184
    if-lez v2, :cond_3

    .line 185
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->buffer:[B

    iget v5, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->options:I

    move v4, v1

    #calls: Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BII)[B
    invoke-static/range {v0 .. v5}, Lorg/jivesoftware/smack/util/Base64;->access$2([BII[BII)[B

    .line 186
    iput v1, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->position:I

    .line 187
    iput v11, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->numSigBytes:I

    .line 230
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v9           #i:I
    :cond_0
    :goto_1
    iget v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->position:I

    if-ltz v3, :cond_e

    .line 232
    iget v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->position:I

    iget v4, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_b

    move v1, v10

    .line 251
    :goto_2
    return v1

    .line 166
    .restart local v0       #b3:[B
    .restart local v2       #numBinaryBytes:I
    .restart local v9       #i:I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 169
    .local v6, b:I
    if-ltz v6, :cond_2

    .line 170
    int-to-byte v3, v6

    aput-byte v3, v0, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 164
    .end local v6           #b:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v8

    .line 177
    .local v8, e:Ljava/io/IOException;
    if-nez v9, :cond_2

    .line 178
    throw v8

    .end local v8           #e:Ljava/io/IOException;
    :cond_3
    move v1, v10

    .line 190
    goto :goto_2

    .line 196
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v9           #i:I
    :cond_4
    new-array v7, v11, [B

    .line 197
    .local v7, b4:[B
    const/4 v9, 0x0

    .line 198
    .restart local v9       #i:I
    const/4 v9, 0x0

    :goto_3
    if-lt v9, v11, :cond_6

    .line 213
    :cond_5
    if-ne v9, v11, :cond_9

    .line 214
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->buffer:[B

    iget v4, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->options:I

    #calls: Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BII)I
    invoke-static {v7, v1, v3, v1, v4}, Lorg/jivesoftware/smack/util/Base64;->access$3([BI[BII)I

    move-result v3

    iput v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->numSigBytes:I

    .line 215
    iput v1, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->position:I

    goto :goto_1

    .line 200
    :cond_6
    const/4 v6, 0x0

    .line 202
    .restart local v6       #b:I
    :cond_7
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 203
    if-ltz v6, :cond_8

    .line 204
    iget-object v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    if-le v3, v4, :cond_7

    .line 206
    :cond_8
    if-ltz v6, :cond_5

    .line 210
    int-to-byte v3, v6

    aput-byte v3, v7, v9

    .line 198
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 217
    .end local v6           #b:I
    :cond_9
    if-nez v9, :cond_a

    move v1, v10

    .line 218
    goto :goto_2

    .line 222
    :cond_a
    new-instance v1, Ljava/io/IOException;

    .line 223
    const-string v3, "Improperly padded Base64 input."

    .line 222
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    .end local v7           #b4:[B
    .end local v9           #i:I
    :cond_b
    iget-boolean v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->breakLines:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_c

    .line 237
    iput v1, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->lineLength:I

    .line 238
    const/16 v1, 0xa

    goto :goto_2

    .line 241
    :cond_c
    iget v1, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->lineLength:I

    .line 245
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->buffer:[B

    iget v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->position:I

    aget-byte v6, v1, v3

    .line 247
    .restart local v6       #b:I
    iget v1, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->position:I

    iget v3, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->bufferLength:I

    if-lt v1, v3, :cond_d

    .line 248
    iput v10, p0, Lorg/jivesoftware/smack/util/Base64$InputStream;->position:I

    .line 251
    :cond_d
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 259
    .end local v6           #b:I
    :cond_e
    new-instance v1, Ljava/io/IOException;

    .line 260
    const-string v3, "Error in Base64 code reading stream."

    .line 259
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .parameter "dest"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p3, :cond_1

    .line 297
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v1

    .line 284
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Base64$InputStream;->read()I

    move-result v0

    .line 289
    .local v0, b:I
    if-ltz v0, :cond_2

    .line 290
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_2
    if-nez v1, :cond_0

    .line 292
    const/4 v1, -0x1

    goto :goto_1
.end method
