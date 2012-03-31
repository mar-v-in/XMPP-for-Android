.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;
.super Ljava/io/OutputStream;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpOutputStream"
.end annotation


# static fields
.field static final MAX:I = 0x400


# instance fields
.field cache:Ljava/io/ByteArrayOutputStream;

.field cacheLength:I

.field closed:Z

.field defaultCacheSize:I

.field fixedMod:Z

.field limit:I

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

.field writeToSocket:Z


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 175
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->defaultCacheSize:I

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->fixedMod:Z

    .line 188
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->defaultCacheSize:I

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    .line 189
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    .line 191
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;IZ)V
    .locals 3
    .parameter
    .parameter "limit"
    .parameter "fixedMode"

    .prologue
    const/16 v0, 0x400

    .line 193
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 175
    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->defaultCacheSize:I

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->fixedMod:Z

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->writeToSocket:Z

    .line 195
    iput p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    .line 196
    iput-boolean p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->fixedMod:Z

    .line 197
    if-lez p2, :cond_0

    .line 198
    iput p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    .line 204
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    .line 205
    return-void

    .line 201
    :cond_0
    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->chunkLength:I
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$5(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->chunkLength:I
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$5(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)I

    move-result v0

    :cond_1
    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->defaultCacheSize:I

    .line 202
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->calculateChunkDataLength()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    goto :goto_0
.end method

.method private calculateChunkDataLength()I
    .locals 3

    .prologue
    .line 225
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->defaultCacheSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 230
    .local v0, bitSize:I
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->defaultCacheSize:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 230
    add-int/lit8 v1, v2, 0x2

    .line 232
    .local v1, headSize:I
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->defaultCacheSize:I

    sub-int/2addr v2, v1

    return v2
.end method

.method private output(Ljava/lang/String;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$6(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "ISO8859_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 276
    return-void
.end method

.method private sendCache(Z)V
    .locals 3
    .parameter "close"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 280
    .local v0, size:I
    if-gtz v0, :cond_0

    if-eqz p1, :cond_2

    .line 281
    :cond_0
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    if-gez v1, :cond_2

    .line 282
    if-lez v0, :cond_1

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$6(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 285
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 286
    const-string v1, "\r\n"

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 288
    :cond_1
    if-eqz p1, :cond_2

    .line 289
    const-string v1, "0\r\n\r\n"

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 293
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->closed:Z

    .line 246
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->writeToSocket:Z

    if-eqz v0, :cond_2

    .line 247
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->fixedMod:Z

    if-eqz v0, :cond_1

    .line 248
    new-instance v0, Ljava/io/IOException;

    const-string v1, "luni.25"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 250
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->closed:Z

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->sendCache(Z)V

    .line 252
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    const/4 v1, 0x0

    #calls: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V
    invoke-static {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Ljava/io/IOException;

    const-string v1, "luni.24"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->writeToSocket:Z

    if-eqz v0, :cond_1

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->sendCache(Z)V

    .line 262
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$6(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :cond_1
    monitor-exit p0

    return-void
.end method

.method isCached()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->writeToSocket:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isChunked()Z
    .locals 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->writeToSocket:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized size()I
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized toByteArray()[B
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/io/IOException;

    const-string v1, "luni.24"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 357
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    if-ltz v0, :cond_2

    .line 358
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Ljava/io/IOException;

    const-string v1, "luni.26"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    .line 363
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 364
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->writeToSocket:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    if-lt v0, v1, :cond_3

    .line 365
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->sendCache(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->closed:Z

    if-eqz v3, :cond_0

    .line 307
    new-instance v3, Ljava/io/IOException;

    const-string v4, "luni.24"

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 309
    :cond_0
    if-nez p1, :cond_1

    .line 310
    :try_start_1
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 313
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v3, p1

    if-gt p2, v3, :cond_2

    .line 314
    array-length v3, p1

    sub-int/2addr v3, p2

    if-ge v3, p3, :cond_3

    .line 315
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 316
    const-string v4, "luni.13"

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    :cond_3
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    if-ltz v3, :cond_6

    .line 320
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    if-le p3, v3, :cond_4

    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->fixedMod:Z

    if-eqz v3, :cond_4

    .line 321
    new-instance v3, Ljava/io/IOException;

    const-string v4, "luni.26"

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    :cond_4
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    sub-int/2addr v3, p3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    .line 324
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 325
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->limit:I

    if-nez v3, :cond_5

    .line 326
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;
    invoke-static {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$6(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_6
    :try_start_2
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->writeToSocket:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, p3

    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    if-ge v3, v4, :cond_8

    .line 330
    :cond_7
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 332
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 333
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    sub-int v2, v3, v4

    .line 334
    .local v2, writeNum:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, p2, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 335
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;
    invoke-static {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$6(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 336
    const-string v3, "\r\n"

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 337
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 338
    sub-int v0, p3, v2

    .line 339
    .local v0, left:I
    add-int v1, p2, v2

    .line 340
    .local v1, position:I
    :goto_1
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    if-gt v0, v3, :cond_9

    .line 347
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 341
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;
    invoke-static {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$6(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    invoke-virtual {v3, p1, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 343
    const-string v3, "\r\n"

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 344
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I

    sub-int/2addr v0, v3

    .line 345
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->cacheLength:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v1, v3

    goto :goto_1
.end method
