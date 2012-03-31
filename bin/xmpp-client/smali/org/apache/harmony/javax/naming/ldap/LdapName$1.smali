.class Lorg/apache/harmony/javax/naming/ldap/LdapName$1;
.super Ljava/lang/Object;
.source "LdapName.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/javax/naming/ldap/LdapName;->getAll()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/javax/naming/ldap/LdapName;

.field private final synthetic val$rdns:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/harmony/javax/naming/ldap/LdapName;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName$1;->this$0:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    iput-object p2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName$1;->val$rdns:Ljava/util/Iterator;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName$1;->val$rdns:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/ldap/LdapName$1;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName$1;->val$rdns:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
