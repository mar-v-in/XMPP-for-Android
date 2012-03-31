.class public interface abstract Lorg/ietf/jgss/GSSCredential;
.super Ljava/lang/Object;
.source "GSSCredential.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ACCEPT_ONLY:I = 0x2

.field public static final DEFAULT_LIFETIME:I = 0x0

.field public static final INDEFINITE_LIFETIME:I = 0x7fffffff

.field public static final INITIATE_AND_ACCEPT:I = 0x0

.field public static final INITIATE_ONLY:I = 0x1


# virtual methods
.method public abstract add(Lorg/ietf/jgss/GSSName;IILorg/ietf/jgss/Oid;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract dispose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getMechs()[Lorg/ietf/jgss/Oid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getName()Lorg/ietf/jgss/GSSName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getName(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getRemainingAcceptLifetime(Lorg/ietf/jgss/Oid;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getRemainingInitLifetime(Lorg/ietf/jgss/Oid;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getRemainingLifetime()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getUsage()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getUsage(Lorg/ietf/jgss/Oid;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method
