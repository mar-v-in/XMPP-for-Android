.class public Lorg/apache/harmony/jndi/provider/ldap/SearchOp;
.super Ljava/lang/Object;
.source "SearchOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;


# instance fields
.field private baseObject:Ljava/lang/String;

.field private batchSize:I

.field private final controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

.field private derefAliases:I

.field private filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;

.field private result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

.field private typesOnly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/jndi/provider/ldap/Filter;)V
    .locals 2
    .parameter "baseObject"
    .parameter "controls"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->typesOnly:Z

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->derefAliases:I

    .line 44
    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->batchSize:I

    .line 47
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->baseObject:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    .line 49
    iput-object p3, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .line 50
    return-void
.end method


# virtual methods
.method public decodeValues([Ljava/lang/Object;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->decodeSearchResponse([Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public encodeValues([Ljava/lang/Object;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->baseObject:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v4

    aput-object v4, p1, v3

    .line 63
    const/4 v4, 0x1

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-virtual {v5}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->getSearchScope()I

    move-result v5

    invoke-static {v5}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v4

    .line 64
    const/4 v4, 0x2

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->derefAliases:I

    invoke-static {v5}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v4

    .line 65
    const/4 v4, 0x3

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-virtual {v5}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->getCountLimit()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v4

    .line 66
    const/4 v4, 0x4

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-virtual {v5}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->getTimeLimit()I

    move-result v5

    invoke-static {v5}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v4

    .line 67
    const/4 v4, 0x5

    iget-boolean v5, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->typesOnly:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, p1, v4

    .line 68
    const/4 v4, 0x6

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;

    aput-object v5, p1, v4

    .line 69
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-virtual {v4}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, attributes:[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 72
    new-array v1, v3, [Ljava/lang/String;

    .line 75
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v2, list:Ljava/util/List;,"Ljava/util/List<[B>;"
    array-length v4, v1

    :goto_0
    if-lt v3, v4, :cond_1

    .line 79
    const/4 v3, 0x7

    aput-object v2, p1, v3

    .line 81
    return-void

    .line 76
    :cond_1
    aget-object v0, v1, v3

    .line 77
    .local v0, attribute:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getBaseObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->baseObject:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchSize()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->batchSize:I

    return v0
.end method

.method public getControls()Lorg/apache/harmony/javax/naming/directory/SearchControls;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    return-object v0
.end method

.method public getDerefAliases()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->derefAliases:I

    return v0
.end method

.method public getFilter()Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;

    return-object v0
.end method

.method public getRequest()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
    .locals 0

    .prologue
    .line 105
    return-object p0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x3

    return v0
.end method

.method public getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
    .locals 0

    .prologue
    .line 115
    return-object p0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x5

    return v0
.end method

.method public getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    return-object v0
.end method

.method public isTypesOnly()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->typesOnly:Z

    return v0
.end method

.method public setBaseObject(Ljava/lang/String;)V
    .locals 0
    .parameter "baseObject"

    .prologue
    .line 143
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->baseObject:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setBatchSize(I)V
    .locals 0
    .parameter "batchSize"

    .prologue
    .line 147
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->batchSize:I

    .line 148
    return-void
.end method

.method public setDerefAliases(I)V
    .locals 0
    .parameter "derefAliases"

    .prologue
    .line 151
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->derefAliases:I

    .line 152
    return-void
.end method

.method public setFilter(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 155
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .line 156
    return-void
.end method

.method public setSearchResult(Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 159
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    .line 160
    return-void
.end method

.method public setTypesOnly(Z)V
    .locals 0
    .parameter "typesOnly"

    .prologue
    .line 163
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->typesOnly:Z

    .line 164
    return-void
.end method
