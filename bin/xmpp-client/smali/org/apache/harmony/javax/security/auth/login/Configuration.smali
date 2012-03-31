.class public abstract Lorg/apache/harmony/javax/security/auth/login/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;,
        Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;
    }
.end annotation


# static fields
.field private static final GET_LOGIN_CONFIGURATION:Ljavax/security/auth/AuthPermission; = null

.field private static final LOGIN_CONFIGURATION_PROVIDER:Ljava/lang/String; = "login.configuration.provider"

.field private static final SET_LOGIN_CONFIGURATION:Ljavax/security/auth/AuthPermission;

.field private static configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljavax/security/auth/AuthPermission;

    .line 92
    const-string v1, "getLoginConfiguration"

    .line 91
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/login/Configuration;->GET_LOGIN_CONFIGURATION:Ljavax/security/auth/AuthPermission;

    .line 95
    new-instance v0, Ljavax/security/auth/AuthPermission;

    .line 96
    const-string v1, "setLoginConfiguration"

    .line 95
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/login/Configuration;->SET_LOGIN_CONFIGURATION:Ljavax/security/auth/AuthPermission;

    .line 30
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method

.method static getAccessibleConfiguration()Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .locals 3

    .prologue
    .line 108
    sget-object v0, Lorg/apache/harmony/javax/security/auth/login/Configuration;->configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .line 109
    .local v0, current:Lorg/apache/harmony/javax/security/auth/login/Configuration;
    if-nez v0, :cond_1

    .line 110
    const-class v2, Lorg/apache/harmony/javax/security/auth/login/Configuration;

    monitor-enter v2

    .line 111
    :try_start_0
    sget-object v1, Lorg/apache/harmony/javax/security/auth/login/Configuration;->configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;

    if-nez v1, :cond_0

    .line 112
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getDefaultProvider()Lorg/apache/harmony/javax/security/auth/login/Configuration;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/javax/security/auth/login/Configuration;->configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .line 114
    :cond_0
    sget-object v0, Lorg/apache/harmony/javax/security/auth/login/Configuration;->configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .end local v0           #current:Lorg/apache/harmony/javax/security/auth/login/Configuration;
    monitor-exit v2

    .line 117
    :cond_1
    return-object v0

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getConfiguration()Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 122
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 123
    sget-object v1, Lorg/apache/harmony/javax/security/auth/login/Configuration;->GET_LOGIN_CONFIGURATION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 125
    :cond_0
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAccessibleConfiguration()Lorg/apache/harmony/javax/security/auth/login/Configuration;

    move-result-object v1

    return-object v1
.end method

.method private static final getDefaultProvider()Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;

    .line 137
    const-string v1, "login.configuration.provider"

    const-class v2, Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .line 136
    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .line 135
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;)Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .locals 6
    .parameter "type"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 182
    :goto_1
    if-nez v0, :cond_1

    .line 183
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v2}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    throw v2

    .line 174
    :cond_0
    aget-object v1, v3, v2

    .line 176
    .local v1, provider:Ljava/security/Provider;
    :try_start_0
    invoke-static {p0, p1, v1}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getInstance(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;Ljava/security/Provider;)Lorg/apache/harmony/javax/security/auth/login/Configuration;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v5

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v1           #provider:Ljava/security/Provider;
    :cond_1
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;Ljava/lang/String;)Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .locals 2
    .parameter "type"
    .parameter "params"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 272
    .local v0, pro:Ljava/security/Provider;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 275
    :cond_1
    if-nez v0, :cond_2

    .line 276
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1}, Ljava/security/NoSuchProviderException;-><init>()V

    throw v1

    .line 278
    :cond_2
    invoke-static {p0, p1, v0}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getInstance(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;Ljava/security/Provider;)Lorg/apache/harmony/javax/security/auth/login/Configuration;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;Ljava/security/Provider;)Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .locals 3
    .parameter "type"
    .parameter "params"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 220
    if-nez p0, :cond_0

    .line 221
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 223
    :cond_0
    if-nez p2, :cond_1

    .line 224
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 226
    :cond_1
    const-string v2, "Configuration"

    invoke-virtual {p2, v2, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 228
    .local v1, service:Ljava/security/Provider$Service;
    if-nez v1, :cond_2

    .line 229
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v2, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_2
    invoke-virtual {v1, p1}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;

    .line 233
    .local v0, configurationSpi:Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;
    new-instance v2, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;

    invoke-direct {v2, v0, p2, p0, p1}, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;-><init>(Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;Ljava/security/Provider;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;)V

    return-object v2
.end method

.method public static setConfiguration(Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
    .locals 2
    .parameter "configuration"

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 283
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 284
    sget-object v1, Lorg/apache/harmony/javax/security/auth/login/Configuration;->SET_LOGIN_CONFIGURATION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 286
    :cond_0
    sput-object p0, Lorg/apache/harmony/javax/security/auth/login/Configuration;->configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .line 287
    return-void
.end method


# virtual methods
.method public abstract getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
.end method

.method public getParameters()Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method
