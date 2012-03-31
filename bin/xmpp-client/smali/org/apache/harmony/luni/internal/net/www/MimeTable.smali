.class public Lorg/apache/harmony/luni/internal/net/www/MimeTable;
.super Ljava/lang/Object;
.source "MimeTable.java"

# interfaces
.implements Ljava/net/FileNameMap;


# static fields
.field public static final UNKNOWN:Ljava/lang/String; = "content/unknown"

.field public static final types:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    .line 47
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    const-string v1, "text"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    const-string v1, "htm"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Lorg/apache/harmony/luni/internal/net/www/MimeTable$1;

    invoke-direct {v1, p0}, Lorg/apache/harmony/luni/internal/net/www/MimeTable$1;-><init>(Lorg/apache/harmony/luni/internal/net/www/MimeTable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 69
    .local v0, str:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 75
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/apache/harmony/luni/internal/net/www/MimeTable;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->getContentTypes()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getContentTypes()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 120
    const-string v3, "content.types.user.table"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, userTable:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 123
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v3

    .line 124
    :catch_0
    move-exception v3

    .line 130
    :cond_0
    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, javahome:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lib"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "content-types.properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, contentFile:Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 135
    :catch_1
    move-exception v3

    .line 139
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filename"

    .prologue
    .line 93
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    :goto_0
    return-object v3

    .line 97
    :cond_0
    const/16 v3, 0x23

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 98
    .local v2, lastCharInExtension:I
    if-gez v2, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 101
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 102
    .local v1, firstCharInExtension:I
    const-string v0, ""

    .line 103
    .local v0, ext:Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v1, v3, :cond_2

    .line 104
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_2
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
