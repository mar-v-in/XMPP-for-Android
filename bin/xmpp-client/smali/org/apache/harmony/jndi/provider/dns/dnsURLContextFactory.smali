.class public Lorg/apache/harmony/jndi/provider/dns/dnsURLContextFactory;
.super Ljava/lang/Object;
.source "dnsURLContextFactory.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/spi/ObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    .locals 6
    .parameter "obj"
    .parameter "name"
    .parameter "nameCtx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 62
    .local p4, environment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    if-nez p1, :cond_0

    .line 63
    new-instance v4, Lorg/apache/harmony/jndi/provider/dns/dnsURLContext;

    invoke-direct {v4, p4}, Lorg/apache/harmony/jndi/provider/dns/dnsURLContext;-><init>(Ljava/util/Hashtable;)V

    .line 83
    :goto_0
    return-object v4

    .line 64
    :cond_0
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {p4}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/Hashtable;

    .line 68
    .local v1, newEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v4, "java.naming.provider.url"

    invoke-virtual {v1, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v4, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    invoke-direct {v4, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;-><init>(Ljava/util/Hashtable;)V

    goto :goto_0

    .line 70
    .end local v1           #newEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    instance-of v4, p1, [Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 72
    invoke-virtual {p4}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v1, Ljava/util/Hashtable;

    .line 73
    .restart local v1       #newEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, sb:Ljava/lang/StringBuilder;
    move-object v3, p1

    .line 74
    check-cast v3, [Ljava/lang/String;

    .line 76
    .local v3, urlArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_2

    .line 82
    const-string v4, "java.naming.provider.url"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v4, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    invoke-direct {v4, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;-><init>(Ljava/util/Hashtable;)V

    goto :goto_0

    .line 77
    :cond_2
    if-eqz v0, :cond_3

    .line 78
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :cond_3
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    .end local v0           #i:I
    .end local v1           #newEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v3           #urlArr:[Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "jndi.65"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
