.class public Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;
.super Ljava/lang/Object;
.source "KrbConfig.java"


# static fields
.field private static final TT_END_SECTION:I = 0x5d

.field private static final TT_EQAUL:I = 0x3d

.field private static final TT_START_SECTION:I = 0x5b


# instance fields
.field private final values:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5f

    const/16 v6, 0x3a

    const/16 v5, 0x2f

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;->values:Ljava/util/Hashtable;

    .line 95
    new-instance v2, Ljava/io/StreamTokenizer;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 96
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 95
    invoke-direct {v2, v3}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 98
    .local v2, t:Ljava/io/StreamTokenizer;
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/io/StreamTokenizer;->commentChar(I)V

    .line 100
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 101
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 102
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 104
    invoke-virtual {v2, v7, v7}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 105
    invoke-virtual {v2, v6, v6}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 106
    invoke-virtual {v2, v5, v5}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 108
    invoke-virtual {v2}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 110
    invoke-direct {p0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;->nextSection(Ljava/io/StreamTokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, currentSection:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 126
    return-void

    .line 114
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;->values:Ljava/util/Hashtable;

    .line 115
    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 116
    .local v1, sectionValues:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 117
    new-instance v1, Ljava/util/Hashtable;

    .end local v1           #sectionValues:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 118
    .restart local v1       #sectionValues:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;->values:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;->parseSection(Ljava/io/StreamTokenizer;Ljava/util/Hashtable;)V

    .line 124
    invoke-direct {p0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;->nextSection(Ljava/io/StreamTokenizer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSystemConfig()Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 58
    const-string v3, "java.security.krb5.conf"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, fName:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "java.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/lib/security/krb5.conf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    new-instance v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;

    invoke-direct {v3, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;-><init>(Ljava/io/File;)V

    .line 81
    :goto_0
    return-object v3

    .line 67
    :cond_0
    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, OSName:Ljava/lang/String;
    const-string v3, "Windows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 69
    const-string v2, "c:\\winnt\\krb5.ini"

    .line 77
    .end local v0           #OSName:Ljava/lang/String;
    .end local v1           #f:Ljava/io/File;
    :cond_1
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    new-instance v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;

    invoke-direct {v3, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 70
    .restart local v0       #OSName:Ljava/lang/String;
    :cond_2
    const-string v3, "Linux"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 71
    const-string v2, "/etc/krb5.conf"

    goto :goto_1

    .line 73
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    .end local v0           #OSName:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private nextSection(Ljava/io/StreamTokenizer;)Ljava/lang/String;
    .locals 3
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :goto_0
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 159
    :goto_1
    return-object v0

    .line 141
    :cond_0
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    .line 142
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 147
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    .line 148
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 153
    .local v0, section:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 154
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_3

    .line 155
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_1
.end method

.method private parseSection(Ljava/io/StreamTokenizer;Ljava/util/Hashtable;)V
    .locals 5
    .parameter "t"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/StreamTokenizer;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, sectionValues:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, -0x3

    .line 170
    :goto_0
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 171
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 172
    :cond_0
    return-void

    .line 176
    :cond_1
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-eq v2, v4, :cond_2

    .line 177
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 181
    .local v0, tag:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 184
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_3

    .line 185
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 191
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-eq v2, v4, :cond_4

    .line 192
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_0

    .line 195
    :cond_4
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 196
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 198
    invoke-virtual {p2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "section"
    .parameter "tag"

    .prologue
    .line 129
    iget-object v1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;->values:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 130
    .local v0, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
