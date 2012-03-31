.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x50

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2
    .parameter "u"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Handler;->getDefaultPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .parameter "u"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.1B"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Handler;->getDefaultPort()I

    move-result v1

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;ILjava/net/Proxy;)V

    return-object v0
.end method
