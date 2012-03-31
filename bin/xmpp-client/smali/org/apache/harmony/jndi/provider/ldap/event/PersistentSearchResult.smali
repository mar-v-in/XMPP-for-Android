.class public abstract Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;
.super Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
.source "PersistentSearchResult.java"


# instance fields
.field private dn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;-><init>()V

    return-void
.end method


# virtual methods
.method protected decodeEntry(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 32
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 33
    .local v0, values:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->dn:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected decodeRef(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 43
    return-void
.end method

.method public getDn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->dn:Ljava/lang/String;

    return-object v0
.end method

.method public abstract receiveNotificationHook(Ljava/lang/Object;)V
.end method
