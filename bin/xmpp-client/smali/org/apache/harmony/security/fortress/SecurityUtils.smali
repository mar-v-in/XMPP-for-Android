.class public final Lorg/apache/harmony/security/fortress/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static final ACC_CACHE:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext(Ljava/lang/Thread;)Ljava/security/AccessControlContext;
    .locals 2
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v1, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AccessControlContext;

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static putContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V
    .locals 3
    .parameter "thread"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.140"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "security.141"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_1
    if-nez p1, :cond_2

    .line 109
    :try_start_1
    sget-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Ljava/lang/Error;

    const-string v2, "security.142"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2
    sget-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    return-void
.end method
