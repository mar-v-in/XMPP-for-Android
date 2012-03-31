.class Lorg/apache/harmony/jndi/internal/EnvironmentReader$6;
.super Ljava/lang/Object;
.source "EnvironmentReader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/internal/EnvironmentReader;->readSystemProperties(Ljava/util/Hashtable;)V
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
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$6;->run()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    new-instance v0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$SystemPropertiesSource;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$SystemPropertiesSource;-><init>()V

    invoke-static {v0}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->filterProperties(Lorg/apache/harmony/jndi/internal/EnvironmentReader$JNDIPropertiesSource;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method
