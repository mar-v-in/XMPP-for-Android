.class public Lorg/apache/harmony/luni/internal/net/www/protocol/file/Handler;
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
.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 4
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "luni.1B"

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const-string v2, "localhost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    :cond_1
    new-instance v2, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;

    invoke-direct {v2, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;-><init>(Ljava/net/URL;)V

    .line 81
    :goto_0
    return-object v2

    .line 80
    :cond_2
    new-instance v0, Ljava/net/URL;

    const-string v2, "ftp"

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, ftpURL:Ljava/net/URL;
    if-nez p2, :cond_3

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v0, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    goto :goto_0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 4
    .parameter "u"
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 104
    if-ge p4, p3, :cond_0

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v0, ""

    .line 108
    .local v0, parseString:Ljava/lang/String;
    if-ge p3, p4, :cond_1

    .line 109
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-super {p0, p1, v0, v1, v2}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    goto :goto_0
.end method
