.class public Lorg/apache/harmony/jndi/provider/ldap/LdapControl;
.super Ljava/lang/Object;
.source "LdapControl.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;


# instance fields
.field private control:Lorg/apache/harmony/javax/naming/ldap/Control;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 0
    .parameter "control"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;->control:Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 35
    return-void
.end method


# virtual methods
.method public decodeValues([Ljava/lang/Object;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 39
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, id:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 41
    .local v2, isCritical:Z
    const/4 v3, 0x2

    aget-object v0, p1, v3

    check-cast v0, [B

    .line 42
    .local v0, encoded:[B
    new-instance v3, Lorg/apache/harmony/javax/naming/ldap/BasicControl;

    invoke-direct {v3, v1, v2, v0}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;->control:Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 43
    return-void
.end method

.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 47
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;->control:Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/ldap/Control;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 48
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;->control:Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/ldap/Control;->isCritical()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    .line 49
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;->control:Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/ldap/Control;->getEncodedValue()[B

    move-result-object v1

    aput-object v1, p1, v0

    .line 50
    return-void
.end method

.method public getControl()Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;->control:Lorg/apache/harmony/javax/naming/ldap/Control;

    return-object v0
.end method
