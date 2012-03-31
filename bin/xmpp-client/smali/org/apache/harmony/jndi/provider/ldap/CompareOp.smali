.class public Lorg/apache/harmony/jndi/provider/ldap/CompareOp;
.super Ljava/lang/Object;
.source "CompareOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# instance fields
.field private final ava:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

.field private final entry:Ljava/lang/String;

.field private result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;)V
    .locals 0
    .parameter "entry"
    .parameter "pair"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/CompareOp;->entry:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/CompareOp;->ava:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    .line 37
    return-void
.end method


# virtual methods
.method public encodeValues([Ljava/lang/Object;)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/CompareOp;->entry:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v2

    .line 42
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 43
    .local v0, objs:[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/CompareOp;->ava:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, v0, v2

    .line 44
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/CompareOp;->ava:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    .line 46
    aput-object v0, p1, v3

    .line 47
    return-void
.end method

.method public getRequest()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0xf

    return v0
.end method

.method public getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/CompareOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/CompareOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/CompareOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    goto :goto_0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x10

    return v0
.end method

.method public getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/CompareOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0
.end method
