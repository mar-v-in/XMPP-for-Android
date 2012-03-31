.class public Lorg/apache/harmony/jndi/provider/dns/dnsURLContext;
.super Lorg/apache/harmony/jndi/provider/dns/DNSContext;
.source "dnsURLContext.java"


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 50
    .local p1, env:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;-><init>(Ljava/util/Hashtable;)V

    .line 51
    return-void
.end method

.method private process(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "jndi.2E"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    const-string v0, "java.naming.provider.url"

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/jndi/provider/dns/dnsURLContext;->addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method


# virtual methods
.method public getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/dns/dnsURLContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "name"
    .parameter "attrNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/dnsURLContext;->process(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>()V

    invoke-super {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/dnsURLContext;->process(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>()V

    invoke-super {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/dnsURLContext;->process(Ljava/lang/String;)V

    .line 118
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>()V

    invoke-super {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/dnsURLContext;->process(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>()V

    invoke-super {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupLink(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/dnsURLContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
