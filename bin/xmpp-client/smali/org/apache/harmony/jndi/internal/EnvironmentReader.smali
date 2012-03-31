.class public final Lorg/apache/harmony/jndi/internal/EnvironmentReader;
.super Ljava/lang/Object;
.source "EnvironmentReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;,
        Lorg/apache/harmony/jndi/internal/EnvironmentReader$SystemPropertiesSource;
    }
.end annotation


# static fields
.field private static final APPLICATION_RESOURCE_FILE:Ljava/lang/String; = "jndi.properties"

.field private static final PROVIDER_RESOURCE_FILE:Ljava/lang/String; = "jndiprovider.properties"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    return-void
.end method

.method static filterProperties(Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;)Ljava/util/Hashtable;
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 86
    .local v0, filteredProperties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 88
    .local v1, propValue:Ljava/lang/String;
    const-string v2, "java.naming.factory.initial"

    invoke-interface {p0, v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    const-string v2, "java.naming.factory.initial"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    const-string v2, "java.naming.dns.url"

    invoke-interface {p0, v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    const-string v2, "java.naming.dns.url"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    const-string v2, "java.naming.provider.url"

    invoke-interface {p0, v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    const-string v2, "java.naming.provider.url"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_2
    const-string v2, "java.naming.factory.object"

    invoke-interface {p0, v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    const-string v2, "java.naming.factory.object"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_3
    const-string v2, "java.naming.factory.state"

    invoke-interface {p0, v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    const-string v2, "java.naming.factory.state"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_4
    const-string v2, "java.naming.factory.url.pkgs"

    invoke-interface {p0, v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_5

    .line 115
    const-string v2, "java.naming.factory.url.pkgs"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_5
    const-string v2, "java.naming.factory.control"

    invoke-interface {p0, v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_6

    .line 120
    const-string v2, "java.naming.factory.control"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_6
    return-object v0
.end method

.method public static getFactoryNamesFromEnvironmentAndProviderResource(Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "ctx"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 140
    .local p0, envmt:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, fnames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 146
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ":"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v2, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_3

    .line 153
    .end local v2           #st:Ljava/util/StringTokenizer;
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 154
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 156
    .local v1, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-static {p1, v1}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->readProviderResourceFiles(Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 157
    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    .restart local v3       #str:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 159
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ":"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .restart local v2       #st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_4

    .line 167
    .end local v1           #h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2           #st:Ljava/util/StringTokenizer;
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    const-string v4, "java.naming.factory.url.pkgs"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    const-string v4, "com.sun.jndi.url"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v4, "org.apache.harmony.jndi.provider"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    .line 148
    .restart local v2       #st:Ljava/util/StringTokenizer;
    .restart local v3       #str:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .restart local v1       #h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static mergeEnvironment(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter "valueAddToList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, src:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    .local p1, dst:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, key:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 187
    .local v2, val:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 189
    .end local v0           #key:Ljava/lang/Object;
    .local v1, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    return-void

    .line 190
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 192
    .restart local v0       #key:Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 196
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    :cond_2
    if-eqz p2, :cond_0

    .line 198
    const-string v3, "java.naming.factory.control"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 199
    const-string v3, "java.naming.factory.object"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 200
    const-string v3, "java.naming.factory.state"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "java.naming.factory.url.pkgs"

    .line 201
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    :cond_3
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #val:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 210
    .restart local v2       #val:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static readApplicationResourceFiles(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 232
    .local p0, existingProps:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v2, Lorg/apache/harmony/jndi/internal/EnvironmentReader$1;

    invoke-direct {v2, p0}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$1;-><init>(Ljava/util/Hashtable;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    return-object p0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 244
    .local v1, rootCause:Ljava/lang/Exception;
    instance-of v2, v1, Lorg/apache/harmony/javax/naming/NamingException;

    if-eqz v2, :cond_1

    .line 245
    check-cast v1, Lorg/apache/harmony/javax/naming/NamingException;

    .end local v1           #rootCause:Ljava/lang/Exception;
    throw v1

    .line 246
    .restart local v1       #rootCause:Ljava/lang/Exception;
    :cond_1
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 247
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #rootCause:Ljava/lang/Exception;
    throw v1
.end method

.method public static readLibraryResourceFile(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 266
    .local p0, existingProps:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v9, "file.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, sep:Ljava/lang/String;
    const/4 v7, 0x0

    .line 270
    .local v7, resPath:Ljava/lang/String;
    new-instance v9, Lorg/apache/harmony/jndi/internal/EnvironmentReader$2;

    invoke-direct {v9}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$2;-><init>()V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #resPath:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 277
    .restart local v7       #resPath:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 278
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 280
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "lib"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "jndi.properties"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 283
    const/4 v2, 0x0

    .line 284
    .local v2, is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v5, resFile:Ljava/io/File;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 288
    .local v4, p:Ljava/util/Properties;
    new-instance v9, Lorg/apache/harmony/jndi/internal/EnvironmentReader$3;

    invoke-direct {v9, v5}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$3;-><init>(Ljava/io/File;)V

    .line 287
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 293
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 294
    .local v6, resFileExists:Z
    if-eqz v6, :cond_1

    .line 298
    :try_start_0
    new-instance v9, Lorg/apache/harmony/jndi/internal/EnvironmentReader$4;

    invoke-direct {v9, v5, v4}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$4;-><init>(Ljava/io/File;Ljava/util/Properties;)V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/InputStream;

    move-object v2, v0

    .line 307
    const/4 v9, 0x1

    invoke-static {v4, p0, v9}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->mergeEnvironment(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    if-eqz v2, :cond_1

    .line 319
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 326
    :cond_1
    :goto_0
    return-object p0

    .line 308
    :catch_0
    move-exception v1

    .line 312
    .local v1, e:Ljava/security/PrivilegedActionException;
    :try_start_2
    new-instance v3, Lorg/apache/harmony/javax/naming/ConfigurationException;

    .line 313
    const-string v9, "jndi.25"

    invoke-static {v9}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 312
    invoke-direct {v3, v9}, Lorg/apache/harmony/javax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    .line 314
    .local v3, newEx:Lorg/apache/harmony/javax/naming/ConfigurationException;
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/apache/harmony/javax/naming/ConfigurationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 315
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    .end local v1           #e:Ljava/security/PrivilegedActionException;
    .end local v3           #newEx:Lorg/apache/harmony/javax/naming/ConfigurationException;
    :catchall_0
    move-exception v9

    .line 318
    if-eqz v2, :cond_2

    .line 319
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 324
    :cond_2
    :goto_1
    throw v9

    .line 321
    :catch_1
    move-exception v10

    goto :goto_1

    :catch_2
    move-exception v9

    goto :goto_0
.end method

.method static readMultipleResourceFiles(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/ClassLoader;)Ljava/util/Hashtable;
    .locals 8
    .parameter "name"
    .parameter
    .parameter "cl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 341
    .local p1, existingProps:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 342
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 345
    :cond_0
    const/4 v0, 0x0

    .line 348
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :try_start_0
    invoke-virtual {p2, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 359
    const/4 v5, 0x0

    .line 360
    .local v5, url:Ljava/net/URL;
    const/4 v2, 0x0

    .line 361
    .local v2, is:Ljava/io/InputStream;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 362
    .local v4, p:Ljava/util/Properties;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    .line 389
    return-object p1

    .line 349
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #p:Ljava/util/Properties;
    .end local v5           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 352
    .local v1, ex:Ljava/io/IOException;
    new-instance v3, Lorg/apache/harmony/javax/naming/ConfigurationException;

    .line 353
    const-string v6, "jndi.23"

    invoke-static {v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 352
    invoke-direct {v3, v6}, Lorg/apache/harmony/javax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    .line 354
    .local v3, newEx:Lorg/apache/harmony/javax/naming/ConfigurationException;
    invoke-virtual {v3, v1}, Lorg/apache/harmony/javax/naming/ConfigurationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 355
    throw v3

    .line 363
    .end local v1           #ex:Ljava/io/IOException;
    .end local v3           #newEx:Lorg/apache/harmony/javax/naming/ConfigurationException;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #p:Ljava/util/Properties;
    .restart local v5       #url:Ljava/net/URL;
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #url:Ljava/net/URL;
    check-cast v5, Ljava/net/URL;

    .line 365
    .restart local v5       #url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 366
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 367
    const/4 v6, 0x1

    invoke-static {v4, p1, v6}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->mergeEnvironment(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    .line 368
    invoke-virtual {v4}, Ljava/util/Properties;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 379
    :cond_2
    if-eqz v2, :cond_3

    .line 380
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 385
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 370
    :catch_1
    move-exception v1

    .line 373
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_3
    new-instance v3, Lorg/apache/harmony/javax/naming/ConfigurationException;

    .line 374
    const-string v6, "jndi.24"

    invoke-static {v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 373
    invoke-direct {v3, v6}, Lorg/apache/harmony/javax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local v3       #newEx:Lorg/apache/harmony/javax/naming/ConfigurationException;
    invoke-virtual {v3, v1}, Lorg/apache/harmony/javax/naming/ConfigurationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 376
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    .end local v1           #ex:Ljava/io/IOException;
    .end local v3           #newEx:Lorg/apache/harmony/javax/naming/ConfigurationException;
    :catchall_0
    move-exception v6

    .line 379
    if-eqz v2, :cond_4

    .line 380
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 385
    :cond_4
    const/4 v2, 0x0

    .line 387
    :goto_1
    throw v6

    .line 382
    :catch_2
    move-exception v7

    .line 385
    const/4 v2, 0x0

    goto :goto_1

    .line 384
    :catchall_1
    move-exception v6

    .line 385
    const/4 v2, 0x0

    .line 386
    throw v6

    .line 382
    :catch_3
    move-exception v6

    .line 385
    const/4 v2, 0x0

    goto :goto_0

    .line 384
    :catchall_2
    move-exception v6

    .line 385
    const/4 v2, 0x0

    .line 386
    throw v6
.end method

.method public static readProviderResourceFiles(Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .local p1, existingProps:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/16 v8, 0x2e

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, factory:Ljava/lang/String;
    const/4 v4, 0x0

    .line 404
    .local v4, resPath:Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 407
    .local v3, len:I
    const/4 v6, -0x1

    if-ne v6, v3, :cond_0

    .line 409
    const-string v4, "jndiprovider.properties"

    .line 419
    :goto_0
    move-object v2, v4

    .line 421
    .local v2, finalResPath:Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/apache/harmony/jndi/internal/EnvironmentReader$5;

    invoke-direct {v6, v2, p1, p0}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$5;-><init>(Ljava/lang/String;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    return-object p1

    .line 412
    .end local v2           #finalResPath:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 413
    const/16 v6, 0x2f

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 414
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "jndiprovider.properties"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 430
    .restart local v2       #finalResPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v5

    .line 432
    .local v5, rootCause:Ljava/lang/Exception;
    instance-of v6, v5, Lorg/apache/harmony/javax/naming/NamingException;

    if-eqz v6, :cond_1

    .line 433
    check-cast v5, Lorg/apache/harmony/javax/naming/NamingException;

    .end local v5           #rootCause:Ljava/lang/Exception;
    throw v5

    .line 434
    .restart local v5       #rootCause:Ljava/lang/Exception;
    :cond_1
    instance-of v6, v5, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_2

    .line 435
    check-cast v5, Ljava/lang/RuntimeException;

    .end local v5           #rootCause:Ljava/lang/Exception;
    throw v5

    .line 438
    .restart local v5       #rootCause:Ljava/lang/Exception;
    :cond_2
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method

.method public static readSystemProperties(Ljava/util/Hashtable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, existingProps:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v1, Lorg/apache/harmony/jndi/internal/EnvironmentReader$6;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$6;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 465
    .local v0, systemProperties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->mergeEnvironment(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    .line 466
    return-void
.end method
