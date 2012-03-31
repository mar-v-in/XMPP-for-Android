.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;
.super Ljava/io/InputStream;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitedInputStream"
.end annotation


# instance fields
.field bytesRemaining:I

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;I)V
    .locals 0
    .parameter
    .parameter "length"

    .prologue
    .line 373
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 374
    iput p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    .line 375
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
    .line 379
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 380
    .local v0, result:I
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    if-le v0, v1, :cond_0

    .line 381
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    .line 383
    .end local v0           #result:I
    :cond_0
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 388
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    if-lez v0, :cond_1

    .line 389
    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    .line 390
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    const/4 v1, 0x1

    #calls: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V
    invoke-static {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V

    .line 399
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$2(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$3(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/net/CacheRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$3(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/net/CacheRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 402
    :cond_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #calls: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V
    invoke-static {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V

    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 406
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_1

    .line 407
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #calls: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V
    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V

    .line 408
    const/4 v0, -0x1

    .line 420
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 413
    .local v0, result:I
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$2(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$4(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 414
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$4(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 416
    :cond_2
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    .line 417
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_0

    .line 418
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #calls: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V
    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 426
    if-ltz p2, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    .line 428
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 429
    const-string v2, "luni.12"

    .line 428
    invoke-static {v2, p2}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_3

    .line 433
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 434
    const-string v2, "luni.18"

    .line 433
    invoke-static {v2, p3}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_3
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_5

    .line 437
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #calls: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V
    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V

    .line 438
    const/4 v0, -0x1

    .line 455
    :cond_4
    :goto_0
    return v0

    .line 440
    :cond_5
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    if-le p3, v1, :cond_6

    .line 441
    iget p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    .line 443
    :cond_6
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 444
    .local v0, result:I
    if-lez v0, :cond_7

    .line 445
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    .line 448
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$2(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$4(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 449
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$4(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 452
    :cond_7
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_4

    .line 453
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #calls: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V
    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V

    goto :goto_0
.end method
