.class Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;
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
    name = "SaslCredentials"
.end annotation


# instance fields
.field private credentials:[B

.field private mechanism:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/BindOp;Ljava/lang/String;[B)V
    .locals 0
    .parameter
    .parameter "mech"
    .parameter "creds"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;->this$0:Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;->mechanism:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;->credentials:[B

    .line 78
    return-void
.end method


# virtual methods
.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 82
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;->mechanism:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 83
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;->credentials:[B

    aput-object v1, p1, v0

    .line 84
    return-void
.end method

.method public getCredentials()[B
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;->credentials:[B

    return-object v0
.end method

.method public setCredentials([B)V
    .locals 0
    .parameter "credentials"

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/BindOp$SaslCredentials;->credentials:[B

    .line 92
    return-void
.end method
