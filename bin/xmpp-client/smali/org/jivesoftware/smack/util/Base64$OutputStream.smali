.class public Lorg/jivesoftware/smack/util/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private final b4:[B

.field private final breakLines:Z

.field private buffer:[B

.field private final bufferLength:I

.field private final decodabet:[B

.field private final encode:Z

.field private lineLength:I

.field private final options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 333
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 5
    .parameter "out"
    .parameter "options"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 362
    and-int/lit8 v0, p2, 0x8

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->breakLines:Z

    .line 363
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->encode:Z

    .line 364
    iget-boolean v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->bufferLength:I

    .line 365
    iget v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    .line 366
    iput v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    .line 367
    iput v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->lineLength:I

    .line 368
    iput-boolean v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->suspendEncoding:Z

    .line 369
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->b4:[B

    .line 370
    iput p2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->options:I

    .line 371
    #calls: Lorg/jivesoftware/smack/util/Base64;->getAlphabet(I)[B
    invoke-static {p2}, Lorg/jivesoftware/smack/util/Base64;->access$0(I)[B

    .line 372
    #calls: Lorg/jivesoftware/smack/util/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lorg/jivesoftware/smack/util/Base64;->access$1(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->decodabet:[B

    .line 373
    return-void

    :cond_0
    move v0, v2

    .line 362
    goto :goto_0

    :cond_1
    move v1, v2

    .line 363
    goto :goto_1

    :cond_2
    move v0, v3

    .line 364
    goto :goto_2
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
    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->flushBase64()V

    .line 387
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 389
    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    .line 390
    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    .line 391
    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    iget v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    if-lez v0, :cond_0

    .line 399
    iget-boolean v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    iget v4, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->options:I

    #calls: Lorg/jivesoftware/smack/util/Base64;->encode3to4([B[BII)[B
    invoke-static {v1, v2, v3, v4}, Lorg/jivesoftware/smack/util/Base64;->access$4([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    .line 409
    :cond_0
    return-void

    .line 404
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 405
    const-string v1, "Base64 input not properly padded."

    .line 404
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeEncoding()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->suspendEncoding:Z

    .line 419
    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->flushBase64()V

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->suspendEncoding:Z

    .line 430
    return-void
.end method

.method public write(I)V
    .locals 7
    .parameter "theByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 472
    iget-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->encode:Z

    if-eqz v1, :cond_3

    .line 479
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 480
    iget v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    iget v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 482
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->b4:[B

    iget-object v3, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    iget v4, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->bufferLength:I

    iget v5, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->options:I

    #calls: Lorg/jivesoftware/smack/util/Base64;->encode3to4([B[BII)[B
    invoke-static {v2, v3, v4, v5}, Lorg/jivesoftware/smack/util/Base64;->access$4([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 484
    iget v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->lineLength:I

    .line 485
    iget-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->breakLines:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_2

    .line 486
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 487
    iput v6, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->lineLength:I

    .line 490
    :cond_2
    iput v6, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    goto :goto_0

    .line 497
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_4

    .line 498
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 499
    iget v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    iget v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 501
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    iget-object v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->b4:[B

    .line 502
    iget v3, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->options:I

    .line 501
    #calls: Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BII)I
    invoke-static {v1, v6, v2, v6, v3}, Lorg/jivesoftware/smack/util/Base64;->access$3([BI[BII)I

    move-result v0

    .line 503
    .local v0, len:I
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->b4:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 505
    iput v6, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    goto :goto_0

    .line 508
    .end local v0           #len:I
    :cond_4
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 509
    new-instance v1, Ljava/io/IOException;

    .line 510
    const-string v2, "Invalid character in Base64 data."

    .line 509
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .parameter "theBytes"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    iget-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 457
    :cond_0
    return-void

    .line 453
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 454
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->write(I)V

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
