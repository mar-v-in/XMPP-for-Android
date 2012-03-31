.class public Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;
.super Ljava/lang/Object;
.source "FileTransferRequest.java"


# instance fields
.field private final manager:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

.field private final streamInitiation:Lorg/jivesoftware/smackx/packet/StreamInitiation;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;Lorg/jivesoftware/smackx/packet/StreamInitiation;)V
    .locals 0
    .parameter "manager"
    .parameter "si"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/packet/StreamInitiation;

    .line 47
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->manager:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    .line 48
    return-void
.end method


# virtual methods
.method public accept()Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->manager:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->createIncomingFileTransfer(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFile()Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFile()Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFile()Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStreamInitiation()Lorg/jivesoftware/smackx/packet/StreamInitiation;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/packet/StreamInitiation;

    return-object v0
.end method

.method public reject()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->manager:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->rejectIncomingFileTransfer(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)V

    .line 136
    return-void
.end method
