.class public interface abstract Lorg/apache/harmony/security/fortress/SecurityAccess;
.super Ljava/lang/Object;
.source "SecurityAccess.java"


# virtual methods
.method public abstract getAliases(Ljava/security/Provider$Service;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider$Service;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getService(Ljava/security/Provider;Ljava/lang/String;)Ljava/security/Provider$Service;
.end method

.method public abstract renumProviders()V
.end method
