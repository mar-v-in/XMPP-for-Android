.class public interface abstract Lorg/apache/harmony/javax/security/auth/spi/LoginModule;
.super Ljava/lang/Object;
.source "LoginModule.java"


# virtual methods
.method public abstract abort()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract commit()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract initialize(Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/Subject;",
            "Ljavax/security/auth/callback/CallbackHandler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract login()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract logout()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method
