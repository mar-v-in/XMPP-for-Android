.class public Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;
.super Ljava/lang/Object;
.source "UnsolicitedNotificationImpl.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotification;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;


# static fields
.field private static final serialVersionUID:J = 0x2a856bd74e53939bL


# instance fields
.field private controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

.field private encodedValue:[B

.field private oid:Ljava/lang/String;

.field private result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeValues([Ljava/lang/Object;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 41
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    .line 42
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->decodeValues([Ljava/lang/Object;)V

    .line 43
    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    .line 44
    aget-object v0, p1, v1

    invoke-static {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->oid:Ljava/lang/String;

    .line 46
    :cond_0
    aget-object v0, p1, v2

    if-eqz v0, :cond_1

    .line 47
    aget-object v0, p1, v2

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->encodedValue:[B

    .line 49
    :cond_1
    return-void
.end method

.method public getControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    return-object v0
.end method

.method public getEncodedValue()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->encodedValue:[B

    return-object v0
.end method

.method public getException()Lorg/apache/harmony/javax/naming/NamingException;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-static {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->getExceptionFromResult(Lorg/apache/harmony/jndi/provider/ldap/LdapResult;)Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrals()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getReferrals()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setControls([Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 0
    .parameter "controls"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 78
    return-void
.end method
