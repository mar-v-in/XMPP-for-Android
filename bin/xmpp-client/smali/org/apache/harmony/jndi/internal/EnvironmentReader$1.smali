.class Lorg/apache/harmony/jndi/internal/EnvironmentReader$1;
.super Ljava/lang/Object;
.source "EnvironmentReader.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/internal/EnvironmentReader;->readApplicationResourceFiles(Ljava/util/Hashtable;)Ljava/util/Hashtable;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$existingProps:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$1;->val$existingProps:Ljava/util/Hashtable;

    .line 232
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
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 236
    const-string v0, "jndi.properties"

    iget-object v1, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$1;->val$existingProps:Ljava/util/Hashtable;

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 238
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 235
    invoke-static {v0, v1, v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->readMultipleResourceFiles(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/ClassLoader;)Ljava/util/Hashtable;

    .line 239
    const/4 v0, 0x0

    return-object v0
.end method
