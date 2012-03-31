.class public final Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;
.super Ljava/security/BasicPermission;
.source "DelegationPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xc418503874a6612L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "principals"

    .prologue
    .line 60
    invoke-static {p1}, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;->init(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "principals"
    .parameter "action"

    .prologue
    .line 64
    invoke-static {p1}, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;->init(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private static init(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    const/16 v5, 0x22

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, trName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 42
    .local v1, length:I
    const/4 v3, 0x7

    if-ge v1, v3, :cond_0

    .line 43
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "auth.20"

    invoke-static {v4}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 49
    .local v0, index:I
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 50
    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 51
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 52
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_2

    .line 54
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "auth.20"

    invoke-static {v4}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_2
    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 98
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;->init(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 69
    if-ne p1, p0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 77
    .end local p1
    :goto_0
    return v0

    .line 73
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .parameter "permission"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;

    invoke-direct {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;-><init>()V

    return-object v0
.end method
