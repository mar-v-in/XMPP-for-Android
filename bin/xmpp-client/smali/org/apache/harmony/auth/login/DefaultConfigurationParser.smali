.class public Lorg/apache/harmony/auth/login/DefaultConfigurationParser;
.super Ljava/lang/Object;
.source "DefaultConfigurationParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;
    }
.end annotation


# static fields
.field private static final debug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configParser(Ljava/net/URL;Ljava/util/Properties;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .parameter "location"
    .parameter "system"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Properties;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/PrivilegedActionException;,
            Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 83
    .local p2, newConfig:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;>;>;"
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 84
    new-instance v1, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;

    invoke-direct {v1, p0}, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;-><init>(Ljava/net/URL;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 83
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v0, source:Ljava/io/Reader;
    :try_start_0
    invoke-static {v0, p2, p1}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->scanStream(Ljava/io/Reader;Ljava/util/Map;Ljava/util/Properties;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 89
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 92
    return-object p2

    .line 88
    :catchall_0
    move-exception v1

    .line 89
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 90
    throw v1
.end method

.method private static hasToken(Ljava/io/StreamTokenizer;C)V
    .locals 3
    .parameter "st"
    .parameter "ttype"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 100
    iget v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v0, p1, :cond_0

    .line 101
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 106
    return-void

    .line 103
    :cond_0
    new-instance v0, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;

    .line 104
    const-string v1, "auth.51"

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v1, v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseApplicationName(Ljava/io/StreamTokenizer;)Ljava/lang/String;
    .locals 4
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 119
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    .line 120
    new-instance v1, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;

    .line 121
    const-string v2, "auth.4C"

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v2, v3}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 129
    .local v0, appName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 131
    return-object v0
.end method

.method private static parseControlFlag(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;
    .locals 3
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 142
    const-string v0, "required"

    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->REQUIRED:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    .line 149
    :goto_0
    return-object v0

    .line 144
    :cond_0
    const-string v0, "requisite"

    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->REQUISITE:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    goto :goto_0

    .line 146
    :cond_1
    const-string v0, "optional"

    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    sget-object v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->OPTIONAL:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    goto :goto_0

    .line 148
    :cond_2
    const-string v0, "sufficient"

    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    sget-object v0, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->SUFFICIENT:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    goto :goto_0

    .line 151
    :cond_3
    new-instance v0, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;

    .line 152
    const-string v1, "auth.4F"

    iget-object v2, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 151
    invoke-static {v1, v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseModuleClass(Ljava/io/StreamTokenizer;)Ljava/lang/String;
    .locals 3
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 162
    iget v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    .line 163
    new-instance v0, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;

    .line 164
    const-string v1, "auth.4E"

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v1, v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    return-object v0
.end method

.method private static parseModuleOptions(Ljava/io/StreamTokenizer;Ljava/util/Properties;)Ljava/util/Map;
    .locals 6
    .parameter "st"
    .parameter "system"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/StreamTokenizer;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3b

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v1, options:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 179
    :goto_0
    iget v3, p0, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v3, v5, :cond_0

    .line 209
    invoke-static {p0, v5}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->hasToken(Ljava/io/StreamTokenizer;C)V

    .line 211
    return-object v1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 181
    .local v0, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 183
    .local v2, val:Ljava/lang/String;
    iget v3, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_4

    .line 184
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 186
    iget v3, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3

    .line 187
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 188
    invoke-static {}, Lorg/apache/harmony/security/fortress/PolicyUtils;->canExpandProperties()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    :try_start_0
    iget-object v3, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v3, p1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 204
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 205
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_2
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_0

    .line 196
    :cond_3
    new-instance v3, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;

    .line 197
    const-string v4, "auth.50"

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-static {v4, v5}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :cond_4
    new-instance v3, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;

    .line 201
    const-string v4, "auth.50"

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-static {v4, v5}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static scanStream(Ljava/io/Reader;Ljava/util/Map;Ljava/util/Properties;)Ljava/util/Map;
    .locals 12
    .parameter "source"
    .parameter
    .parameter "system"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;",
            ">;>;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;
        }
    .end annotation

    .prologue
    .local p1, newConfig:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;>;>;"
    const/16 v11, 0x5f

    const/16 v10, 0x40

    const/16 v9, 0x2d

    const/16 v8, 0x24

    const/4 v7, 0x1

    .line 224
    new-instance v6, Ljava/io/StreamTokenizer;

    invoke-direct {v6, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 226
    .local v6, st:Ljava/io/StreamTokenizer;
    invoke-virtual {v6, v7}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    .line 227
    invoke-virtual {v6, v7}, Ljava/io/StreamTokenizer;->slashStarComments(Z)V

    .line 228
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/io/StreamTokenizer;->eolIsSignificant(Z)V

    .line 229
    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 230
    invoke-virtual {v6, v8, v8}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 231
    invoke-virtual {v6, v10, v10}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 232
    invoke-virtual {v6, v11, v11}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 233
    invoke-virtual {v6, v9, v9}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 235
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 236
    :goto_0
    iget v7, v6, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 269
    return-object p1

    .line 237
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 239
    .local v1, entriesList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;>;"
    const/4 v0, 0x0

    .line 240
    .local v0, appName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 244
    .local v4, loginModuleName:Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->parseApplicationName(Ljava/io/StreamTokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 245
    const/16 v7, 0x7b

    invoke-static {v6, v7}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->hasToken(Ljava/io/StreamTokenizer;C)V

    .line 246
    :goto_1
    iget v7, v6, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v8, 0x7d

    if-ne v7, v8, :cond_1

    .line 260
    const/16 v7, 0x7d

    invoke-static {v6, v7}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->hasToken(Ljava/io/StreamTokenizer;C)V

    .line 261
    const/16 v7, 0x3b

    invoke-static {v6, v7}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->hasToken(Ljava/io/StreamTokenizer;C)V

    .line 263
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    new-instance v7, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;

    .line 265
    const-string v8, "auth.4B"

    .line 264
    invoke-static {v8, v0}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 247
    :cond_1
    invoke-static {v6}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->parseModuleClass(Ljava/io/StreamTokenizer;)Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-static {v6}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->parseControlFlag(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    move-result-object v3

    .line 249
    .local v3, flag:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;
    invoke-static {v6, p2}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->parseModuleOptions(Ljava/io/StreamTokenizer;Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v5

    .line 250
    .local v5, options:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v2, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    invoke-direct {v2, v4, v3, v5}, Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;-><init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;Ljava/util/Map;)V

    .line 252
    .local v2, entry:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    .end local v2           #entry:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    .end local v3           #flag:Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;
    .end local v5           #options:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
