.class public abstract Lorg/ietf/jgss/GSSManager;
.super Ljava/lang/Object;
.source "GSSManager.java"


# static fields
.field static final MANAGER:Ljava/lang/String; = "jgss.spi.manager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/ietf/jgss/GSSManager;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;

    .line 39
    const-string v1, "jgss.spi.manager"

    const-class v2, Lorg/ietf/jgss/GSSManager;

    .line 38
    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ietf/jgss/GSSManager;

    .line 37
    return-object v0
.end method


# virtual methods
.method public abstract addProviderAtEnd(Ljava/security/Provider;Lorg/ietf/jgss/Oid;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract addProviderAtFront(Ljava/security/Provider;Lorg/ietf/jgss/Oid;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract createContext(Lorg/ietf/jgss/GSSCredential;)Lorg/ietf/jgss/GSSContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract createContext([B)Lorg/ietf/jgss/GSSContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract createCredential(I)Lorg/ietf/jgss/GSSCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract createCredential(Lorg/ietf/jgss/GSSName;ILorg/ietf/jgss/Oid;I)Lorg/ietf/jgss/GSSCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract createCredential(Lorg/ietf/jgss/GSSName;I[Lorg/ietf/jgss/Oid;I)Lorg/ietf/jgss/GSSCredential;
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

.method public abstract createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract createName([BLorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract createName([BLorg/ietf/jgss/Oid;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getMechs()[Lorg/ietf/jgss/Oid;
.end method

.method public abstract getMechsForName(Lorg/ietf/jgss/Oid;)[Lorg/ietf/jgss/Oid;
.end method

.method public abstract getNamesForMech(Lorg/ietf/jgss/Oid;)[Lorg/ietf/jgss/Oid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method
