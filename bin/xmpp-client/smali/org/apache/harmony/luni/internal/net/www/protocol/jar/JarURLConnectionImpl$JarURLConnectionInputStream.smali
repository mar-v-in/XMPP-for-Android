.class Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;
.super Ljava/io/FilterInputStream;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarURLConnectionInputStream"
.end annotation


# instance fields
.field inputStream:Ljava/io/InputStream;

.field jarFile:Ljava/util/jar/JarFile;

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V
    .locals 0
    .parameter
    .parameter "in"
    .parameter "file"

    .prologue
    .line 60
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

    .line 61
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->inputStream:Ljava/io/InputStream;

    .line 63
    iput-object p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    .line 64
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 69
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

    const/4 v1, 0x1

    #setter for: Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->closed:Z
    invoke-static {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Z)V

    .line 71
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 73
    :cond_0
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->inputStream:Ljava/io/InputStream;

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
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
