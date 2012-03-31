.class Lorg/jivesoftware/smackx/filetransfer/FileTransferManager$1;
.super Ljava/lang/Object;
.source "FileTransferManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    check-cast p1, Lorg/jivesoftware/smackx/packet/StreamInitiation;

    .end local p1
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->fireNewRequest(Lorg/jivesoftware/smackx/packet/StreamInitiation;)V

    .line 150
    return-void
.end method
