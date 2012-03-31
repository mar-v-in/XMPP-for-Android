.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;
.super Ljava/io/InputStream;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedInputStream"
.end annotation


# instance fields
.field atEnd:Z

.field bytesRemaining:I

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    .line 70
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->readChunkSize()V

    .line 71
    return-void
.end method

.method private readChunkSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->atEnd:Z

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    if-nez v2, :cond_2

    .line 154
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readln()Ljava/lang/String;

    .line 156
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readln()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, size:Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, index:I
    if-ltz v0, :cond_3

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    .line 162
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    if-nez v2, :cond_0

    .line 163
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->atEnd:Z

    .line 164
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readHeaders()V

    goto :goto_0
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
    .line 75
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 76
    .local v0, result:I
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    if-le v0, v1, :cond_0

    .line 77
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    .line 79
    .end local v0           #result:I
    :cond_0
    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 84
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->atEnd:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #calls: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V
    invoke-static {v0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V

    .line 89
    :goto_0
    iput-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->atEnd:Z

    .line 91
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$2(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$3(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/net/CacheRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$3(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/net/CacheRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 94
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    const/4 v1, 0x0

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
    .line 98
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_0

    .line 99
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->readChunkSize()V

    .line 101
    :cond_0
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->atEnd:Z

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    const/4 v2, 0x0

    #calls: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V
    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V

    .line 103
    const/4 v0, -0x1

    .line 111
    :cond_1
    :goto_0
    return v0

    .line 105
    :cond_2
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    .line 106
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 108
    .local v0, result:I
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$2(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$4(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$4(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

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
    .line 117
    array-length v1, p1

    if-gt p2, v1, :cond_0

    if-gez p2, :cond_1

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 120
    const-string v2, "luni.12"

    .line 119
    invoke-static {v2, p2}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_3

    .line 124
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 125
    const-string v2, "luni.18"

    .line 124
    invoke-static {v2, p3}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_3
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_4

    .line 128
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->readChunkSize()V

    .line 130
    :cond_4
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->atEnd:Z

    if-eqz v1, :cond_6

    .line 131
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    const/4 v2, 0x0

    #calls: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V
    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V

    .line 132
    const/4 v0, -0x1

    .line 146
    :cond_5
    :goto_0
    return v0

    .line 134
    :cond_6
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    if-le p3, v1, :cond_7

    .line 135
    iget p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    .line 137
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 138
    .local v0, result:I
    if-lez v0, :cond_5

    .line 139
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->bytesRemaining:I

    .line 142
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$2(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$4(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 143
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->access$4(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
