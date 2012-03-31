.class public abstract Lorg/apache/harmony/javax/security/auth/login/ConfigurationSpi;
.super Ljava/lang/Object;
.source "ConfigurationSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract engineGetAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
.end method

.method protected engineRefresh()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
