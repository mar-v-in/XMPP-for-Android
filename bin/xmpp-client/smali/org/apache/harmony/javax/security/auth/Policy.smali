.class public abstract Lorg/apache/harmony/javax/security/auth/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final GET_POLICY:Ljavax/security/auth/AuthPermission; = null

.field private static final POLICY_PROVIDER:Ljava/lang/String; = "auth.policy.provider"

.field private static final SET_POLICY:Ljavax/security/auth/AuthPermission;

.field private static activePolicy:Lorg/apache/harmony/javax/security/auth/Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljavax/security/auth/AuthPermission;

    .line 46
    const-string v1, "setPolicy"

    .line 45
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/Policy;->SET_POLICY:Ljavax/security/auth/AuthPermission;

    .line 49
    new-instance v0, Ljavax/security/auth/AuthPermission;

    .line 50
    const-string v1, "getPolicy"

    .line 49
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/Policy;->GET_POLICY:Ljavax/security/auth/AuthPermission;

    .line 40
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method static getAccessiblePolicy()Lorg/apache/harmony/javax/security/auth/Policy;
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lorg/apache/harmony/javax/security/auth/Policy;->activePolicy:Lorg/apache/harmony/javax/security/auth/Policy;

    .line 63
    .local v0, current:Lorg/apache/harmony/javax/security/auth/Policy;
    if-nez v0, :cond_1

    .line 64
    const-class v2, Lorg/apache/harmony/javax/security/auth/Policy;

    monitor-enter v2

    .line 67
    :try_start_0
    sget-object v1, Lorg/apache/harmony/javax/security/auth/Policy;->activePolicy:Lorg/apache/harmony/javax/security/auth/Policy;

    if-nez v1, :cond_0

    .line 68
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Policy;->getDefaultProvider()Lorg/apache/harmony/javax/security/auth/Policy;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/javax/security/auth/Policy;->activePolicy:Lorg/apache/harmony/javax/security/auth/Policy;

    .line 70
    :cond_0
    sget-object v0, Lorg/apache/harmony/javax/security/auth/Policy;->activePolicy:Lorg/apache/harmony/javax/security/auth/Policy;

    .end local v0           #current:Lorg/apache/harmony/javax/security/auth/Policy;
    monitor-exit v2

    .line 73
    :cond_1
    return-object v0

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final getDefaultProvider()Lorg/apache/harmony/javax/security/auth/Policy;
    .locals 4

    .prologue
    .line 83
    new-instance v2, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;

    .line 84
    const-string v3, "auth.policy.provider"

    .line 83
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, defaultClass:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 87
    new-instance v1, Lorg/apache/harmony/auth/DefaultSubjectPolicy;

    invoke-direct {v1}, Lorg/apache/harmony/auth/DefaultSubjectPolicy;-><init>()V

    .line 110
    :goto_0
    return-object v1

    .line 91
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/security/auth/Policy$1;

    invoke-direct {v2, v0}, Lorg/apache/harmony/javax/security/auth/Policy$1;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, policy:Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/harmony/javax/security/auth/Policy;

    if-nez v2, :cond_1

    .line 108
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "auth.08"

    invoke-static {v3}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_1
    check-cast v1, Lorg/apache/harmony/javax/security/auth/Policy;

    goto :goto_0
.end method

.method public static getPolicy()Lorg/apache/harmony/javax/security/auth/Policy;
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 115
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 116
    sget-object v1, Lorg/apache/harmony/javax/security/auth/Policy;->GET_POLICY:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 118
    :cond_0
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/Policy;->getAccessiblePolicy()Lorg/apache/harmony/javax/security/auth/Policy;

    move-result-object v1

    return-object v1
.end method

.method public static setPolicy(Lorg/apache/harmony/javax/security/auth/Policy;)V
    .locals 3
    .parameter "policy"

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 124
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 125
    sget-object v1, Lorg/apache/harmony/javax/security/auth/Policy;->SET_POLICY:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 127
    :cond_0
    const-class v2, Lorg/apache/harmony/javax/security/auth/Policy;

    monitor-enter v2

    .line 128
    :try_start_0
    sput-object p0, Lorg/apache/harmony/javax/security/auth/Policy;->activePolicy:Lorg/apache/harmony/javax/security/auth/Policy;

    .line 127
    monitor-exit v2

    .line 130
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract getPermissions(Ljavax/security/auth/Subject;Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
.end method

.method public abstract refresh()V
.end method
