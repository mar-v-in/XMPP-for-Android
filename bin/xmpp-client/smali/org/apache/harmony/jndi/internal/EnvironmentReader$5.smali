.class Lorg/apache/harmony/jndi/internal/EnvironmentReader$5;
.super Ljava/lang/Object;
.source "EnvironmentReader.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/internal/EnvironmentReader;->readProviderResourceFiles(Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Lorg/apache/harmony/javax/naming/Context;

.field private final synthetic val$existingProps:Ljava/util/Hashtable;

.field private final synthetic val$finalResPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$5;->val$finalResPath:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$5;->val$existingProps:Ljava/util/Hashtable;

    iput-object p3, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$5;->val$context:Lorg/apache/harmony/javax/naming/Context;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$5;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$5;->val$finalResPath:Ljava/lang/String;

    .line 425
    iget-object v1, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$5;->val$existingProps:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$5;->val$context:Lorg/apache/harmony/javax/naming/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 424
    invoke-static {v0, v1, v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->readMultipleResourceFiles(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/ClassLoader;)Ljava/util/Hashtable;

    .line 427
    const/4 v0, 0x0

    return-object v0
.end method
