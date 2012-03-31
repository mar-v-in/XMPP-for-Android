.class public Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;
.super Ljava/net/URLConnection;
.source "FileURLConnection.java"


# instance fields
.field fileName:Ljava/lang/String;

.field private final header:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private is:Ljava/io/InputStream;

.field private isDir:Z

.field private lastModified:J

.field private length:I

.field private permission:Ljava/io/FilePermission;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->length:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->lastModified:J

    .line 69
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/util/Util;->decode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->header:Ljava/util/LinkedHashMap;

    .line 75
    return-void
.end method

.method private getDirectoryListing(Ljava/io/File;)Ljava/io/InputStream;
    .locals 8
    .parameter "f"

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, fileList:[Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    .local v0, bytes:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 165
    .local v3, out:Ljava/io/PrintStream;
    const-string v4, "<title>Directory Listing</title>\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 166
    const-string v4, "<base href=\"file:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5c

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/\"><h1>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    const-string v5, "</h1>\n<hr>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 170
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_0

    .line 173
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 174
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v4

    .line 171
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<br>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateHeader()V
    .locals 7

    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, contentType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 281
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->header:Ljava/util/LinkedHashMap;

    const-string v3, "content-type"

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->length:I

    if-ltz v2, :cond_1

    .line 284
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->header:Ljava/util/LinkedHashMap;

    const-string v3, "content-length"

    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->length:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_1
    iget-wide v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->lastModified:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 287
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 288
    const-string v2, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    .line 287
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 289
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->header:Ljava/util/LinkedHashMap;

    const-string v3, "last-modified"

    new-instance v4, Ljava/util/Date;

    .line 290
    iget-wide v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->lastModified:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 289
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v1           #dateFormat:Ljava/text/SimpleDateFormat;
    :cond_2
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->isDir:Z

    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->getDirectoryListing(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    .line 95
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    .line 99
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->updateHeader()V

    .line 100
    return-void

    .line 91
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    .line 92
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->length:I

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->lastModified:J

    goto :goto_0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 112
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->length:I

    return v0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->isDir:Z

    if-eqz v2, :cond_2

    .line 137
    const-string v1, "text/plain"

    .line 153
    :cond_1
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/io/IOException;
    const-string v1, "content/unknown"

    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 145
    :try_start_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    invoke-static {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 149
    :goto_1
    if-nez v1, :cond_1

    .line 153
    const-string v1, "content/unknown"

    goto :goto_0

    .line 146
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 180
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->header:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 187
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->header:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, p1

    .line 189
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 195
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->header:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 207
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->header:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 214
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->header:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, p1

    .line 216
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connect()V

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 244
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->lastModified:J

    return-wide v0

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2f

    .line 265
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->permission:Ljava/io/FilePermission;

    if-nez v1, :cond_1

    .line 266
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    .line 267
    .local v0, path:Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v1, v2, :cond_0

    .line 268
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_0
    new-instance v1, Ljava/io/FilePermission;

    const-string v2, "read"

    invoke-direct {v1, v0, v2}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->permission:Ljava/io/FilePermission;

    .line 272
    .end local v0           #path:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->permission:Ljava/io/FilePermission;

    return-object v1
.end method
