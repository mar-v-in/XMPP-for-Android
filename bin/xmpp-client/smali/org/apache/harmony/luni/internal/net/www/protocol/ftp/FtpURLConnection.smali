.class public Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;
.super Ljava/net/URLConnection;
.source "FtpURLConnection.java"


# static fields
.field private static final FTP_DATAOPEN:I = 0x7d

.field private static final FTP_FILEOK:I = 0xfa

.field private static final FTP_LOGGEDIN:I = 0xe6

.field private static final FTP_NOTFOUND:I = 0x226

.field private static final FTP_OK:I = 0xc8

.field private static final FTP_OPENDATA:I = 0x96

.field private static final FTP_PASWD:I = 0x14b

.field private static final FTP_PORT:I = 0x15

.field private static final FTP_TRANSFEROK:I = 0xe2

.field private static final FTP_USERREADY:I = 0xdc


# instance fields
.field private acceptSocket:Ljava/net/ServerSocket;

.field private controlSocket:Ljava/net/Socket;

.field private ctrlInput:Ljava/io/InputStream;

.field private ctrlOutput:Ljava/io/OutputStream;

.field private currentProxy:Ljava/net/Proxy;

.field private dataPort:I

.field private dataSocket:Ljava/net/Socket;

.field private final hostName:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private password:Ljava/lang/String;

.field private proxy:Ljava/net/Proxy;

.field private replyCode:Ljava/lang/String;

.field private uri:Ljava/net/URI;

.field private username:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 90
    const-string v2, "anonymous"

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->username:Ljava/lang/String;

    .line 92
    const-string v2, ""

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->hostName:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, parse:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 114
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 115
    .local v1, split:I
    if-ltz v1, :cond_1

    .line 116
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->username:Ljava/lang/String;

    .line 117
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    .line 122
    .end local v1           #split:I
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->uri:Ljava/net/URI;

    .line 124
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    return-void

    .line 119
    .restart local v1       #split:I
    :cond_1
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->username:Ljava/lang/String;

    goto :goto_0

    .line 125
    .end local v1           #split:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 0
    .parameter "url"
    .parameter "proxy"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;)V

    .line 138
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->proxy:Ljava/net/Proxy;

    .line 139
    return-void
.end method

.method private cd()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xfa

    const/16 v6, 0x2f

    const/4 v5, 0x0

    .line 145
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 147
    .local v1, idx:I
    if-lez v1, :cond_1

    .line 148
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, dir:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CWD "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v2

    .line 151
    .local v2, reply:I
    if-eq v2, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CWD "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v2

    .line 155
    :cond_0
    if-eq v2, v7, :cond_1

    .line 156
    new-instance v3, Ljava/io/IOException;

    const-string v4, "luni.1C"

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    .end local v0           #dir:Ljava/lang/String;
    .end local v2           #reply:I
    :cond_1
    return-void
.end method

.method private connectInternal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 212
    .local v3, port:I
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getConnectTimeout()I

    move-result v1

    .line 213
    .local v1, connectTimeout:I
    if-gtz v3, :cond_0

    .line 214
    const/16 v3, 0x15

    .line 216
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    if-eqz v4, :cond_1

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    if-ne v4, v5, :cond_5

    .line 217
    :cond_1
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    .line 221
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 222
    .local v0, addr:Ljava/net/InetSocketAddress;
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 223
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    .line 224
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    .line 225
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    .line 226
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->login()V

    .line 227
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->setType()V

    .line 228
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->cd()V

    .line 233
    :cond_2
    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    .line 234
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    iput v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataPort:I

    .line 236
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->port()V

    .line 237
    if-nez v1, :cond_3

    .line 239
    const/16 v1, 0xbb8

    .line 241
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getConnectTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 242
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 243
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getFile()V

    .line 247
    :goto_1
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    .line 248
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReadTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 249
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 254
    new-instance v4, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    .line 255
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;-><init>(Ljava/io/InputStream;Ljava/net/Socket;)V

    .line 254
    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    .line 258
    :cond_4
    return-void

    .line 219
    .end local v0           #addr:Ljava/net/InetSocketAddress;
    :cond_5
    new-instance v4, Ljava/net/Socket;

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-direct {v4, v5}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    goto/16 :goto_0

    .line 245
    .restart local v0       #addr:Ljava/net/InetSocketAddress;
    :cond_6
    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->sendFile()V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, e:Ljava/io/InterruptedIOException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "luni.1E"

    invoke-static {v5}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, file:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RETR "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v1

    .line 278
    .local v1, reply:I
    const/16 v2, 0x226

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RETR "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v1

    .line 282
    :cond_0
    const/16 v2, 0x96

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe2

    if-eq v1, v2, :cond_1

    .line 283
    new-instance v2, Ljava/io/FileNotFoundException;

    .line 284
    const-string v3, "luni.1F"

    invoke-static {v3, v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_1
    return-void
.end method

.method private getReply()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v5, 0x3

    new-array v0, v5, [B

    .line 350
    .local v0, code:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-lt v2, v5, :cond_3

    .line 357
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO8859_1"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->replyCode:Ljava/lang/String;

    .line 359
    const/4 v3, 0x0

    .line 360
    .local v3, multiline:Z
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    .line 361
    const/4 v3, 0x1

    .line 363
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->readLine()Ljava/lang/String;

    .line 364
    if-eqz v3, :cond_2

    .line 365
    :cond_1
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->readMultiLine()Z

    move-result v5

    if-nez v5, :cond_1

    .line 370
    :cond_2
    :try_start_0
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->replyCode:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 351
    .end local v3           #multiline:Z
    :cond_3
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 352
    .local v4, tmp:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 353
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 355
    :cond_4
    int-to-byte v5, v4

    aput-byte v5, v0, v2

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v4           #tmp:I
    .restart local v3       #multiline:Z
    :catch_0
    move-exception v1

    .line 372
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "reply code is invalid"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v5, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    .line 372
    check-cast v5, Ljava/io/IOException;

    throw v5
.end method

.method private login()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x14b

    const/16 v4, 0xe6

    const/16 v3, 0xdc

    .line 379
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    .line 380
    .local v0, reply:I
    if-eq v0, v3, :cond_0

    .line 382
    new-instance v1, Ljava/io/IOException;

    const-string v2, "luni.1D"

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    .line 386
    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    .line 388
    new-instance v1, Ljava/io/IOException;

    const-string v2, "luni.20"

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_1
    if-ne v0, v5, :cond_2

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PASS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    .line 393
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    .line 394
    new-instance v1, Ljava/io/IOException;

    .line 395
    const-string v2, "luni.20"

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    :cond_2
    return-void
.end method

.method private port()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2c

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PORT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 403
    const/16 v2, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataPort:I

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 404
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 405
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataPort:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 407
    new-instance v0, Ljava/io/IOException;

    const-string v1, "luni.21"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    return-void
.end method

.method private readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, c:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 420
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 418
    :cond_0
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private readMultiLine()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, line:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v1

    .line 428
    :cond_1
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->replyCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 430
    goto :goto_0
.end method

.method private sendFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STOR "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 442
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 441
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    .line 444
    .local v0, reply:I
    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    .line 445
    new-instance v1, Ljava/io/IOException;

    const-string v2, "luni.22"

    invoke-static {v2}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :cond_0
    return-void
.end method

.method private setType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    const-string v0, "TYPE I\r\n"

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 502
    new-instance v0, Ljava/io/IOException;

    const-string v1, "luni.23"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    const-string v1, "ISO8859_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 508
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v4, 0x0

    .line 174
    .local v4, proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->proxy:Ljava/net/Proxy;

    if-eqz v6, :cond_1

    .line 175
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .restart local v4       #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_0
    if-nez v4, :cond_2

    .line 181
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    .line 182
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connectInternal()V

    .line 208
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->uri:Ljava/net/URI;

    invoke-static {v6}, Lorg/apache/harmony/luni/net/NetUtil;->getProxyList(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    .line 185
    .local v5, selector:Ljava/net/ProxySelector;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 186
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/Proxy;>;"
    const/4 v0, 0x0

    .line 187
    .local v0, connectOK:Z
    const-string v1, ""

    .line 188
    .local v1, failureReason:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v0, :cond_5

    .line 202
    :cond_4
    if-nez v0, :cond_0

    .line 204
    new-instance v6, Ljava/io/IOException;

    .line 205
    const-string v7, "luni.1D"

    .line 204
    invoke-static {v7, v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 189
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    iput-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    .line 191
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connectInternal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v0, 0x1

    goto :goto_1

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 197
    if-eqz v5, :cond_3

    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    if-eq v6, v7, :cond_3

    .line 198
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->uri:Ljava/net/URI;

    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 268
    const-string v0, "content/unknown"

    .line 270
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 342
    .local v0, port:I
    if-gtz v0, :cond_0

    .line 343
    const/16 v0, 0x15

    .line 345
    :cond_0
    new-instance v1, Ljava/net/SocketPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect, resolve"

    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public setDoInput(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 466
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 469
    :cond_0
    iput-boolean p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->doInput:Z

    .line 470
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->doOutput:Z

    .line 471
    return-void

    .line 470
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDoOutput(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 489
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 492
    :cond_0
    iput-boolean p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->doOutput:Z

    .line 493
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->doInput:Z

    .line 494
    return-void

    .line 493
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
