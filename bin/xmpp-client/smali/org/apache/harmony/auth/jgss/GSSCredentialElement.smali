.class public interface abstract Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
.super Ljava/lang/Object;
.source "GSSCredentialElement.java"


# virtual methods
.method public abstract dispose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getMech()Lorg/ietf/jgss/Oid;
.end method

.method public abstract getName()Lorg/ietf/jgss/GSSName;
.end method

.method public abstract getRemainingAcceptLifetime()I
.end method

.method public abstract getRemainingInitLifetime()I
.end method

.method public abstract getUsage()I
.end method
