.class public interface abstract Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;
.super Ljava/lang/Object;
.source "SaslServerFactory.java"


# virtual methods
.method public abstract createSaslServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslServer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljavax/security/auth/callback/CallbackHandler;",
            ")",
            "Lorg/apache/harmony/javax/security/sasl/SaslServer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation
.end method

.method public abstract getMechanismNames(Ljava/util/Map;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
