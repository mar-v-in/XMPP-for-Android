.class public Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;
.super Ljava/lang/Object;
.source "ModifyDNOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# instance fields
.field private final deleteoldrdn:Z

.field private final entry:Ljava/lang/String;

.field private final newSuperior:Ljava/lang/String;

.field private final newrdn:Ljava/lang/String;

.field private result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "entry"
    .parameter "newrdn"
    .parameter "deleteoldrdn"
    .parameter "newSuperior"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->entry:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->newrdn:Ljava/lang/String;

    .line 40
    iput-boolean p3, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->deleteoldrdn:Z

    .line 41
    iput-object p4, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->newSuperior:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 46
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->entry:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 47
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->newrdn:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 48
    const/4 v0, 0x2

    iget-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->deleteoldrdn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    .line 49
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->newSuperior:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->newSuperior:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 52
    :cond_0
    return-void
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->entry:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSuperior()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->newSuperior:Ljava/lang/String;

    return-object v0
.end method

.method public getNewrdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->newrdn:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
    .locals 0

    .prologue
    .line 68
    return-object p0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0xd

    return v0
.end method

.method public getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    goto :goto_0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0xe

    return v0
.end method

.method public getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0
.end method

.method public isDeleteoldrdn()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;->deleteoldrdn:Z

    return v0
.end method
