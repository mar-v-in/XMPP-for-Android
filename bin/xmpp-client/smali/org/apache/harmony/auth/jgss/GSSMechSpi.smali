.class public interface abstract Lorg/apache/harmony/auth/jgss/GSSMechSpi;
.super Ljava/lang/Object;
.source "GSSMechSpi.java"


# virtual methods
.method public abstract createName(Ljava/lang/String;)Lorg/ietf/jgss/GSSName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getNameMechs()[Lorg/ietf/jgss/Oid;
.end method
