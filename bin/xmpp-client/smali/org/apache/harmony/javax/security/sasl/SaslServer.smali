.class public interface abstract Lorg/apache/harmony/javax/security/sasl/SaslServer;
.super Ljava/lang/Object;
.source "SaslServer.java"


# virtual methods
.method public abstract dispose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation
.end method

.method public abstract evaluateResponse([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation
.end method

.method public abstract getAuthorizationID()Ljava/lang/String;
.end method

.method public abstract getMechanismName()Ljava/lang/String;
.end method

.method public abstract getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract isComplete()Z
.end method

.method public abstract unwrap([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation
.end method

.method public abstract wrap([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation
.end method
