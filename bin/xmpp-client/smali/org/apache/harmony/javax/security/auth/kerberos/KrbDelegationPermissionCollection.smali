.class Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "KrbDelegationPermissionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x2ef628b707c4be64L


# instance fields
.field private transient items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

.field private transient offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    .line 43
    const-string v3, "permissions"

    const-class v4, Ljava/util/Vector;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 37
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 45
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    return v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;)[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 125
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v3, "permissions"

    const/4 v4, 0x0

    .line 124
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 126
    .local v2, permissions:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    iput-object v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    .line 127
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    :goto_0
    iget v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_0

    .line 135
    return-void

    .line 128
    :cond_0
    iget v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    if-nez v3, :cond_2

    .line 130
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 131
    const-string v4, "auth.22"

    .line 130
    invoke-static {v4, v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    iget v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    check-cast v1, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    .end local v1           #obj:Ljava/lang/Object;
    aput-object v1, v3, v4

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v3, Ljava/util/Vector;

    iget v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    .line 141
    .local v3, permissions:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    if-lt v1, v4, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 144
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v4, "permissions"

    invoke-virtual {v0, v4, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 146
    return-void

    .line 141
    .end local v0           #fields:Ljava/io/ObjectOutputStream$PutField;
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 5
    .parameter "permission"

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "auth.21"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    if-nez v1, :cond_2

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 66
    const-string v2, "auth.22"

    .line 65
    invoke-static {v2, p1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_2
    monitor-enter p0

    .line 69
    :try_start_0
    iget v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    array-length v2, v2

    if-ne v1, v2, :cond_3

    .line 70
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    .line 71
    .local v0, dp:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    .line 74
    .end local v0           #dp:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;
    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    iget v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    check-cast p1, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    .end local p1
    aput-object p1, v1, v2

    .line 68
    monitor-exit p0

    .line 76
    return-void

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection$1;-><init>(Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;)V

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 3
    .parameter "permission"

    .prologue
    const/4 v1, 0x0

    .line 106
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    monitor-enter p0

    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    iget v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->offset:I

    if-lt v0, v2, :cond_2

    .line 110
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 112
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbDelegationPermissionCollection;->items:[Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/harmony/javax/security/auth/kerberos/DelegationPermission;->implies(Ljava/security/Permission;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    .line 111
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
