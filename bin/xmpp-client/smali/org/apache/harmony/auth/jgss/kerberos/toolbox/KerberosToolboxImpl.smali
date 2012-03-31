.class public final Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosToolboxImpl;
.super Ljava/lang/Object;
.source "KerberosToolboxImpl.java"

# interfaces
.implements Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosToolboxSpi;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "kdc"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public decodeApplicationRequest([B)Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;
    .locals 1
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/luni/util/NotImplementedException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lorg/apache/harmony/luni/util/NotImplementedException;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/NotImplementedException;-><init>()V

    throw v0
.end method

.method public encodeApplicationRequest(Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;)[B
    .locals 1
    .parameter "kerberosApplicationRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/luni/util/NotImplementedException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lorg/apache/harmony/luni/util/NotImplementedException;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/NotImplementedException;-><init>()V

    throw v0
.end method

.method public getTGS(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .locals 1
    .parameter "serverPrincipalName"
    .parameter "TGT"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/luni/util/NotImplementedException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/apache/harmony/luni/util/NotImplementedException;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/NotImplementedException;-><init>()V

    throw v0
.end method

.method public getTGT(Ljava/lang/String;[C)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .locals 1
    .parameter "clientPrincipalName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/luni/util/NotImplementedException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lorg/apache/harmony/luni/util/NotImplementedException;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/NotImplementedException;-><init>()V

    throw v0
.end method
