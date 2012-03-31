.class Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;
.super Lorg/apache/harmony/javax/security/auth/login/Configuration;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/security/auth/login/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerConfiguration"
.end annotation


# instance fields
.field private final configurationSpi:Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;

.field private final parameters:Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;

.field private final provider:Ljava/security/Provider;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;Ljava/security/Provider;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;)V
    .locals 0
    .parameter "configurationSpi"
    .parameter "provider"
    .parameter "type"
    .parameter "parameters"

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/Configuration;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;->configurationSpi:Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;

    .line 45
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;->provider:Ljava/security/Provider;

    .line 46
    iput-object p3, p0, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;->type:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;->parameters:Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;

    .line 48
    return-void
.end method


# virtual methods
.method public getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    .locals 1
    .parameter "applicationName"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;->configurationSpi:Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;

    .line 54
    invoke-virtual {v0, p1}, Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;->engineGetAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public getParameters()Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;->parameters:Lorg/apache/harmony/javax/security/auth/login/Configuration$Parameters;

    return-object v0
.end method

.method public getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;->type:Ljava/lang/String;

    return-object v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/Configuration$InnerConfiguration;->configurationSpi:Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;->engineRefresh()V

    .line 75
    return-void
.end method
