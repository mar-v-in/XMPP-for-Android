.class public Lorg/apache/harmony/javax/naming/ldap/InitialLdapContext;
.super Lorg/apache/harmony/javax/naming/directory/InitialDirContext;
.source "InitialLdapContext.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/ldap/LdapContext;


# static fields
.field private static final CONNECT_CONTROL:Ljava/lang/String; = "java.naming.ldap.control.connect"

.field private static final LDAP_VERSION:Ljava/lang/String; = "java.naming.ldap.version"

.field private static final THIS_LDAP_VERSION:Ljava/lang/String; = "3"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0, v0}, Lorg/apache/harmony/javax/naming/ldap/InitialLdapContext;-><init>(Ljava/util/Hashtable;[Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;[Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 4
    .parameter
    .parameter "cs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;[",
            "Lorg/apache/harmony/javax/naming/ldap/Control;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .local p1, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const/4 v3, 0x0

    .line 79
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;-><init>(Z)V

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, newEnvironment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 87
    new-instance v1, Ljava/util/Hashtable;

    .end local v1           #newEnvironment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 93
    .restart local v1       #newEnvironment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    if-eqz p2, :cond_0

    .line 94
    array-length v2, p2

    new-array v0, v2, [Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 95
    .local v0, cloneOfCs:[Lorg/apache/harmony/javax/naming/ldap/Control;
    array-length v2, p2

    invoke-static {p2, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    const-string v2, "java.naming.ldap.control.connect"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v0           #cloneOfCs:[Lorg/apache/harmony/javax/naming/ldap/Control;
    :cond_0
    const-string v2, "java.naming.ldap.version"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-super {p0, v1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->init(Ljava/util/Hashtable;)V

    .line 104
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #newEnvironment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    check-cast v1, Ljava/util/Hashtable;

    .restart local v1       #newEnvironment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method private getDefaultInitLdapContext()Lorg/apache/harmony/javax/naming/ldap/LdapContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->defaultInitCtx:Lorg/apache/harmony/javax/naming/Context;

    instance-of v0, v0, Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v1, "jndi.1D"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->defaultInitCtx:Lorg/apache/harmony/javax/naming/Context;

    check-cast v0, Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    return-object v0
.end method


# virtual methods
.method public extendedOperation(Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;)Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;
    .locals 1
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/ldap/InitialLdapContext;->getDefaultInitLdapContext()Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapContext;->extendedOperation(Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;)Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;

    move-result-object v0

    return-object v0
.end method

.method public getConnectControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/ldap/InitialLdapContext;->getDefaultInitLdapContext()Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/ldap/LdapContext;->getConnectControls()[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v0

    return-object v0
.end method

.method public getRequestControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/ldap/InitialLdapContext;->getDefaultInitLdapContext()Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/ldap/LdapContext;->getRequestControls()[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v0

    return-object v0
.end method

.method public getResponseControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/ldap/InitialLdapContext;->getDefaultInitLdapContext()Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/ldap/LdapContext;->getResponseControls()[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v0

    return-object v0
.end method

.method public newInstance([Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/javax/naming/ldap/LdapContext;
    .locals 1
    .parameter "ac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/ldap/InitialLdapContext;->getDefaultInitLdapContext()Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapContext;->newInstance([Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    move-result-object v0

    return-object v0
.end method

.method public reconnect([Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 1
    .parameter "ac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/ldap/InitialLdapContext;->getDefaultInitLdapContext()Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapContext;->reconnect([Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 147
    return-void
.end method

.method public setRequestControls([Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 1
    .parameter "ac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/ldap/InitialLdapContext;->getDefaultInitLdapContext()Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapContext;->setRequestControls([Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 152
    return-void
.end method
