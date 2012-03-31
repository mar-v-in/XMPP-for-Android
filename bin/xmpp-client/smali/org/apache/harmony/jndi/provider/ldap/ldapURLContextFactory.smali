.class public Lorg/apache/harmony/jndi/provider/ldap/ldapURLContextFactory;
.super Lorg/apache/harmony/jndi/provider/GenericURLContextFactory;
.source "ldapURLContextFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/GenericURLContextFactory;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method protected createURLContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;
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

    .prologue
    .line 36
    .local p1, environment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;

    invoke-direct {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/ldapURLContext;-><init>(Ljava/util/Hashtable;)V

    return-object v0
.end method
