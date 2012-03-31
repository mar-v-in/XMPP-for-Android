.class Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;
.super Ljava/lang/Object;
.source "KrbDelegationPermissionCollection.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->elements()Ljava/util/Enumeration;
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
        "Ljava/security/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;


# direct methods
.method constructor <init>(Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;->this$0:Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;->index:I

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;->this$0:Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;

    #getter for: Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I
    invoke-static {v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->access$0(Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;->nextElement()Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;
    .locals 3

    .prologue
    .line 93
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;->index:I

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;->this$0:Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;

    #getter for: Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I
    invoke-static {v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->access$0(Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;->this$0:Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;

    #getter for: Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->access$1(Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;)[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method
