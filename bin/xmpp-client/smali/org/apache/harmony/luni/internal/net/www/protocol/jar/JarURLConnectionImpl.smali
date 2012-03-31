.class public Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;
.super Ljava/net/JarURLConnection;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;
    }
.end annotation


# static fields
.field static jarCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/URL;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field private final jarFileURL:Ljava/net/URL;

.field private jarInput:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    .line 135
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 136
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->closed:Z

    return-void
.end method

.method public static closeCachedFiles()V
    .locals 5

    .prologue
    .line 97
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 98
    .local v1, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/util/jar/JarFile;>;>;"
    sget-object v4, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 99
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/util/jar/JarFile;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    return-void

    .line 102
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipFile;

    .line 103
    .local v2, zip:Ljava/util/zip/ZipFile;
    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 98
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/util/jar/JarFile;>;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private findJarEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, entryName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 164
    :cond_0
    return-void

    .line 159
    :cond_1
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, decodedName:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    .line 161
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private findJarFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, jar:Ljava/util/jar/JarFile;
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getUseCaches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    sget-object v2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 176
    :try_start_0
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 175
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    .line 180
    sget-object v2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 181
    :try_start_1
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 182
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_1

    .line 183
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 180
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_3

    .line 195
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 175
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 186
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    .line 180
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 191
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    goto :goto_1

    .line 197
    :cond_3
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connected:Z

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->findJarFile()V

    .line 145
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->findJarEntry()V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connected:Z

    .line 148
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 219
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 222
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentLength()I
    .locals 2

    .prologue
    .line 236
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 237
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 244
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    const-string v0, "x-java/jar"

    .line 278
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    const/4 v0, 0x0

    .line 262
    .local v0, cType:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, entryName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 266
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_1
    if-nez v0, :cond_0

    .line 276
    const-string v0, "content/unknown"

    goto :goto_0

    .line 269
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 270
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 271
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->closed:Z

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.33"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 301
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    .line 308
    :goto_0
    return-object v0

    .line 304
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_2

    .line 306
    new-instance v0, Ljava/io/IOException;

    const-string v1, "luni.34"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_2
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;

    .line 309
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V

    .line 308
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 324
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 340
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method openJarFile()Ljava/util/jar/JarFile;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 367
    const/4 v1, 0x0

    .line 368
    .local v1, jar:Ljava/util/jar/JarFile;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    new-instance v1, Ljava/util/jar/JarFile;

    .end local v1           #jar:Ljava/util/jar/JarFile;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 370
    const-string v5, "UTF-8"

    .line 369
    invoke-static {v3, v4, v5}, Lorg/apache/harmony/luni/util/Util;->decode(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v6, v6}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 412
    .restart local v1       #jar:Ljava/util/jar/JarFile;
    :cond_0
    :goto_0
    return-object v1

    .line 372
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 375
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;

    invoke-direct {v2, p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Ljava/io/InputStream;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #jar:Ljava/util/jar/JarFile;
    check-cast v1, Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .restart local v1       #jar:Ljava/util/jar/JarFile;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 405
    .end local v1           #jar:Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v2

    .line 406
    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 409
    :cond_2
    throw v2
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .parameter "defaultusecaches"

    .prologue
    .line 417
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 418
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .parameter "usecaches"

    .prologue
    .line 422
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 423
    return-void
.end method
