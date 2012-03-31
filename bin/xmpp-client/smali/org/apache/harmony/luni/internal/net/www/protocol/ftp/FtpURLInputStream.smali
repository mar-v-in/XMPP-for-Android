.class Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;
.super Ljava/io/InputStream;
.source "FtpURLInputStream.java"


# instance fields
.field private final controlSocket:Ljava/net/Socket;

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0
    .parameter "is"
    .parameter "controlSocket"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    .line 36
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->controlSocket:Ljava/net/Socket;

    .line 37
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_1

    .line 48
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .parameter "limit"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "sbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
