.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;,
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;,
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;
    }
.end annotation


# static fields
.field private static final GET:Ljava/lang/String; = "GET"

.field private static final HEAD:Ljava/lang/String; = "HEAD"

.field private static final POST:Ljava/lang/String; = "POST"

.field private static final PUT:Ljava/lang/String; = "PUT"

.field private static defaultReqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;


# instance fields
.field private cacheOut:Ljava/io/OutputStream;

.field private cacheRequest:Ljava/net/CacheRequest;

.field private cacheResponse:Ljava/net/CacheResponse;

.field protected connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

.field private final defaultPort:I

.field private hasTriedCache:Z

.field private hostAddress:Ljava/net/InetAddress;

.field private hostName:Ljava/lang/String;

.field private hostPort:I

.field private httpVersion:I

.field private is:Ljava/io/InputStream;

.field private os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

.field private proxy:Ljava/net/Proxy;

.field private proxyName:Ljava/lang/String;

.field private reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

.field private resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

.field private responseCache:Ljava/net/ResponseCache;

.field sendChunked:Z

.field private sentRequest:Z

.field private socketOut:Ljava/io/OutputStream;

.field private uis:Ljava/io/InputStream;

.field private uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultReqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 547
    const/16 v0, 0x50

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 548
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 1
    .parameter "url"
    .parameter "port"

    .prologue
    .line 559
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 469
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    .line 497
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    .line 560
    iput p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultPort:I

    .line 561
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultReqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 564
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$1;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/ResponseCache;

    .line 568
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCache:Ljava/net/ResponseCache;

    .line 575
    return-void

    .line 565
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 0
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 589
    iput-object p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 590
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V

    return-void
.end method

.method static synthetic access$2(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z

    return v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/net/CacheRequest;
    .locals 1
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;

    return-object v0
.end method

.method static synthetic access$4(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;
    .locals 1
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$5(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->chunkLength:I

    return v0
.end method

.method static synthetic access$6(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)Ljava/io/OutputStream;
    .locals 1
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private createRequest()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    .line 669
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 670
    .local v5, output:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 674
    const-string v8, "HTTP/1."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    if-nez v8, :cond_8

    .line 676
    const-string v8, "0\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :goto_0
    const/4 v1, 0x0

    .line 682
    .local v1, hasContentLength:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->length()I

    move-result v8

    if-lt v2, v8, :cond_9

    .line 714
    iget v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    if-ltz v8, :cond_0

    if-nez v1, :cond_0

    .line 715
    const-string v8, "content-length: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    iget v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_0
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v9, "User-Agent"

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 721
    const-string v8, "User-Agent: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const-string v8, "http.agent"

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, agent:Ljava/lang/String;
    if-nez v0, :cond_f

    .line 724
    const-string v8, "Java"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const-string v8, "java.version"

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :goto_2
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .end local v0           #agent:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v9, "Host"

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 732
    const-string v8, "Host: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 735
    .local v6, port:I
    if-lez v6, :cond_2

    iget v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultPort:I

    if-eq v6, v8, :cond_2

    .line 736
    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_2
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .end local v6           #port:I
    :cond_3
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v9, "Accept"

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    .line 742
    const-string v8, "Accept: *; */*\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_4
    iget v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    if-lez v8, :cond_5

    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v9, "Connection"

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 745
    const-string v8, "Connection: Keep-Alive\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :cond_5
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    if-eqz v8, :cond_7

    .line 750
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v9, "Content-Type"

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    .line 751
    const-string v8, "Content-Type: application/x-www-form-urlencoded\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_6
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-virtual {v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->isCached()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 754
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v9, "Content-Length"

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    .line 755
    const-string v8, "Content-Length: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-virtual {v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_7
    :goto_3
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ISO8859_1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    return-object v8

    .line 678
    .end local v1           #hasContentLength:Z
    .end local v2           #i:I
    :cond_8
    const-string v8, "1\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 683
    .restart local v1       #hasContentLength:Z
    .restart local v2       #i:I
    :cond_9
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v8, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getKey(I)Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, key:Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 685
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, lKey:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-virtual {v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->isChunked()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 687
    :cond_a
    const-string v8, "transfer-encoding"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 688
    const-string v8, "content-length"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 689
    :cond_b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v8, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(I)Ljava/lang/String;

    move-result-object v7

    .line 696
    .local v7, value:Ljava/lang/String;
    const-string v8, "content-length"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 697
    const/4 v1, 0x1

    .line 702
    iget v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    if-ltz v8, :cond_c

    .line 703
    iget v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 706
    :cond_c
    if-eqz v7, :cond_d

    .line 707
    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_d
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .end local v4           #lKey:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 727
    .end local v3           #key:Ljava/lang/String;
    .restart local v0       #agent:Ljava/lang/String;
    :cond_f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 759
    .end local v0           #agent:Ljava/lang/String;
    :cond_10
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-virtual {v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->isChunked()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 760
    const-string v8, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private disconnect(Z)V
    .locals 3
    .parameter "closeSocket"

    .prologue
    const/4 v2, 0x0

    .line 780
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->closeSocketAndStreams()V

    .line 787
    :cond_0
    :goto_0
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 788
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    if-eqz v0, :cond_0

    .line 783
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->getDefault()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 783
    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->returnConnectionToPool(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V

    .line 785
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    goto :goto_0
.end method

.method private getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 931
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 932
    .local v3, idx:I
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 933
    .local v7, scheme:Ljava/lang/String;
    const-string v8, "realm=\""

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v6, v8, 0x7

    .line 934
    .local v6, realm:I
    const/4 v5, 0x0

    .line 935
    .local v5, prompt:Ljava/lang/String;
    if-eq v6, v9, :cond_0

    .line 936
    const/16 v8, 0x22

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 937
    .local v2, end:I
    if-eq v2, v9, :cond_0

    .line 938
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 944
    .end local v2           #end:I
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHostPort()I

    move-result v9

    .line 945
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    .line 944
    invoke-static {v8, v9, v10, v5, v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v4

    .line 946
    .local v4, pa:Ljava/net/PasswordAuthentication;
    if-nez v4, :cond_1

    .line 948
    const/4 v8, 0x0

    .line 954
    :goto_0
    return-object v8

    .line 951
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 952
    const-string v9, "ISO8859_1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 953
    .local v0, bytes:[B
    const-string v8, "ISO8859_1"

    invoke-static {v0, v8}, Lorg/apache/harmony/luni/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, encoded:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private getContentStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uis:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 959
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uis:Ljava/io/InputStream;

    .line 975
    :goto_0
    return-object v3

    .line 962
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, encoding:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "chunked"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 964
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;

    invoke-direct {v3, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$ChunkedInputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uis:Ljava/io/InputStream;

    goto :goto_0

    .line 967
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 968
    .local v2, sLength:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 970
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 971
    .local v1, length:I
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;

    invoke-direct {v3, p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;I)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uis:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 972
    .end local v1           #length:I
    :catch_0
    move-exception v3

    .line 975
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uis:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 517
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultReqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFromCache()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 999
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCache:Ljava/net/ResponseCache;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hasTriedCache:Z

    if-nez v2, :cond_3

    .line 1000
    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hasTriedCache:Z

    .line 1001
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v2, :cond_0

    .line 1002
    new-instance v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-direct {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 1004
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCache:Ljava/net/ResponseCache;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 1005
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getFieldMap()Ljava/util/Map;

    move-result-object v5

    .line 1004
    invoke-virtual {v2, v3, v4, v5}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheResponse:Ljava/net/CacheResponse;

    .line 1006
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheResponse:Ljava/net/CacheResponse;

    if-eqz v2, :cond_3

    .line 1007
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheResponse:Ljava/net/CacheResponse;

    .line 1008
    invoke-virtual {v2}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 1009
    .local v0, headMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_1

    .line 1010
    new-instance v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-direct {v2, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 1012
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;

    .line 1013
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;

    if-eqz v2, :cond_3

    .line 1021
    .end local v0           #headMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    return v1

    .line 1018
    :cond_3
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hasTriedCache:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;

    if-nez v2, :cond_2

    .line 1021
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getHostAddress()Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1117
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostAddress:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    .line 1120
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 1121
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 1120
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostAddress:Ljava/net/InetAddress;

    .line 1126
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostAddress:Ljava/net/InetAddress;

    return-object v0

    .line 1123
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostAddress:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method private getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostName:Ljava/lang/String;

    .line 1142
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostName:Ljava/lang/String;

    return-object v0

    .line 1139
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getHostPort()I
    .locals 1

    .prologue
    .line 1150
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    if-gez v0, :cond_0

    .line 1152
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    .line 1153
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    .line 1157
    :goto_0
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    if-gez v0, :cond_0

    .line 1158
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultPort:I

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    .line 1161
    :cond_0
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    return v0

    .line 1155
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    goto :goto_0
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"

    .prologue
    .line 1322
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private putToCache()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1328
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCache:Ljava/net/ResponseCache;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCache:Ljava/net/ResponseCache;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1, p0}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;

    .line 1330
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheOut:Ljava/io/OutputStream;

    .line 1334
    :cond_0
    return-void
.end method

.method private sendRequest()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1424
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->createRequest()[B

    move-result-object v0

    .line 1427
    .local v0, request:[B
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-nez v2, :cond_0

    .line 1428
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connect()V

    .line 1430
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheResponse:Ljava/net/CacheResponse;

    if-eqz v2, :cond_1

    .line 1445
    :goto_0
    return v1

    .line 1435
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1436
    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sentRequest:Z

    .line 1438
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->isCached()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1439
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-virtual {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1441
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->isCached()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1442
    :cond_3
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readServerResponse()V

    goto :goto_0

    .line 1445
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 530
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultReqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private setProxy(Ljava/lang/String;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 1473
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1474
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 1475
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxyName:Ljava/lang/String;

    .line 1476
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultPort:I

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    .line 1491
    :cond_0
    return-void

    .line 1478
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxyName:Ljava/lang/String;

    .line 1479
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1481
    .local v2, port:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    if-ltz v3, :cond_2

    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    const v4, 0xffff

    if-le v3, v4, :cond_0

    .line 1487
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1488
    const-string v4, "luni.31"

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1487
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1484
    const-string v4, "luni.30"

    .line 1483
    invoke-static {v4, v2}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 594
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "luni.2C"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_0
    if-nez p1, :cond_1

    .line 598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 600
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method public connect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 617
    iget-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v4, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getFromCache()Z

    move-result v4

    if-nez v4, :cond_0

    .line 624
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Util;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 625
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 630
    :goto_1
    iput-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 632
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v4, :cond_4

    .line 636
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHTTPConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 659
    :cond_2
    :goto_2
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    if-nez v4, :cond_3

    .line 661
    invoke-virtual {p0, v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHTTPConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 663
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getReadTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->setSoTimeout(I)V

    .line 664
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V

    .line 665
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    goto :goto_0

    .line 640
    :cond_4
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v3

    .line 641
    .local v3, selector:Ljava/net/ProxySelector;
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 642
    .local v1, proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v1, :cond_2

    .line 643
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Proxy;

    .line 644
    .local v2, selectedProxy:Ljava/net/Proxy;
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v6, :cond_5

    .line 649
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHTTPConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 650
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 652
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_3

    .line 626
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v2           #selectedProxy:Ljava/net/Proxy;
    .end local v3           #selector:Ljava/net/ProxySelector;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect(Z)V

    .line 777
    return-void
.end method

.method protected doRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 795
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sentRequest:Z

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->close()V

    .line 800
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readServerResponse()V

    .line 801
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getContentStream()Ljava/io/InputStream;

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->doRequestInternal()V

    goto :goto_0
.end method

.method doRequestInternal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x131

    const/4 v7, 0x0

    .line 809
    const/4 v3, 0x0

    .line 812
    .local v3, redirect:I
    :goto_0
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sendRequest()Z

    move-result v5

    if-nez v5, :cond_0

    .line 911
    :goto_1
    return-void

    .line 816
    :cond_0
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v6, 0x197

    if-ne v5, v6, :cond_5

    .line 817
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v5

    if-nez v5, :cond_1

    .line 820
    new-instance v5, Ljava/io/IOException;

    const-string v6, "luni.2D"

    invoke-static {v6}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 824
    :cond_1
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v6, "Proxy-Authenticate"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, challenge:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 827
    new-instance v5, Ljava/io/IOException;

    const-string v6, "luni.2E"

    invoke-static {v6}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 831
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->endRequest()V

    .line 832
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect()V

    .line 833
    iput-boolean v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    .line 834
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, credentials:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 910
    .end local v0           #challenge:Ljava/lang/String;
    .end local v1           #credentials:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getContentStream()Ljava/io/InputStream;

    goto :goto_1

    .line 840
    .restart local v0       #challenge:Ljava/lang/String;
    .restart local v1       #credentials:Ljava/lang/String;
    :cond_4
    const-string v5, "Proxy-Authorization"

    invoke-virtual {p0, v5, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 845
    .end local v0           #challenge:Ljava/lang/String;
    .end local v1           #credentials:Ljava/lang/String;
    :cond_5
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v6, 0x191

    if-ne v5, v6, :cond_6

    .line 847
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v6, "WWW-Authenticate"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    .restart local v0       #challenge:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 853
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->endRequest()V

    .line 854
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect()V

    .line 855
    iput-boolean v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    .line 856
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    .restart local v1       #credentials:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 862
    const-string v5, "Authorization"

    invoke-virtual {p0, v5, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 871
    .end local v0           #challenge:Ljava/lang/String;
    .end local v1           #credentials:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 872
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v6, 0x12c

    if-eq v5, v6, :cond_7

    .line 873
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_7

    .line 874
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_7

    .line 875
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v6, 0x12f

    if-eq v5, v6, :cond_7

    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    if-ne v5, v8, :cond_3

    .line 876
    :cond_7
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    if-nez v5, :cond_3

    .line 878
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x4

    if-le v3, v5, :cond_8

    .line 879
    new-instance v5, Ljava/net/ProtocolException;

    .line 880
    const-string v6, "luni.2F"

    invoke-static {v6}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 879
    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 882
    :cond_8
    const-string v5, "Location"

    invoke-virtual {p0, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, location:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 885
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    if-ne v5, v8, :cond_b

    .line 886
    const/4 v4, 0x0

    .line 887
    .local v4, start:I
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 888
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 890
    :cond_9
    const-string v5, "//"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 891
    add-int/lit8 v4, v4, 0x2

    .line 893
    :cond_a
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->setProxy(Ljava/lang/String;)V

    .line 900
    .end local v4           #start:I
    :goto_2
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->endRequest()V

    .line 901
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect()V

    .line 902
    iput-boolean v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    goto/16 :goto_0

    .line 895
    :cond_b
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-direct {v5, v6, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 896
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostName:Ljava/lang/String;

    .line 898
    const/4 v5, -0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hostPort:I

    goto :goto_2
.end method

.method protected endRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;->close()V

    .line 917
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sentRequest:Z

    .line 918
    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 989
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v1, "HEAD"

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    .line 990
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uis:Ljava/io/InputStream;

    .line 992
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getHTTPConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .locals 4
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_1

    .line 1170
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 1171
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->getDefault()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    .line 1172
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getConnectTimeout()I

    move-result v3

    .line 1171
    invoke-virtual {v1, v2, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->getConnection(Ljava/net/URI;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v0

    .line 1177
    .local v0, connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    :goto_0
    return-object v0

    .line 1174
    .end local v0           #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    :cond_1
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->getDefault()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    .line 1175
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getConnectTimeout()I

    move-result v3

    .line 1174
    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->getConnection(Ljava/net/URI;Ljava/net/Proxy;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v0

    .restart local v0       #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    goto :goto_0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .parameter "pos"

    .prologue
    .line 1039
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v0, :cond_0

    .line 1044
    const/4 v0, 0x0

    .line 1046
    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1040
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 1066
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v0, :cond_0

    .line 1071
    const/4 v0, 0x0

    .line 1073
    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1067
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .parameter "pos"

    .prologue
    .line 1079
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v0, :cond_0

    .line 1084
    const/4 v0, 0x0

    .line 1086
    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getKey(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1080
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1102
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v0, :cond_0

    .line 1107
    const/4 v0, 0x0

    .line 1109
    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getFieldMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 1103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1182
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->doInput:Z

    if-nez v0, :cond_0

    .line 1183
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "luni.28"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connect()V

    .line 1188
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->doRequest()V

    .line 1196
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    .line 1197
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uis:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1205
    iget-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->doOutput:Z

    if-nez v4, :cond_0

    .line 1206
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "luni.29"

    invoke-static {v5}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1210
    :cond_0
    iget-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sentRequest:Z

    if-eqz v4, :cond_1

    .line 1211
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "luni.2A"

    invoke-static {v5}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1214
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    if-eqz v4, :cond_2

    .line 1215
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    .line 1262
    :goto_0
    return-object v4

    .line 1219
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v5, "GET"

    if-ne v4, v5, :cond_3

    .line 1220
    const-string v4, "POST"

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 1224
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v5, "PUT"

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v5, "POST"

    if-eq v4, v5, :cond_4

    .line 1225
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "luni.2B"

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1228
    :cond_4
    const/4 v3, -0x1

    .line 1229
    .local v3, limit:I
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v5, "Content-Length"

    invoke-virtual {v4, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, contentLength:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1231
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1234
    :cond_5
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v4, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1235
    .local v1, encoding:Ljava/lang/String;
    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    if-lez v4, :cond_6

    if-eqz v1, :cond_6

    .line 1236
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1237
    const-string v4, "chunked"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1238
    iput-boolean v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sendChunked:Z

    .line 1239
    const/4 v3, -0x1

    .line 1243
    :cond_6
    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->chunkLength:I

    if-lez v4, :cond_7

    .line 1244
    iput-boolean v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sendChunked:Z

    .line 1245
    const/4 v3, -0x1

    .line 1248
    :cond_7
    const/4 v2, 0x0

    .line 1249
    .local v2, fixedMode:Z
    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    if-ltz v4, :cond_8

    .line 1250
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    .line 1251
    const/4 v2, 0x1

    .line 1253
    :cond_8
    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    if-lez v4, :cond_9

    iget-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sendChunked:Z

    if-nez v4, :cond_a

    :cond_9
    if-ltz v3, :cond_b

    .line 1254
    :cond_a
    new-instance v4, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-direct {v4, p0, v3, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;IZ)V

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    .line 1255
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->doRequest()V

    .line 1256
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    goto :goto_0

    .line 1258
    :cond_b
    iget-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-nez v4, :cond_c

    .line 1260
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connect()V

    .line 1262
    :cond_c
    new-instance v4, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    invoke-direct {v4, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$HttpOutputStream;

    goto/16 :goto_0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1268
    new-instance v0, Ljava/net/SocketPermission;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHostPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1269
    const-string v2, "connect, resolve"

    .line 1268
    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1274
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 1275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.27"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1277
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getFieldMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 1282
    if-nez p1, :cond_0

    .line 1283
    const/4 v0, 0x0

    .line 1285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1293
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connect()V

    .line 1294
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->doRequest()V

    .line 1295
    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    if-eq v4, v3, :cond_1

    .line 1296
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    .line 1318
    :cond_0
    :goto_0
    return v3

    .line 1298
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    .line 1299
    .local v2, response:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "HTTP/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1302
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1303
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 1304
    .local v1, mark:I
    if-eqz v1, :cond_0

    .line 1307
    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_2

    .line 1308
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    .line 1310
    :cond_2
    add-int/lit8 v0, v1, 0x3

    .line 1311
    .local v0, last:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 1312
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1314
    :cond_3
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    .line 1315
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 1316
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseMessage:Ljava/lang/String;

    .line 1318
    :cond_4
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    goto :goto_0
.end method

.method readHeaders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1339
    :goto_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readln()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 1349
    :cond_0
    return-void

    .line 1342
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, idx:I
    if-gez v0, :cond_2

    .line 1343
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v3, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1345
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1346
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1345
    invoke-virtual {v2, v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method readServerResponse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 1382
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1384
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    .line 1385
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseMessage:Ljava/lang/String;

    .line 1386
    new-instance v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-direct {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 1387
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readln()Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1390
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->setStatusLine(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readHeaders()V

    .line 1393
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 1395
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v2, "HEAD"

    if-eq v1, v2, :cond_3

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    if-lt v1, v3, :cond_2

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    .line 1396
    :cond_2
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_3

    .line 1397
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v2, 0x130

    if-ne v1, v2, :cond_4

    .line 1398
    :cond_3
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->disconnect()V

    .line 1399
    new-instance v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$LimitedInputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;I)V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uis:Ljava/io/InputStream;

    .line 1401
    :cond_4
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->putToCache()V

    .line 1402
    return-void
.end method

.method readln()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    .line 1357
    const/4 v1, 0x0

    .line 1358
    .local v1, lastCr:Z
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1359
    .local v2, result:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1360
    .local v0, c:I
    if-gez v0, :cond_3

    .line 1361
    const/4 v3, 0x0

    .line 1378
    :goto_0
    return-object v3

    .line 1364
    :cond_0
    if-eqz v1, :cond_1

    .line 1365
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1366
    const/4 v1, 0x0

    .line 1368
    :cond_1
    if-ne v0, v4, :cond_2

    .line 1369
    const/4 v1, 0x1

    .line 1373
    :goto_1
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1374
    if-gez v0, :cond_3

    .line 1378
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1371
    :cond_2
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1363
    :cond_3
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    goto :goto_2
.end method

.method protected requestString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1405
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxyName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1406
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1412
    :cond_1
    :goto_0
    return-object v0

    .line 1408
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 1409
    .local v0, file:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1410
    :cond_3
    const-string v0, "/"

    goto :goto_0
.end method

.method public setIfModifiedSince(J)V
    .locals 4
    .parameter "newValue"

    .prologue
    .line 1463
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 1465
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 1466
    const-string v2, "E, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1465
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1467
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1468
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, date:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v3, "If-Modified-Since"

    invoke-virtual {v2, v3, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 1495
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 1496
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.2C"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1498
    :cond_0
    if-nez p1, :cond_1

    .line 1499
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1501
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    return-void
.end method

.method protected setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V
    .locals 1
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1512
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    .line 1513
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->is:Ljava/io/InputStream;

    .line 1514
    return-void
.end method

.method public usingProxy()Z
    .locals 2

    .prologue
    .line 1518
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
