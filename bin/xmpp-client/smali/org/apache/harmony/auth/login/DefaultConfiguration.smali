.class public Lorg/apache/harmony/auth/login/DefaultConfiguration;
.super Lorg/apache/harmony/javax/security/auth/login/Configuration;
.source "DefaultConfiguration.java"


# static fields
.field private static final JAVA_SECURITY_LOGIN_CONFIG:Ljava/lang/String; = "java.security.auth.login.config"

.field private static final LOGIN_CONFIG_URL_PREFIX:Ljava/lang/String; = "login.config.url."

.field private static final REFRESH_LOGIN_CONFIGURATION:Ljavax/security/auth/AuthPermission;


# instance fields
.field private configurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljavax/security/auth/AuthPermission;

    .line 59
    const-string v1, "refreshLoginConfiguration"

    .line 58
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/auth/login/DefaultConfiguration;->REFRESH_LOGIN_CONFIGURATION:Ljavax/security/auth/AuthPermission;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/Configuration;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/auth/login/DefaultConfiguration;->configurations:Ljava/util/Map;

    .line 71
    invoke-direct {p0}, Lorg/apache/harmony/auth/login/DefaultConfiguration;->init()V

    .line 72
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, fresh:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;>;>;"
    new-instance v2, Ljava/util/Properties;

    .line 94
    new-instance v5, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;

    invoke-direct {v5}, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;-><init>()V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Properties;

    .line 93
    invoke-direct {v2, v5}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 95
    .local v2, system:Ljava/util/Properties;
    const-string v5, "/"

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v5, "java.security.auth.login.config"

    const-string v6, "login.config.url."

    .line 96
    invoke-static {v2, v5, v6}, Lorg/apache/harmony/security/fortress/PolicyUtils;->getPolicyURLs(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v1

    .line 99
    .local v1, policyLocations:[Ljava/net/URL;
    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 112
    array-length v5, v1

    if-nez v5, :cond_2

    .line 116
    new-instance v5, Lorg/apache/harmony/auth/login/DefaultConfiguration$1;

    invoke-direct {v5, p0}, Lorg/apache/harmony/auth/login/DefaultConfiguration$1;-><init>(Lorg/apache/harmony/auth/login/DefaultConfiguration;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 128
    .local v4, userLoginConfig:Ljava/io/File;
    if-nez v4, :cond_1

    .line 130
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "auth.53"

    invoke-static {v6}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 99
    .end local v4           #userLoginConfig:Ljava/io/File;
    :cond_0
    aget-object v3, v1, v5

    .line 101
    .local v3, url:Ljava/net/URL;
    :try_start_0
    invoke-static {v3, v2, v0}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->configParser(Ljava/net/URL;Ljava/util/Properties;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 135
    .end local v3           #url:Ljava/net/URL;
    .restart local v4       #userLoginConfig:Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v5

    .line 134
    invoke-static {v5, v2, v0}, Lorg/apache/harmony/auth/login/DefaultConfigurationParser;->configParser(Ljava/net/URL;Ljava/util/Properties;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .end local v4           #userLoginConfig:Ljava/io/File;
    :cond_2
    :goto_2
    iput-object v0, p0, Lorg/apache/harmony/auth/login/DefaultConfiguration;->configurations:Ljava/util/Map;

    .line 143
    return-void

    .line 136
    .restart local v4       #userLoginConfig:Ljava/io/File;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 103
    .end local v4           #userLoginConfig:Ljava/io/File;
    .restart local v3       #url:Ljava/net/URL;
    :catch_1
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    .locals 2
    .parameter "applicationName"

    .prologue
    .line 78
    iget-object v1, p0, Lorg/apache/harmony/auth/login/DefaultConfiguration;->configurations:Ljava/util/Map;

    .line 79
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 84
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    goto :goto_0
.end method

.method public declared-synchronized refresh()V
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 149
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 150
    sget-object v1, Lorg/apache/harmony/auth/login/DefaultConfiguration;->REFRESH_LOGIN_CONFIGURATION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/auth/login/DefaultConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 154
    invoke-direct {p0}, Lorg/apache/harmony/auth/login/DefaultConfiguration;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 148
    .end local v0           #sm:Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
