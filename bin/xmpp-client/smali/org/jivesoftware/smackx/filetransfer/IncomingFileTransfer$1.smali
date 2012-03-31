.class Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;
.super Ljava/lang/Object;
.source "IncomingFileTransfer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->negotiateStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

.field private final synthetic val$streamNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->val$streamNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->val$streamNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 89
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->recieveRequest:Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;
    invoke-static {v1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->access$0(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getStreamInitiation()Lorg/jivesoftware/smackx/packet/StreamInitiation;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createIncomingStream(Lorg/jivesoftware/smackx/packet/StreamInitiation;)Ljava/io/InputStream;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->call()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
