.class public Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;
.super Ljava/lang/Object;
.source "ModifyOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/ldap/ModifyOp$Modification;
    }
.end annotation


# instance fields
.field private final dn:Ljava/lang/String;

.field private final modifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/jndi/provider/ldap/ModifyOp$Modification;",
            ">;"
        }
    .end annotation
.end field

.field private result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "dn"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->modifications:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->dn:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public addModification(ILorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V
    .locals 2
    .parameter "type"
    .parameter "attr"

    .prologue
    .line 66
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->modifications:Ljava/util/List;

    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp$Modification;

    invoke-direct {v1, p1, p2}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp$Modification;-><init>(ILorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 75
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->dn:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 76
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->modifications:Ljava/util/List;

    aput-object v1, p1, v0

    .line 77
    return-void
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
    const/4 v0, 0x7

    return v0
.end method

.method public getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    goto :goto_0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x8

    return v0
.end method

.method public getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0
.end method
