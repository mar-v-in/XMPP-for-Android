.class Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$3;
.super Ljava/lang/Object;
.source "KerberosUtils.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getPrincipalFromContext()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$3;->run()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 207
    .local v0, acc:Ljava/security/AccessControlContext;
    invoke-static {v0}, Ljavax/security/auth/Subject;->getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;

    move-result-object v2

    .line 209
    .local v2, subject:Ljavax/security/auth/Subject;
    const-class v3, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v2, v3}, Ljavax/security/auth/Subject;->getPrincipals(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 210
    .local v1, kerberosPrincipals:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 211
    const/4 v3, 0x0

    .line 213
    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    goto :goto_0
.end method
