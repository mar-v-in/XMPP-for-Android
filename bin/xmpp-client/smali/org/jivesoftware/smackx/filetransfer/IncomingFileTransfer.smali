.class public Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;
.super Lorg/jivesoftware/smackx/filetransfer/FileTransfer;
.source "IncomingFileTransfer.java"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private final recieveRequest:Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;)V
    .locals 2
    .parameter "request"
    .parameter "transferNegotiator"

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getRequestor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getStreamID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;)V

    .line 65
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->recieveRequest:Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->recieveRequest:Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->negotiateStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;Lorg/jivesoftware/smack/XMPPException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->handleXMPPException(Lorg/jivesoftware/smack/XMPPException;)V

    return-void
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method private handleXMPPException(Lorg/jivesoftware/smack/XMPPException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 74
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 75
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setException(Ljava/lang/Exception;)V

    .line 76
    return-void
.end method

.method private negotiateStream()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 79
    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiating_transfer:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 80
    iget-object v4, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->negotiator:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    .line 81
    iget-object v5, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->recieveRequest:Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->selectStreamNegotiator(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v2

    .line 82
    .local v2, streamNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiating_stream:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 83
    new-instance v3, Ljava/util/concurrent/FutureTask;

    .line 84
    new-instance v4, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;

    invoke-direct {v4, p0, v2}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;-><init>(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V

    .line 83
    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 93
    .local v3, streamNegotiatorTask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->run()V

    .line 96
    const-wide/16 v4, 0xf

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    .local v1, inputStream:Ljava/io/InputStream;
    invoke-virtual {v3, v7}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 106
    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiated:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 107
    return-object v1

    .line 97
    .end local v1           #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Interruption while executing"

    invoke-direct {v4, v5, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    .line 104
    invoke-virtual {v3, v7}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 105
    throw v4

    .line 99
    :catch_1
    move-exception v0

    .line 100
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    :try_start_2
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Error in execution"

    invoke-direct {v4, v5, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 101
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 102
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Request timed out"

    invoke-direct {v4, v5, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->cancelled:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 71
    return-void
.end method

.method public recieveFile()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transfer already negotiated!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->negotiateStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->inputStream:Ljava/io/InputStream;

    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setException(Ljava/lang/Exception;)V

    .line 128
    throw v0
.end method

.method public recieveFile(Ljava/io/File;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 157
    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_2

    .line 167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 168
    const-string v3, "Cannot write to provided file"

    .line 167
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    .line 163
    const-string v3, "Could not create file to write too"

    .line 162
    invoke-direct {v2, v3, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$2;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$2;-><init>(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;Ljava/io/File;)V

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File Transfer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->streamID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 218
    .local v1, transferThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 219
    return-void
.end method
