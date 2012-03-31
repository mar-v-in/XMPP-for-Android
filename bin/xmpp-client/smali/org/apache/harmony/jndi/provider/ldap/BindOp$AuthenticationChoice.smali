.class Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;
.super Ljava/lang/Object;
.source "BindOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/ldap/BindOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthenticationChoice"
.end annotation


# instance fields
.field private final index:I

.field private password:Ljava/lang/String;

.field private sasl:Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;

.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/BindOp;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "index"
    .parameter "password"

    .prologue
    .line 45
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->index:I

    .line 47
    iput-object p3, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->password:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/BindOp;ILorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;)V
    .locals 0
    .parameter
    .parameter "index"
    .parameter "sasl"

    .prologue
    .line 40
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->index:I

    .line 42
    iput-object p3, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->sasl:Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;

    .line 43
    return-void
.end method


# virtual methods
.method public encodeValues([Ljava/lang/Object;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 54
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->index:I

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->password:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 59
    :goto_0
    const/4 v1, 0x0

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->index:I

    invoke-direct {v2, v3, v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;-><init>(ILjava/lang/Object;)V

    aput-object v2, p1, v1

    .line 61
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->sasl:Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;

    .local v0, value:Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;
    goto :goto_0
.end method

.method public setSaslCredentials([B)V
    .locals 1
    .parameter "credentials"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$AuthenticationChoice;->sasl:Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;->setCredentials([B)V

    .line 65
    return-void
.end method
