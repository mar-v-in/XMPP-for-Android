.class Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;
.super Ljava/lang/Object;
.source "OutgoingFileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->sendFile(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

.field private final synthetic val$description:Ljava/lang/String;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->val$description:Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 243
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    iget-object v4, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    iget-object v5, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->val$file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 244
    iget-object v6, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->val$file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-object v8, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->val$description:Ljava/lang/String;

    .line 243
    #calls: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->negotiateStream(Ljava/lang/String;JLjava/lang/String;)Ljava/io/OutputStream;
    invoke-static {v4, v5, v6, v7, v8}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$0(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;Ljava/lang/String;JLjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    #setter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v3, v4}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$1(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v3}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$3(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;

    move-result-object v3

    if-nez v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #calls: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->handleXMPPException(Lorg/jivesoftware/smack/XMPPException;)V
    invoke-static {v3, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$2(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;Lorg/jivesoftware/smack/XMPPException;)V

    goto :goto_0

    .line 253
    .end local v0           #e:Lorg/jivesoftware/smack/XMPPException;
    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiated:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    sget-object v5, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->in_progress:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v3, v4, v5}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->updateStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    const/4 v1, 0x0

    .line 259
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->val$file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_3

    .line 260
    .end local v1           #inputStream:Ljava/io/InputStream;
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    iget-object v4, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v4}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$3(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->writeToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_7

    .line 270
    if-eqz v2, :cond_2

    .line 271
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 274
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v3}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$3(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 275
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v3}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$3(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v1, v2

    .line 280
    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :goto_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->in_progress:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    sget-object v5, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->complete:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v3, v4, v5}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->updateStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)Z

    goto :goto_0

    .line 261
    :catch_1
    move-exception v0

    .line 262
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 263
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;->bad_file:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setError(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;)V

    .line 264
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    if-eqz v1, :cond_3

    .line 271
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 274
    :cond_3
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v3}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$3(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 275
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v3}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$3(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 276
    :catch_2
    move-exception v3

    goto :goto_1

    .line 265
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 266
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    :goto_3
    :try_start_6
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    sget-object v4, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 267
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setException(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 270
    if-eqz v1, :cond_4

    .line 271
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 274
    :cond_4
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v3}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$3(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 275
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v3}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$3(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 276
    :catch_4
    move-exception v3

    goto :goto_1

    .line 268
    .end local v0           #e:Lorg/jivesoftware/smack/XMPPException;
    :catchall_0
    move-exception v3

    .line 270
    :goto_4
    if-eqz v1, :cond_5

    .line 271
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 274
    :cond_5
    iget-object v4, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v4}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$3(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 275
    iget-object v4, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    invoke-static {v4}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->access$3(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 279
    :goto_5
    throw v3

    .line 276
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_1

    :catch_6
    move-exception v4

    goto :goto_5

    .line 268
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_4

    .line 265
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .line 261
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_2
.end method
