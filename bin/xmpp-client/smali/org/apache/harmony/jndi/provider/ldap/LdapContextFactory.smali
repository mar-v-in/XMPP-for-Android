.class public Lorg/apache/harmony/jndi/provider/ldap/LdapContextFactory;
.super Ljava/lang/Object;
.source "LdapContextFactory.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitialContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/Context;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 34
    .local p1, envmt:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const/4 v5, 0x0

    .line 35
    .local v5, myEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 36
    new-instance v5, Ljava/util/Hashtable;

    .end local v5           #myEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 40
    .restart local v5       #myEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    const-string v9, "java.naming.provider.url"

    invoke-virtual {v5, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 41
    .local v8, url:Ljava/lang/String;
    const/4 v6, 0x0

    .line 43
    .local v6, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {v8, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->parserURL(Ljava/lang/String;Z)Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, host:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getPort()I

    move-result v7

    .line 50
    .local v7, port:I
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getBaseObject()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, dn:Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->isLdapsURL(Ljava/lang/String;)Z

    move-result v9

    .line 52
    invoke-static {v4, v7, v5, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->newInstance(Ljava/lang/String;ILjava/util/Hashtable;Z)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-result-object v0

    .line 55
    .local v0, client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    invoke-direct {v1, v0, v5, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 57
    .local v1, context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    return-object v1

    .line 38
    .end local v0           #client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    .end local v1           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .end local v2           #dn:Ljava/lang/String;
    .end local v4           #host:Ljava/lang/String;
    .end local v6           #parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    .end local v7           #port:I
    .end local v8           #url:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #myEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    check-cast v5, Ljava/util/Hashtable;

    .restart local v5       #myEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0

    .line 44
    .restart local v6       #parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    .restart local v8       #url:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 45
    .local v3, e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    new-instance v9, Lorg/apache/harmony/javax/naming/ConfigurationException;

    invoke-virtual {v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/harmony/javax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
