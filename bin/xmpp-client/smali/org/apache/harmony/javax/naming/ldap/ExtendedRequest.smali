.class public interface abstract Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;
.super Ljava/lang/Object;
.source "ExtendedRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract createExtendedResponse(Ljava/lang/String;[BII)Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getEncodedValue()[B
.end method

.method public abstract getID()Ljava/lang/String;
.end method
