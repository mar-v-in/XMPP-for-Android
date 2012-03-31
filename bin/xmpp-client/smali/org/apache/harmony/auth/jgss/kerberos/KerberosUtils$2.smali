.class Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$2;
.super Ljava/lang/Object;
.source "KerberosUtils.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getKeysFromContext(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<[",
        "Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$serverPrincipal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;


# direct methods
.method constructor <init>(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$2;->val$serverPrincipal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$2;->run()[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    move-result-object v0

    return-object v0
.end method

.method public run()[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 155
    .local v0, acc:Ljava/security/AccessControlContext;
    invoke-static {v0}, Ljavax/security/auth/Subject;->getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;

    move-result-object v1

    .line 156
    .local v1, subject:Ljavax/security/auth/Subject;
    iget-object v2, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$2;->val$serverPrincipal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    #calls: Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getKeysFromSubject(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    invoke-static {v1, v2}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->access$1(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    move-result-object v2

    return-object v2
.end method
