.class Lorg/apache/harmony/jndi/internal/EnvironmentReader$SystemPropertiesSource;
.super Ljava/lang/Object;
.source "EnvironmentReader.java"

# interfaces
.implements Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/internal/EnvironmentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemPropertiesSource"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "propName"

    .prologue
    .line 66
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
