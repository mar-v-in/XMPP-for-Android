.class public abstract Lorg/jivesoftware/smackx/filetransfer/FileTransfer;
.super Ljava/lang/Object;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;,
        Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field protected amountWritten:J

.field private error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

.field private exception:Ljava/lang/Exception;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileSize:J

.field protected negotiator:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

.field private final peer:Ljava/lang/String;

.field private status:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

.field private final statusMonitor:Ljava/lang/Object;

.field protected streamID:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;)V
    .locals 2
    .parameter "peer"
    .parameter "streamID"
    .parameter "negotiator"

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->initial:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->status:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->statusMonitor:Ljava/lang/Object;

    .line 191
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->amountWritten:J

    .line 204
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->peer:Ljava/lang/String;

    .line 205
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->streamID:Ljava/lang/String;

    .line 206
    iput-object p3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->negotiator:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    .line 207
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public getAmountWritten()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->amountWritten:J

    return-wide v0
.end method

.method public getError()Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->fileSize:J

    return-wide v0
.end method

.method public getPeer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->peer:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 288
    iget-wide v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->amountWritten:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->fileSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 289
    :cond_0
    const-wide/16 v0, 0x0

    .line 291
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->amountWritten:J

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->fileSize:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->status:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    return-object v0
.end method

.method public getStreamID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->streamID:Ljava/lang/String;

    return-object v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->status:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->cancelled:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->status:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    if-eq v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->status:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->complete:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->status:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->refused:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 316
    goto :goto_0
.end method

.method protected setError(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 321
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    .line 322
    return-void
.end method

.method protected setException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 325
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->exception:Ljava/lang/Exception;

    .line 326
    return-void
.end method

.method protected setFileInfo(Ljava/lang/String;J)V
    .locals 0
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    .line 329
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->fileName:Ljava/lang/String;

    .line 330
    iput-wide p2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->fileSize:J

    .line 331
    return-void
.end method

.method protected setFileInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "path"
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    .line 334
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->filePath:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->fileName:Ljava/lang/String;

    .line 336
    iput-wide p3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->fileSize:J

    .line 337
    return-void
.end method

.method protected setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 340
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->statusMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->status:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    .line 340
    monitor-exit v1

    .line 343
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)Z
    .locals 2
    .parameter "oldStatus"
    .parameter "newStatus"

    .prologue
    .line 346
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->statusMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->status:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    if-eq p1, v0, :cond_0

    .line 348
    monitor-exit v1

    const/4 v0, 0x0

    .line 351
    :goto_0
    return v0

    .line 350
    :cond_0
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->status:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    .line 351
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected writeToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 357
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 358
    .local v0, b:[B
    const/4 v1, 0x0

    .line 359
    .local v1, count:I
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->amountWritten:J

    .line 364
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    iget-wide v3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->amountWritten:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->amountWritten:J

    .line 373
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 377
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->getStatus()Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->cancelled:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 361
    if-eqz v3, :cond_0

    .line 380
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->getStatus()Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->cancelled:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->getError()Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;->none:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    if-ne v3, v4, :cond_2

    .line 381
    iget-wide v3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->amountWritten:J

    iget-wide v5, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->fileSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 382
    sget-object v3, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 383
    sget-object v3, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;->connection:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    iput-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    .line 385
    :cond_2
    return-void

    .line 365
    :catch_0
    move-exception v2

    .line 366
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "error writing to output stream"

    invoke-direct {v3, v4, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 374
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 375
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "error reading from input stream"

    invoke-direct {v3, v4, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
