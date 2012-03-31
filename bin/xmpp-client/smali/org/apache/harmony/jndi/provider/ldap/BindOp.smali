.class public Lorg/apache/harmony/jndi/provider/ldap/BindOp;
.super Ljava/lang/Object;
.source "BindOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;,
        Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;
    }
.end annotation


# instance fields
.field authChoice:Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;

.field private final name:Ljava/lang/String;

.field private result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

.field private serverSaslCreds:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .parameter "dn"
    .parameter "pwd"
    .parameter "saslMechanism"
    .parameter "res"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->name:Ljava/lang/String;

    .line 107
    if-nez p3, :cond_0

    .line 108
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2}, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;-><init>(Lorg/apache/harmony/jndi/provider/ldap/BindOp;ILjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->authChoice:Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;

    invoke-direct {v0, p0, p3, p4}, Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;-><init>(Lorg/apache/harmony/jndi/provider/ldap/BindOp;Ljava/lang/String;[B)V

    .line 112
    .local v0, saslCreds:Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;-><init>(Lorg/apache/harmony/jndi/provider/ldap/BindOp;ILorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->authChoice:Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/apache/harmony/jndi/provider/ldap/BindOp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/jndi/provider/ldap/BindOp;Lorg/apache/harmony/jndi/provider/ldap/LdapResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-void
.end method

.method static synthetic access$2(Lorg/apache/harmony/jndi/provider/ldap/BindOp;)Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/jndi/provider/ldap/BindOp;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->serverSaslCreds:[B

    return-void
.end method


# virtual methods
.method public getRequest()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/jndi/provider/ldap/BindOp$1;-><init>(Lorg/apache/harmony/jndi/provider/ldap/BindOp;)V

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$2;

    invoke-direct {v0, p0}, Lorg/apache/harmony/jndi/provider/ldap/BindOp$2;-><init>(Lorg/apache/harmony/jndi/provider/ldap/BindOp;)V

    return-object v0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0
.end method

.method public getServerSaslCreds()[B
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->serverSaslCreds:[B

    return-object v0
.end method

.method public setSaslCredentials([B)V
    .locals 1
    .parameter "credentials"

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->authChoice:Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->setSaslCredentials([B)V

    .line 167
    return-void
.end method
