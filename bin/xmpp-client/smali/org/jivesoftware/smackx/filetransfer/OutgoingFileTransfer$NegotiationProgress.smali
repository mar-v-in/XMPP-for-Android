.class public interface abstract Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;
.super Ljava/lang/Object;
.source "OutgoingFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NegotiationProgress"
.end annotation


# virtual methods
.method public abstract errorEstablishingStream(Ljava/lang/Exception;)V
.end method

.method public abstract outputStreamEstablished(Ljava/io/OutputStream;)V
.end method

.method public abstract statusUpdated(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V
.end method
