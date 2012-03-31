.class public Lorg/apache/harmony/luni/internal/net/www/protocol/jar/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .parameter "u"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 15
    .parameter "url"
    .parameter "spec"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, file:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 63
    const-string v9, ""

    .line 65
    :cond_0
    move/from16 v0, p4

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 66
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 70
    :goto_0
    const-string v2, "!/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v2, "!/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 71
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "luni.32"

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_1
    const-string p2, ""

    goto :goto_0

    .line 73
    :cond_2
    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    move-object/from16 v9, p2

    .line 86
    :goto_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const-string v4, "jar"

    const-string v5, ""

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/Handler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 75
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 78
    :cond_4
    const/16 v2, 0x21

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 79
    .local v13, idx:I
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v13, 0x1

    const/16 v4, 0x2f

    invoke-virtual {v9, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 81
    .local v14, tmpFile:Ljava/lang/String;
    invoke-static {v14}, Lorg/apache/harmony/luni/util/URLUtil;->canonicalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 87
    .end local v13           #idx:I
    .end local v14           #tmpFile:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 88
    .local v12, e:Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v12}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, ref:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
