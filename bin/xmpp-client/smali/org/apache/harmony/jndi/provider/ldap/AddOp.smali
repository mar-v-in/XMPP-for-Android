.class public final Lorg/apache/harmony/jndi/provider/ldap/AddOp;
.super Ljava/lang/Object;
.source "AddOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# instance fields
.field private final attrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final entry:Ljava/lang/String;

.field private result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/AddOp;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "entry"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, attrList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->entry:Ljava/lang/String;

    .line 49
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #attrList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->attrList:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V
    .locals 1
    .parameter "attr"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->attrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 59
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->entry:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 60
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->attrList:Ljava/util/List;

    aput-object v1, p1, v0

    .line 61
    return-void
.end method

.method public getAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->attrList:Ljava/util/List;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->entry:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
    .locals 0

    .prologue
    .line 73
    return-object p0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x9

    return v0
.end method

.method public getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    goto :goto_0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0xa

    return v0
.end method

.method public getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0
.end method
