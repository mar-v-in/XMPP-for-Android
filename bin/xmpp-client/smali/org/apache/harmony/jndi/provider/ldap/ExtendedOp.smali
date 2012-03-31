.class public Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;
.super Ljava/lang/Object;
.source "ExtendedOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;


# instance fields
.field private final request:Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;

.field private response:Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;

.field private responseValues:[Ljava/lang/Object;

.field private result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->request:Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;

    .line 40
    return-void
.end method


# virtual methods
.method public decodeValues([Ljava/lang/Object;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 44
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    .line 45
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->decodeValues([Ljava/lang/Object;)V

    .line 46
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->responseValues:[Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 51
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->request:Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;

    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 52
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->request:Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;

    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;->getEncodedValue()[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 53
    return-void
.end method

.method public getExtendedRequest()Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->request:Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;

    return-object v0
.end method

.method public getExtendedResponse()Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 61
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getResultCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 62
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->responseValues:[Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, id:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->responseValues:[Ljava/lang/Object;

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 65
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->responseValues:[Ljava/lang/Object;

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->responseValues:[Ljava/lang/Object;

    const/4 v4, 0x5

    aget-object v2, v3, v4

    check-cast v2, [B

    .line 68
    .local v2, value:[B
    const/4 v1, 0x0

    .line 69
    .local v1, length:I
    if-eqz v2, :cond_1

    .line 70
    array-length v1, v2

    .line 73
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->request:Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v2, v4, v1}, Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;->createExtendedResponse(Ljava/lang/String;[BII)Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->response:Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;

    .line 76
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #length:I
    .end local v2           #value:[B
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->response:Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;

    return-object v3
.end method

.method public getRequest()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
    .locals 0

    .prologue
    .line 81
    return-object p0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x12

    return v0
.end method

.method public getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
    .locals 0

    .prologue
    .line 91
    return-object p0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x13

    return v0
.end method

.method public getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0
.end method
