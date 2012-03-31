.class Lorg/apache/harmony/jndi/provider/ldap/BindOp$2;
.super Ljava/lang/Object;
.source "BindOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/provider/ldap/BindOp;->getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;


# direct methods
.method constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/BindOp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$2;->this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeValues([Ljava/lang/Object;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x4

    .line 139
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$2;->this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;-><init>()V

    #setter for: Lorg/apache/harmony/jndi/provider/ldap/BindOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    invoke-static {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->access$1(Lorg/apache/harmony/jndi/provider/ldap/BindOp;Lorg/apache/harmony/jndi/provider/ldap/LdapResult;)V

    .line 140
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$2;->this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/BindOp;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    invoke-static {v0}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->access$2(Lorg/apache/harmony/jndi/provider/ldap/BindOp;)Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->decodeValues([Ljava/lang/Object;)V

    .line 141
    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$2;->this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    aget-object v0, p1, v2

    check-cast v0, [B

    #setter for: Lorg/apache/harmony/jndi/provider/ldap/BindOp;->serverSaslCreds:[B
    invoke-static {v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->access$3(Lorg/apache/harmony/jndi/provider/ldap/BindOp;[B)V

    .line 146
    :cond_0
    return-void
.end method
