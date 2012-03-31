.class public Lorg/apache/harmony/javax/naming/InitialContext;
.super Ljava/lang/Object;
.source "InitialContext.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/Context;


# static fields
.field private static libProperties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static propsCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final contextCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected defaultInitCtx:Lorg/apache/harmony/javax/naming/Context;

.field protected gotDefault:Z

.field protected myProps:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/harmony/javax/naming/InitialContext;->propsCache:Ljava/util/Hashtable;

    .line 177
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/javax/naming/InitialContext;->libProperties:Ljava/util/Hashtable;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 227
    .local p1, environment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->contextCache:Ljava/util/HashMap;

    .line 228
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->internalInit(Ljava/util/Hashtable;)V

    .line 229
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1
    .parameter "doNotInit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->contextCache:Ljava/util/HashMap;

    .line 213
    if-nez p1, :cond_0

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/InitialContext;->internalInit(Ljava/util/Hashtable;)V

    .line 216
    :cond_0
    return-void
.end method

.method public static doLookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lorg/apache/harmony/javax/naming/InitialContext;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/InitialContext;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/harmony/javax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doLookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lorg/apache/harmony/javax/naming/InitialContext;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/InitialContext;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/harmony/javax/naming/InitialContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private initializeDefaultInitCtx()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 476
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->gotDefault:Z

    if-nez v0, :cond_1

    .line 477
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getInitialContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->defaultInitCtx:Lorg/apache/harmony/javax/naming/Context;

    .line 478
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->defaultInitCtx:Lorg/apache/harmony/javax/naming/Context;

    if-nez v0, :cond_0

    .line 479
    new-instance v0, Lorg/apache/harmony/javax/naming/NoInitialContextException;

    .line 480
    const-string v1, "Failed to create an initial context."

    .line 479
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/NoInitialContextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->gotDefault:Z

    .line 484
    :cond_1
    return-void
.end method

.method private internalInit(Ljava/util/Hashtable;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .local p1, env:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const/4 v5, 0x1

    .line 498
    if-nez p1, :cond_2

    .line 499
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    .line 511
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->readSystemProperties(Ljava/util/Hashtable;)V

    .line 514
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 515
    .local v1, cl:Ljava/lang/ClassLoader;
    sget-object v3, Lorg/apache/harmony/javax/naming/InitialContext;->propsCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 516
    sget-object v3, Lorg/apache/harmony/javax/naming/InitialContext;->propsCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    iget-object v4, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    invoke-static {v3, v4, v5}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->mergeEnvironment(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    .line 526
    :goto_1
    sget-object v3, Lorg/apache/harmony/javax/naming/InitialContext;->libProperties:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 527
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 528
    .local v2, props:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->readLibraryResourceFile(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 529
    sput-object v2, Lorg/apache/harmony/javax/naming/InitialContext;->libProperties:Ljava/util/Hashtable;

    .line 532
    .end local v2           #props:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    sget-object v3, Lorg/apache/harmony/javax/naming/InitialContext;->libProperties:Ljava/util/Hashtable;

    iget-object v4, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    invoke-static {v3, v4, v5}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->mergeEnvironment(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    .line 538
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    const-string v4, "java.naming.factory.initial"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;

    .line 544
    :cond_1
    return-void

    .line 501
    .end local v1           #cl:Ljava/lang/ClassLoader;
    :cond_2
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    iput-object v3, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    goto :goto_0

    .line 519
    .restart local v1       #cl:Ljava/lang/ClassLoader;
    :cond_3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 520
    .local v0, appProps:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-static {v0}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->readApplicationResourceFiles(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 521
    sget-object v3, Lorg/apache/harmony/javax/naming/InitialContext;->propsCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    invoke-static {v0, v3, v5}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->mergeEnvironment(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    goto :goto_1
.end method


# virtual methods
.method public addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "propName"
    .parameter "propVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/InitialContext;->contextCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->contextCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 234
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->bind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->gotDefault:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 256
    :cond_0
    return-void
.end method

.method public composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "name"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 300
    return-object p1
.end method

.method public composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "name"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 279
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Name;

    return-object v0
.end method

.method public createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    return-object v0
.end method

.method public destroySubcontext(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->destroySubcontext(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V

    .line 316
    return-void
.end method

.method protected getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->initializeDefaultInitCtx()V

    .line 342
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->defaultInitCtx:Lorg/apache/harmony/javax/naming/Context;

    return-object v0
.end method

.method public getEnvironment()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getNameInNamespace()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->getNameInNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;

    move-result-object v0

    return-object v0
.end method

.method public getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;

    move-result-object v0

    return-object v0
.end method

.method protected getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->hasInitialContextFactoryBuilder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v2

    .line 448
    :goto_0
    return-object v2

    .line 425
    :cond_0
    if-nez p1, :cond_1

    .line 427
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "jndi.00"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_1
    invoke-static {p1}, Lorg/apache/harmony/jndi/internal/UrlParser;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, scheme:Ljava/lang/String;
    const/4 v0, 0x0

    .line 433
    .local v0, ctx:Lorg/apache/harmony/javax/naming/Context;
    if-eqz v1, :cond_4

    .line 434
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/InitialContext;->contextCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 435
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/InitialContext;->contextCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/InitialContext;->contextCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/Context;

    monitor-exit v3

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 440
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 441
    if-nez v0, :cond_3

    .line 442
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 444
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/InitialContext;->contextCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 446
    goto :goto_0

    .line 448
    :cond_4
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v2

    goto :goto_0
.end method

.method protected getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 388
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected init(Ljava/util/Hashtable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 467
    .local p1, env:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->internalInit(Ljava/util/Hashtable;)V

    .line 468
    return-void
.end method

.method public list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupLink(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->lookupLink(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupLink(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->lookupLink(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->rebind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    return-void
.end method

.method public rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V

    .line 593
    return-void
.end method

.method public removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/InitialContext;->contextCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->myProps:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/InitialContext;->contextCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 602
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/InitialContext;->getDefaultInitCtx()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 602
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/Context;->rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V

    .line 612
    return-void
.end method

.method public unbind(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->unbind(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public unbind(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Context;->unbind(Lorg/apache/harmony/javax/naming/Name;)V

    .line 622
    return-void
.end method
