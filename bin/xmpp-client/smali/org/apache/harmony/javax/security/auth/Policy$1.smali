.class Lorg/apache/harmony/javax/security/auth/Policy$1;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/javax/security/auth/Policy;->getDefaultProvider()Lorg/apache/harmony/javax/security/auth/Policy;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$defaultClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/Policy$1;->val$defaultClass:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 95
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/Policy$1;->val$defaultClass:Ljava/lang/String;

    const/4 v3, 0x1

    .line 96
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 95
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 95
    return-object v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/SecurityException;

    .line 100
    const-string v2, "auth.08"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, se:Ljava/lang/SecurityException;
    invoke-virtual {v1, v0}, Ljava/lang/SecurityException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 102
    throw v1
.end method
