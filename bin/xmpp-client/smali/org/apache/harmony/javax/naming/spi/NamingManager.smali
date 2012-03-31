.class public Lorg/apache/harmony/javax/naming/spi/NamingManager;
.super Ljava/lang/Object;
.source "NamingManager.java"


# static fields
.field public static final CPE:Ljava/lang/String; = "java.naming.spi.CannotProceedException"

.field static icfb:Lorg/apache/harmony/javax/naming/spi/InitialContextFactoryBuilder;

.field static ofb:Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    return-void
.end method

.method private static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v1, Lorg/apache/harmony/javax/naming/spi/NamingManager$1;

    invoke-direct {v1, p0}, Lorg/apache/harmony/javax/naming/spi/NamingManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 134
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 136
    new-instance v1, Ljava/lang/ClassNotFoundException;

    .line 137
    const-string v2, "jndi.1C"

    .line 136
    invoke-static {v2, p0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    return-object v0
.end method

.method public static getContinuationContext(Lorg/apache/harmony/javax/naming/CannotProceedException;)Lorg/apache/harmony/javax/naming/Context;
    .locals 6
    .parameter "cpe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 187
    .local v0, ctx:Lorg/apache/harmony/javax/naming/Context;
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 188
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0, v2}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setEnvironment(Ljava/util/Hashtable;)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v2

    .line 191
    const-string v3, "java.naming.spi.CannotProceedException"

    .line 190
    invoke-virtual {v2, v3, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getResolvedObj()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 196
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 197
    throw p0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getResolvedObj()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/Context;

    if-eqz v2, :cond_3

    .line 203
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ctx:Lorg/apache/harmony/javax/naming/Context;
    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 223
    .restart local v0       #ctx:Lorg/apache/harmony/javax/naming/Context;
    :cond_2
    return-object v0

    .line 207
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getResolvedObj()Ljava/lang/Object;

    move-result-object v2

    .line 208
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getAltName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getAltNameCtx()Lorg/apache/harmony/javax/naming/Context;

    move-result-object v4

    .line 209
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v5

    .line 207
    invoke-static {v2, v3, v4, v5}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ctx:Lorg/apache/harmony/javax/naming/Context;
    check-cast v0, Lorg/apache/harmony/javax/naming/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .restart local v0       #ctx:Lorg/apache/harmony/javax/naming/Context;
    if-nez v0, :cond_2

    .line 217
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 218
    throw p0

    .line 210
    .end local v0           #ctx:Lorg/apache/harmony/javax/naming/Context;
    :catch_0
    move-exception v1

    .line 212
    .local v1, ex:Ljava/lang/Exception;
    throw p0
.end method

.method public static getInitialContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/Context;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NoInitialContextException;,
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 247
    .local p0, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    sget-object v5, Lorg/apache/harmony/javax/naming/spi/NamingManager;->icfb:Lorg/apache/harmony/javax/naming/spi/InitialContextFactoryBuilder;

    if-eqz v5, :cond_0

    .line 249
    sget-object v5, Lorg/apache/harmony/javax/naming/spi/NamingManager;->icfb:Lorg/apache/harmony/javax/naming/spi/InitialContextFactoryBuilder;

    invoke-interface {v5, p0}, Lorg/apache/harmony/javax/naming/spi/InitialContextFactoryBuilder;->createInitialContextFactory(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;

    move-result-object v5

    invoke-interface {v5, p0}, Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;->getInitialContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v5

    .line 262
    :goto_0
    return-object v5

    .line 256
    :cond_0
    :try_start_0
    const-string v5, "java.naming.factory.initial"

    invoke-virtual {p0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 258
    .local v3, factoryClassName:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 260
    .local v2, factoryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;

    .line 262
    .local v1, factory:Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;
    invoke-interface {v1, p0}, Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;->getInitialContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 263
    .end local v1           #factory:Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;
    .end local v2           #factoryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #factoryClassName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Lorg/apache/harmony/javax/naming/NamingException;
    throw v0

    .line 266
    .end local v0           #e:Lorg/apache/harmony/javax/naming/NamingException;
    :catch_1
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lorg/apache/harmony/javax/naming/NoInitialContextException;

    .line 271
    const-string v5, "jndi.20"

    invoke-static {v5, p0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/naming/NoInitialContextException;-><init>(Ljava/lang/String;)V

    .line 272
    .local v4, nex:Lorg/apache/harmony/javax/naming/NamingException;
    invoke-virtual {v4, v0}, Lorg/apache/harmony/javax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 273
    throw v4
.end method

.method public static getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    .locals 4
    .parameter "o"
    .parameter "n"
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 357
    .local p3, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    sget-object v3, Lorg/apache/harmony/javax/naming/spi/NamingManager;->ofb:Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;

    if-eqz v3, :cond_1

    .line 359
    sget-object v3, Lorg/apache/harmony/javax/naming/spi/NamingManager;->ofb:Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;

    invoke-interface {v3, p0, p3}, Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;->createObjectFactory(Ljava/lang/Object;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ObjectFactory;

    move-result-object v0

    .line 361
    .local v0, factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v2

    .line 394
    .end local v0           #factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :cond_0
    :goto_0
    return-object v2

    .line 365
    :cond_1
    const/4 v1, 0x0

    .line 366
    .local v1, ref:Lorg/apache/harmony/javax/naming/Reference;
    instance-of v3, p0, Lorg/apache/harmony/javax/naming/Referenceable;

    if-eqz v3, :cond_2

    move-object v3, p0

    .line 367
    check-cast v3, Lorg/apache/harmony/javax/naming/Referenceable;

    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/Referenceable;->getReference()Lorg/apache/harmony/javax/naming/Reference;

    move-result-object v1

    .line 369
    :cond_2
    instance-of v3, p0, Lorg/apache/harmony/javax/naming/Reference;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 370
    check-cast v1, Lorg/apache/harmony/javax/naming/Reference;

    .line 373
    :cond_3
    if-eqz v1, :cond_5

    .line 376
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/Reference;->getFactoryClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 377
    invoke-static {v1, p0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getObjectInstanceByFactoryInReference(Lorg/apache/harmony/javax/naming/Reference;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 380
    :cond_4
    invoke-static {p1, p2, p3, v1}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getObjectInstanceByUrlRefAddr(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Reference;)Ljava/lang/Object;

    move-result-object v2

    .line 382
    .local v2, result:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 388
    .end local v2           #result:Ljava/lang/Object;
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getObjectInstanceByObjectFactory(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v2

    .line 389
    .restart local v2       #result:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v2, p0

    .line 394
    goto :goto_0
.end method

.method private static getObjectInstanceByFactoryInReference(Lorg/apache/harmony/javax/naming/Reference;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    .locals 4
    .parameter "ref"
    .parameter "o"
    .parameter "n"
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Reference;",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 399
    .local p4, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const/4 v1, 0x0

    .line 403
    .local v1, factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/Reference;->getFactoryClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 404
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/Reference;->getFactoryClassLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/Reference;->getFactoryClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/Reference;->getFactoryClassLocation()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-static {v2, v3}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->loadFactoryFromLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    check-cast v1, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;

    .line 415
    .restart local v1       #factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :cond_0
    if-nez v1, :cond_1

    .line 421
    .end local p1
    :goto_1
    return-object p1

    .restart local p1
    :cond_1
    invoke-interface {v1, p0, p2, p3, p4}, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 405
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getObjectInstanceByObjectFactory(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    .locals 9
    .parameter "o"
    .parameter "n"
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 429
    .line 430
    .local p3, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const-string v6, "java.naming.factory.object"

    .line 429
    invoke-static {p3, p2, v6}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->getFactoryNamesFromEnvironmentAndProviderResource(Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, fnames:[Ljava/lang/String;
    array-length v8, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_1

    .line 446
    const/4 v5, 0x0

    :cond_0
    return-object v5

    .line 431
    :cond_1
    aget-object v2, v4, v7

    .line 433
    .local v2, element:Ljava/lang/String;
    const/4 v3, 0x0

    .line 435
    .local v3, factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :try_start_0
    invoke-static {v2}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    invoke-interface {v3, p0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v5

    .line 441
    .local v5, obj:Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 431
    .end local v5           #obj:Ljava/lang/Object;
    :goto_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    .local v1, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method private static getObjectInstanceByUrlContextFactory(Ljava/lang/String;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "url"
    .parameter "n"
    .parameter "c"
    .parameter
    .parameter "pkgPrefixes"
    .parameter "schema"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 453
    .local p3, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 454
    :cond_0
    const/4 v6, 0x0

    .line 489
    :cond_1
    :goto_0
    return-object v6

    .line 457
    :cond_2
    array-length v9, p4

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-lt v8, v9, :cond_3

    .line 489
    const/4 v6, 0x0

    goto :goto_0

    .line 457
    :cond_3
    aget-object v3, p4, v8

    .line 458
    .local v3, element:Ljava/lang/String;
    const/4 v4, 0x0

    .line 461
    .local v4, factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 462
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 463
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "URLContextFactory"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 461
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, clsName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :try_start_1
    invoke-interface {v4, p0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 473
    .local v6, obj:Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 457
    .end local v1           #clsName:Ljava/lang/String;
    .end local v6           #obj:Ljava/lang/Object;
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    .line 465
    :catch_0
    move-exception v2

    .line 467
    .local v2, e:Ljava/lang/Exception;
    goto :goto_2

    .line 476
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #clsName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 478
    .restart local v2       #e:Ljava/lang/Exception;
    instance-of v7, v2, Lorg/apache/harmony/javax/naming/NamingException;

    if-eqz v7, :cond_4

    .line 479
    check-cast v2, Lorg/apache/harmony/javax/naming/NamingException;

    .end local v2           #e:Ljava/lang/Exception;
    throw v2

    .line 482
    .restart local v2       #e:Ljava/lang/Exception;
    :cond_4
    new-instance v5, Lorg/apache/harmony/javax/naming/NamingException;

    .line 483
    const-string v7, "jndi.21"

    invoke-static {v7}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 482
    invoke-direct {v5, v7}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 484
    .local v5, nex:Lorg/apache/harmony/javax/naming/NamingException;
    invoke-virtual {v5, v2}, Lorg/apache/harmony/javax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 485
    throw v5
.end method

.method private static getObjectInstanceByUrlRefAddr(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Reference;)Ljava/lang/Object;
    .locals 9
    .parameter "n"
    .parameter "c"
    .parameter
    .parameter "ref"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;",
            "Lorg/apache/harmony/javax/naming/Reference;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 496
    .line 497
    .local p2, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const-string v1, "java.naming.factory.url.pkgs"

    .line 496
    invoke-static {p2, p1, v1}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->getFactoryNamesFromEnvironmentAndProviderResource(Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, pkgPrefixes:[Ljava/lang/String;
    invoke-virtual {p3}, Lorg/apache/harmony/javax/naming/Reference;->getAll()Ljava/util/Enumeration;

    move-result-object v7

    .line 500
    .local v7, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/RefAddr;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 518
    const/4 v8, 0x0

    :goto_0
    return-object v8

    .line 501
    :cond_1
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/javax/naming/RefAddr;

    .line 503
    .local v6, addr:Lorg/apache/harmony/javax/naming/RefAddr;
    instance-of v1, v6, Lorg/apache/harmony/javax/naming/StringRefAddr;

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v6}, Lorg/apache/harmony/javax/naming/RefAddr;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    check-cast v6, Lorg/apache/harmony/javax/naming/StringRefAddr;

    .end local v6           #addr:Lorg/apache/harmony/javax/naming/RefAddr;
    invoke-virtual {v6}, Lorg/apache/harmony/javax/naming/StringRefAddr;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 509
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/jndi/internal/UrlParser;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 508
    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getObjectInstanceByUrlContextFactory(Ljava/lang/String;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 511
    .local v8, obj:Ljava/lang/Object;
    if-eqz v8, :cond_0

    goto :goto_0
.end method

.method public static getStateToBind(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    .locals 9
    .parameter "o"
    .parameter "n"
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 571
    .line 572
    .local p3, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const-string v6, "java.naming.factory.state"

    .line 571
    invoke-static {p3, p2, v6}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->getFactoryNamesFromEnvironmentAndProviderResource(Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, fnames:[Ljava/lang/String;
    array-length v8, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_1

    move-object v5, p0

    .line 591
    :cond_0
    return-object v5

    .line 574
    :cond_1
    aget-object v2, v4, v7

    .line 576
    .local v2, element:Ljava/lang/String;
    const/4 v3, 0x0

    .line 578
    .local v3, factory:Lorg/apache/harmony/javax/naming/spi/StateFactory;
    :try_start_0
    invoke-static {v2}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/harmony/javax/naming/spi/StateFactory;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    invoke-interface {v3, p0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/spi/StateFactory;->getStateToBind(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v5

    .line 585
    .local v5, state:Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 574
    .end local v5           #state:Ljava/lang/Object;
    :goto_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 579
    :catch_0
    move-exception v1

    .line 580
    .local v1, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static getURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;
    .locals 12
    .parameter "schema"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/Context;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .local p1, envmt:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const/4 v7, 0x0

    .line 643
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-object v7

    .line 650
    :cond_1
    const-string v8, "java.naming.factory.url.pkgs"

    .line 649
    invoke-static {p1, v7, v8}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->getFactoryNamesFromEnvironmentAndProviderResource(Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, pkgPrefixes:[Ljava/lang/String;
    array-length v9, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v2, v6, v8

    .line 656
    .local v2, element:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 657
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 658
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "URLContextFactory"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 656
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, clsName:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .local v4, factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v4, v7, v8, v9, p1}, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/javax/naming/Context;
    :try_end_1
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 660
    .end local v0           #clsName:Ljava/lang/String;
    .end local v4           #factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :catch_0
    move-exception v3

    .line 652
    .local v3, ex:Ljava/lang/Exception;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 668
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v0       #clsName:Ljava/lang/String;
    .restart local v4       #factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :catch_1
    move-exception v1

    .line 670
    .local v1, e:Lorg/apache/harmony/javax/naming/NamingException;
    throw v1

    .line 671
    .end local v1           #e:Lorg/apache/harmony/javax/naming/NamingException;
    :catch_2
    move-exception v1

    .line 674
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Lorg/apache/harmony/javax/naming/NamingException;

    .line 675
    const-string v7, "jndi.22"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 674
    invoke-direct {v5, v7}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 676
    .local v5, nex:Lorg/apache/harmony/javax/naming/NamingException;
    invoke-virtual {v5, v1}, Lorg/apache/harmony/javax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 677
    throw v5
.end method

.method public static hasInitialContextFactoryBuilder()Z
    .locals 1

    .prologue
    .line 693
    sget-object v0, Lorg/apache/harmony/javax/naming/spi/NamingManager;->icfb:Lorg/apache/harmony/javax/naming/spi/InitialContextFactoryBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadFactoryFromLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "clsName"
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 704
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, " "

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v4, v5, [Ljava/net/URL;

    .line 706
    .local v4, urls:[Ljava/net/URL;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-lt v1, v5, :cond_0

    .line 711
    new-instance v2, Ljava/net/URLClassLoader;

    invoke-direct {v2, v4}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V

    .line 716
    .local v2, l:Ljava/net/URLClassLoader;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/net/URLClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 719
    :goto_1
    return-object v5

    .line 707
    .end local v2           #l:Ljava/net/URLClassLoader;
    :cond_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 706
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    .restart local v2       #l:Ljava/net/URLClassLoader;
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static setInitialContextFactoryBuilder(Lorg/apache/harmony/javax/naming/spi/InitialContextFactoryBuilder;)V
    .locals 4
    .parameter "icfb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/SecurityException;,
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 744
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 747
    :cond_0
    const-class v2, Lorg/apache/harmony/javax/naming/spi/NamingManager;

    monitor-enter v2

    .line 748
    :try_start_0
    sget-object v1, Lorg/apache/harmony/javax/naming/spi/NamingManager;->icfb:Lorg/apache/harmony/javax/naming/spi/InitialContextFactoryBuilder;

    if-eqz v1, :cond_1

    .line 750
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "jndi.1E"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 747
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 752
    :cond_1
    :try_start_1
    sput-object p0, Lorg/apache/harmony/javax/naming/spi/NamingManager;->icfb:Lorg/apache/harmony/javax/naming/spi/InitialContextFactoryBuilder;

    .line 747
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    return-void
.end method

.method public static declared-synchronized setObjectFactoryBuilder(Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;)V
    .locals 4
    .parameter "ofb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/SecurityException;,
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 777
    const-class v2, Lorg/apache/harmony/javax/naming/spi/NamingManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/apache/harmony/javax/naming/spi/NamingManager;->ofb:Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;

    if-eqz v1, :cond_0

    .line 779
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "jndi.1F"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 783
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 784
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 785
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 788
    :cond_1
    sput-object p0, Lorg/apache/harmony/javax/naming/spi/NamingManager;->ofb:Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    monitor-exit v2

    return-void
.end method
