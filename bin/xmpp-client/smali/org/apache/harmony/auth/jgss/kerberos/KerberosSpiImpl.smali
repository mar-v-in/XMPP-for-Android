.class public Lorg/apache/harmony/auth/jgss/kerberos/KerberosSpiImpl;
.super Ljava/lang/Object;
.source "KerberosSpiImpl.java"

# interfaces
.implements Lorg/apache/harmony/auth/jgss/GSSMechSpi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createName(Ljava/lang/String;)Lorg/ietf/jgss/GSSName;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->KRB5_PRINCIPAL_NAMETYPE:Lorg/ietf/jgss/Oid;

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosSpiImpl;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v0

    return-object v0
.end method

.method public createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .locals 1
    .parameter "name"
    .parameter "nameType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;-><init>(Ljava/lang/String;Lorg/ietf/jgss/Oid;)V

    return-object v0
.end method

.method public createName([B)Lorg/ietf/jgss/GSSName;
    .locals 1
    .parameter "encodedName"

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameMechs()[Lorg/ietf/jgss/Oid;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->SUPPORTED_NAME_MECHS:[Lorg/ietf/jgss/Oid;

    return-object v0
.end method
