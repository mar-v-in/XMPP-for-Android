.class Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$1;
.super Ljava/lang/Object;
.source "KerberosUtils.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getKerberosTicketFromContext(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
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
        "Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$clientPrincipal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

.field private final synthetic val$serverPrincipal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;


# direct methods
.method constructor <init>(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$1;->val$clientPrincipal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    iput-object p2, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$1;->val$serverPrincipal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$1;->run()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 112
    .local v0, acc:Ljava/security/AccessControlContext;
    invoke-static {v0}, Ljavax/security/auth/Subject;->getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;

    move-result-object v1

    .line 113
    .local v1, subject:Ljavax/security/auth/Subject;
    iget-object v2, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$1;->val$clientPrincipal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 114
    iget-object v3, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$1;->val$serverPrincipal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 113
    #calls: Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getTicketFromSubject(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    invoke-static {v1, v2, v3}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->access$0(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    move-result-object v2

    return-object v2
.end method
