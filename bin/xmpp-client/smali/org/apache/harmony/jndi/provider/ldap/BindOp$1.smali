.class Lorg/apache/harmony/jndi/provider/ldap/BindOp$1;
.super Ljava/lang/Object;
.source "BindOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/provider/ldap/BindOp;->getRequest()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
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
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 122
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/BindOp;->name:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->access$0(Lorg/apache/harmony/jndi/provider/ldap/BindOp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 123
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    iget-object v1, v1, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->authChoice:Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;

    aput-object v1, p1, v0

    .line 124
    return-void
.end method
