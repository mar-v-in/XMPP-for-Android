.class Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$3;
.super Lorg/apache/harmony/javax/naming/RefAddr;
.source "LdapContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4b56a416ed3292c3L


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

.field private final synthetic val$context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$3;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iput-object p3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$3;->val$context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 1235
    invoke-direct {p0, p2}, Lorg/apache/harmony/javax/naming/RefAddr;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$3;->val$context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    return-object v0
.end method
