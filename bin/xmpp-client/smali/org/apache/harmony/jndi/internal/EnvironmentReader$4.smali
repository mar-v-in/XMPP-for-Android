.class Lorg/apache/harmony/jndi/internal/EnvironmentReader$4;
.super Ljava/lang/Object;
.source "EnvironmentReader.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/internal/EnvironmentReader;->readLibraryResourceFile(Ljava/util/Hashtable;)Ljava/util/Hashtable;
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
        "Ljava/io/FileInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$p:Ljava/util/Properties;

.field private final synthetic val$resFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/Properties;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$4;->val$resFile:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$4;->val$p:Ljava/util/Properties;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Ljava/io/FileInputStream;

    .line 302
    iget-object v1, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$4;->val$resFile:Ljava/io/File;

    .line 301
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 303
    .local v0, localInputStream:Ljava/io/FileInputStream;
    iget-object v1, p0, Lorg/apache/harmony/jndi/internal/EnvironmentReader$4;->val$p:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 304
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/EnvironmentReader$4;->run()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method
