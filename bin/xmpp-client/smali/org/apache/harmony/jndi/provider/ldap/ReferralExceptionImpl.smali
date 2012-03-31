.class public Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;
.super Lorg/apache/harmony/javax/naming/ldap/LdapReferralException;
.source "ReferralExceptionImpl.java"


# static fields
.field private static final serialVersionUID:J = -0x6bd6b5124b60413L


# instance fields
.field private env:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private final referrals:[Ljava/lang/String;

.field private final targetDN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .parameter "targetDN"
    .parameter "referrals"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, env:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/ldap/LdapReferralException;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    .line 42
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->targetDN:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->referrals:[Ljava/lang/String;

    .line 44
    if-nez p3, :cond_0

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->env:Ljava/util/Hashtable;

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p3}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->env:Ljava/util/Hashtable;

    goto :goto_0
.end method


# virtual methods
.method public getReferralContext()Lorg/apache/harmony/javax/naming/Context;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 53
    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->referrals:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 68
    :goto_0
    return-object v1

    .line 57
    :cond_0
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->referrals:[Ljava/lang/String;

    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    aget-object v5, v5, v6

    .line 58
    const/4 v6, 0x0

    .line 57
    invoke-static {v5, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->parserURL(Ljava/lang/String;Z)Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;

    move-result-object v3

    .line 60
    .local v3, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, host:Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getPort()I

    move-result v4

    .line 63
    .local v4, port:I
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->env:Ljava/util/Hashtable;

    .line 64
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->referrals:[Ljava/lang/String;

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    aget-object v6, v6, v7

    invoke-static {v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->isLdapsURL(Ljava/lang/String;)Z

    move-result v6

    .line 63
    invoke-static {v2, v4, v5, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->newInstance(Ljava/lang/String;ILjava/util/Hashtable;Z)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-result-object v0

    .line 66
    .local v0, client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->env:Ljava/util/Hashtable;

    .line 67
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->targetDN:Ljava/lang/String;

    .line 66
    invoke-direct {v1, v0, v5, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 68
    .local v1, context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    goto :goto_0
.end method

.method public getReferralContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;
    .locals 8
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
    .line 74
    .local p1, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->referrals:[Ljava/lang/String;

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 96
    :goto_0
    return-object v1

    .line 78
    :cond_0
    if-nez p1, :cond_1

    .line 79
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->getReferralContext()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v1

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v3

    .line 82
    check-cast v3, Ljava/util/Hashtable;

    .line 85
    .local v3, myEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->referrals:[Ljava/lang/String;

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->parserURL(Ljava/lang/String;Z)Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;

    move-result-object v4

    .line 87
    .local v4, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, host:Ljava/lang/String;
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getPort()I

    move-result v5

    .line 91
    .local v5, port:I
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->referrals:[Ljava/lang/String;

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    aget-object v6, v6, v7

    invoke-static {v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->isLdapsURL(Ljava/lang/String;)Z

    move-result v6

    .line 90
    invoke-static {v2, v5, v3, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->newInstance(Ljava/lang/String;ILjava/util/Hashtable;Z)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-result-object v0

    .line 93
    .local v0, client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 94
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->targetDN:Ljava/lang/String;

    .line 93
    invoke-direct {v1, v0, v3, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 96
    .local v1, context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    goto :goto_0
.end method

.method public getReferralContext(Ljava/util/Hashtable;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/javax/naming/Context;
    .locals 2
    .parameter
    .parameter "cs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;[",
            "Lorg/apache/harmony/javax/naming/ldap/Control;",
            ")",
            "Lorg/apache/harmony/javax/naming/Context;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 102
    .local p1, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    move-object v0, p1

    .line 103
    .local v0, myEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "java.naming.ldap.control.connect"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->getReferralContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v1

    return-object v1
.end method

.method public getReferralInfo()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->referrals:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->referrals:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public retryReferral()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public skipReferral()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    .line 124
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->index:I

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;->referrals:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
