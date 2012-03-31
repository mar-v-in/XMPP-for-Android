.class Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;
.super Ljava/lang/Object;
.source "JarURLConnectionImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/jar/JarFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

.field private final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;->val$is:Ljava/io/InputStream;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;->run()Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/jar/JarFile;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 378
    const/4 v2, 0x0

    .line 381
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v6, "hyjar_"

    const-string v8, ".tmp"

    const/4 v9, 0x0

    .line 380
    invoke-static {v6, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 382
    .local v5, tempJar:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 383
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 384
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v6, 0x1000

    :try_start_1
    new-array v0, v6, [B

    .line 385
    .local v0, buf:[B
    const/4 v4, 0x0

    .line 386
    .local v4, nbytes:I
    :goto_0
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-gt v4, v6, :cond_1

    .line 389
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 390
    new-instance v6, Ljava/util/jar/JarFile;

    const/4 v8, 0x1

    .line 391
    const/4 v9, 0x5

    .line 390
    invoke-direct {v6, v5, v8, v9}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    if-eqz v3, :cond_0

    .line 398
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    move-object v2, v3

    .line 394
    .end local v0           #buf:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #nbytes:I
    .end local v5           #tempJar:Ljava/io/File;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_2
    return-object v6

    .line 387
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #nbytes:I
    .restart local v5       #tempJar:Ljava/io/File;
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 393
    .end local v0           #buf:[B
    .end local v4           #nbytes:I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 396
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #tempJar:Ljava/io/File;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v2, :cond_2

    .line 398
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    move-object v6, v7

    .line 394
    goto :goto_2

    .line 395
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 396
    :goto_5
    if-eqz v2, :cond_3

    .line 398
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 402
    :cond_3
    :goto_6
    throw v6

    .line 399
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #nbytes:I
    .restart local v5       #tempJar:Ljava/io/File;
    :catch_1
    move-exception v7

    goto :goto_1

    .end local v0           #buf:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #nbytes:I
    .end local v5           #tempJar:Ljava/io/File;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    goto :goto_4

    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_6

    .line 395
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #tempJar:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 393
    .end local v5           #tempJar:Ljava/io/File;
    :catch_4
    move-exception v1

    goto :goto_3
.end method
