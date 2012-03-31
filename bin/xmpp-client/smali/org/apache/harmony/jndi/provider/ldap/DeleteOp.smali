.class public Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;
.super Ljava/lang/Object;
.source "DeleteOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# instance fields
.field private final dn:Ljava/lang/String;

.field private result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "dn"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;->dn:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 44
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;->dn:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 45
    return-void
.end method

.method public getDn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;->dn:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
    .locals 0

    .prologue
    .line 53
    return-object p0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xb

    return v0
.end method

.method public getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    goto :goto_0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0xc

    return v0
.end method

.method public getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0
.end method
