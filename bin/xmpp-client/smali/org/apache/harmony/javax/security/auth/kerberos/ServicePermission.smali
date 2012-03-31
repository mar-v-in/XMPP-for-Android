.class public final Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;
.super Ljava/security/Permission;
.source "ServicePermission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ACCEPT:Ljava/lang/String; = "accept"

#the value of this static final field might be set in the static constructor
.field private static final ACCEPT_LEN:I = 0x0

.field private static final ACCEPT_MASK:C = '\u0001'

.field private static final ACTIONS_TABLE:[Ljava/lang/String; = null

.field private static final INITIATE:Ljava/lang/String; = "initiate"

.field private static final INITIATE_ACCEPT:Ljava/lang/String; = "initiate,accept"

#the value of this static final field might be set in the static constructor
.field private static final INITIATE_LEN:I = 0x0

.field private static final INITIATE_MASK:C = '\u0002'

#the value of this static final field might be set in the static constructor
.field private static final MIN_LEN:I = 0x0

.field private static final serialVersionUID:J = -0x110942150d36fda7L


# instance fields
.field private actions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "accept"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "initiate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "initiate,accept"

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->ACTIONS_TABLE:[Ljava/lang/String;

    .line 40
    const-string v0, "initiate"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->INITIATE_LEN:I

    .line 41
    const-string v0, "accept"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->ACCEPT_LEN:I

    .line 42
    sget v0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->INITIATE_LEN:I

    sget v1, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->ACCEPT_LEN:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->MIN_LEN:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p2}, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->initActions(Ljava/lang/String;)V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "auth.2F"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.30"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    return-void
.end method

.method private initActions(Ljava/lang/String;)V
    .locals 13
    .parameter "actions"

    .prologue
    const/16 v12, 0x9

    const/16 v11, 0x74

    const/16 v10, 0x69

    const/16 v9, 0x54

    const/16 v8, 0x49

    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sget v7, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->MIN_LEN:I

    if-ge v6, v7, :cond_1

    .line 108
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "auth.2E"

    invoke-static {v7}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 113
    .local v0, c_acts:[C
    const/4 v5, 0x0

    .line 114
    .local v5, result:I
    const/4 v3, 0x0

    .line 116
    .local v3, ptr:I
    array-length v6, v0

    sget v7, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->ACCEPT_LEN:I

    sub-int v1, v6, v7

    .line 117
    .local v1, len6:I
    array-length v6, v0

    sget v7, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->INITIATE_LEN:I

    sub-int v2, v6, v7

    .line 121
    .local v2, len8:I
    :goto_0
    if-gt v3, v1, :cond_2

    .line 122
    aget-char v6, v0, v3

    const/16 v7, 0x20

    if-eq v6, v7, :cond_3

    aget-char v6, v0, v3

    if-eq v6, v12, :cond_3

    .line 123
    aget-char v6, v0, v3

    const/16 v7, 0xa

    if-eq v6, v7, :cond_3

    aget-char v6, v0, v3

    const/16 v7, 0xb

    if-eq v6, v7, :cond_3

    .line 124
    aget-char v6, v0, v3

    const/16 v7, 0xc

    if-eq v6, v7, :cond_3

    aget-char v6, v0, v3

    const/16 v7, 0xd

    if-eq v6, v7, :cond_3

    .line 128
    :cond_2
    if-le v3, v1, :cond_4

    .line 131
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 132
    const-string v7, "auth.2E"

    invoke-static {v7}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 125
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_4
    aget-char v6, v0, v3

    const/16 v7, 0x61

    if-eq v6, v7, :cond_5

    aget-char v6, v0, v3

    const/16 v7, 0x41

    if-ne v6, v7, :cond_c

    .line 137
    :cond_5
    add-int/lit8 v6, v3, 0x1

    aget-char v6, v0, v6

    const/16 v7, 0x63

    if-eq v6, v7, :cond_6

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v0, v6

    const/16 v7, 0x43

    if-ne v6, v7, :cond_c

    .line 138
    :cond_6
    add-int/lit8 v6, v3, 0x2

    aget-char v6, v0, v6

    const/16 v7, 0x63

    if-eq v6, v7, :cond_7

    add-int/lit8 v6, v3, 0x2

    aget-char v6, v0, v6

    const/16 v7, 0x43

    if-ne v6, v7, :cond_c

    .line 139
    :cond_7
    add-int/lit8 v6, v3, 0x3

    aget-char v6, v0, v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_8

    add-int/lit8 v6, v3, 0x3

    aget-char v6, v0, v6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_c

    .line 140
    :cond_8
    add-int/lit8 v6, v3, 0x4

    aget-char v6, v0, v6

    const/16 v7, 0x70

    if-eq v6, v7, :cond_9

    add-int/lit8 v6, v3, 0x4

    aget-char v6, v0, v6

    const/16 v7, 0x50

    if-ne v6, v7, :cond_c

    .line 141
    :cond_9
    add-int/lit8 v6, v3, 0x5

    aget-char v6, v0, v6

    if-eq v6, v11, :cond_a

    add-int/lit8 v6, v3, 0x5

    aget-char v6, v0, v6

    if-ne v6, v9, :cond_c

    .line 142
    :cond_a
    or-int/lit8 v5, v5, 0x1

    .line 143
    sget v6, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->ACCEPT_LEN:I

    add-int/2addr v3, v6

    .line 161
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_b

    .line 162
    aget-char v6, v0, v3

    const/16 v7, 0x20

    if-eq v6, v7, :cond_16

    aget-char v6, v0, v3

    if-eq v6, v12, :cond_16

    .line 163
    aget-char v6, v0, v3

    const/16 v7, 0xa

    if-eq v6, v7, :cond_16

    aget-char v6, v0, v3

    const/16 v7, 0xb

    if-eq v6, v7, :cond_16

    .line 164
    aget-char v6, v0, v3

    const/16 v7, 0xc

    if-eq v6, v7, :cond_16

    aget-char v6, v0, v3

    const/16 v7, 0xd

    if-eq v6, v7, :cond_16

    .line 168
    :cond_b
    array-length v6, v0

    if-ne v3, v6, :cond_17

    .line 169
    sget-object v6, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->ACTIONS_TABLE:[Ljava/lang/String;

    aget-object v6, v6, v5

    iput-object v6, p0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->actions:Ljava/lang/String;

    .line 170
    return-void

    .line 144
    :cond_c
    if-gt v3, v2, :cond_15

    .line 145
    aget-char v6, v0, v3

    if-eq v6, v10, :cond_d

    aget-char v6, v0, v3

    if-ne v6, v8, :cond_15

    .line 146
    :cond_d
    add-int/lit8 v6, v3, 0x1

    aget-char v6, v0, v6

    const/16 v7, 0x6e

    if-eq v6, v7, :cond_e

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v0, v6

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_15

    .line 147
    :cond_e
    add-int/lit8 v6, v3, 0x2

    aget-char v6, v0, v6

    if-eq v6, v10, :cond_f

    add-int/lit8 v6, v3, 0x2

    aget-char v6, v0, v6

    if-ne v6, v8, :cond_15

    .line 148
    :cond_f
    add-int/lit8 v6, v3, 0x3

    aget-char v6, v0, v6

    if-eq v6, v11, :cond_10

    add-int/lit8 v6, v3, 0x3

    aget-char v6, v0, v6

    if-ne v6, v9, :cond_15

    .line 149
    :cond_10
    add-int/lit8 v6, v3, 0x4

    aget-char v6, v0, v6

    if-eq v6, v10, :cond_11

    add-int/lit8 v6, v3, 0x4

    aget-char v6, v0, v6

    if-ne v6, v8, :cond_15

    .line 150
    :cond_11
    add-int/lit8 v6, v3, 0x5

    aget-char v6, v0, v6

    const/16 v7, 0x61

    if-eq v6, v7, :cond_12

    add-int/lit8 v6, v3, 0x5

    aget-char v6, v0, v6

    const/16 v7, 0x41

    if-ne v6, v7, :cond_15

    .line 151
    :cond_12
    add-int/lit8 v6, v3, 0x6

    aget-char v6, v0, v6

    if-eq v6, v11, :cond_13

    add-int/lit8 v6, v3, 0x6

    aget-char v6, v0, v6

    if-ne v6, v9, :cond_15

    .line 152
    :cond_13
    add-int/lit8 v6, v3, 0x7

    aget-char v6, v0, v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_14

    add-int/lit8 v6, v3, 0x7

    aget-char v6, v0, v6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_15

    .line 153
    :cond_14
    or-int/lit8 v5, v5, 0x2

    .line 154
    sget v6, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->INITIATE_LEN:I

    add-int/2addr v3, v6

    goto/16 :goto_1

    .line 156
    :cond_15
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 157
    const-string v7, "auth.2E"

    invoke-static {v7}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 165
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 172
    :cond_17
    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .local v4, ptr:I
    aget-char v6, v0, v3

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_18

    .line 175
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "auth.2E"

    invoke-static {v7}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_18
    move v3, v4

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    goto/16 :goto_0
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 186
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->getActions()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->initActions(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-eqz p1, :cond_2

    const-class v3, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 69
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 71
    check-cast v0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;

    .line 73
    .local v0, sp:Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->actions:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->actions:Ljava/lang/String;

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->actions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 6
    .parameter "permission"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v2

    .line 92
    :cond_1
    if-eqz p1, :cond_2

    .line 93
    const-class v4, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_3

    :cond_2
    move v2, v3

    .line 94
    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 97
    check-cast v1, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;

    .line 98
    .local v1, sp:Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, name:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->actions:Ljava/lang/String;

    const-string v5, "initiate,accept"

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->actions:Ljava/lang/String;

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;->actions:Ljava/lang/String;

    if-ne v4, v5, :cond_6

    .line 101
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_0

    .line 102
    :cond_5
    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    move v2, v3

    .line 100
    goto :goto_0
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lorg/apache/harmony/javax/security/auth/kerberos/KrbServicePermissionCollection;

    invoke-direct {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KrbServicePermissionCollection;-><init>()V

    return-object v0
.end method
