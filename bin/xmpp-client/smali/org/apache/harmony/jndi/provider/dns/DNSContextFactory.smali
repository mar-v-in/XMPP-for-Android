.class public Lorg/apache/harmony/jndi/provider/dns/DNSContextFactory;
.super Ljava/lang/Object;
.source "DNSContextFactory.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getInitialContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
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
    .line 54
    .local p1, env:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    invoke-direct {v0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;-><init>(Ljava/util/Hashtable;)V

    return-object v0
.end method
