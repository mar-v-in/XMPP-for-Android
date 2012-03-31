.class public Lorg/apache/harmony/javax/naming/spi/DirectoryManager;
.super Lorg/apache/harmony/javax/naming/spi/NamingManager;
.source "DirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 828
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/spi/NamingManager;-><init>()V

    .line 829
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
    .line 431
    new-instance v1, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$1;

    invoke-direct {v1, p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 453
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 455
    new-instance v1, Ljava/lang/ClassNotFoundException;

    .line 456
    const-string v2, "jndi.1C"

    .line 455
    invoke-static {v2, p0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_0
    return-object v0
.end method

.method public static getContinuationDirContext(Lorg/apache/harmony/javax/naming/CannotProceedException;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 2
    .parameter "cpe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 489
    .local v0, nextContext:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-static {p0}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getContinuationContext(Lorg/apache/harmony/javax/naming/CannotProceedException;)Lorg/apache/harmony/javax/naming/Context;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/CannotProceedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 495
    :goto_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_0

    .line 497
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 501
    .end local v0           #nextContext:Lorg/apache/harmony/javax/naming/Context;
    :goto_1
    return-object v0

    .restart local v0       #nextContext:Lorg/apache/harmony/javax/naming/Context;
    :cond_0
    new-instance v1, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;

    invoke-direct {v1, v0, p0}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager$Context2DirContextWrapper;-><init>(Lorg/apache/harmony/javax/naming/Context;Lorg/apache/harmony/javax/naming/CannotProceedException;)V

    move-object v0, v1

    goto :goto_1

    .line 490
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;
    .locals 8
    .parameter "o"
    .parameter "n"
    .parameter "c"
    .parameter
    .parameter "a"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 544
    .local p3, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    sget-object v2, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->ofb:Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;

    if-eqz v2, :cond_1

    .line 546
    sget-object v2, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->ofb:Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;

    invoke-interface {v2, p0, p3}, Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;->createObjectFactory(Ljava/lang/Object;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ObjectFactory;

    move-result-object v0

    .local v0, factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 548
    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getObjectInstanceFromGivenFactory(Lorg/apache/harmony/javax/naming/spi/ObjectFactory;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;

    move-result-object v7

    .line 581
    .end local v0           #factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :cond_0
    :goto_0
    return-object v7

    .line 552
    :cond_1
    const/4 v1, 0x0

    .line 553
    .local v1, ref:Lorg/apache/harmony/javax/naming/Reference;
    instance-of v2, p0, Lorg/apache/harmony/javax/naming/Referenceable;

    if-eqz v2, :cond_2

    move-object v2, p0

    .line 554
    check-cast v2, Lorg/apache/harmony/javax/naming/Referenceable;

    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/Referenceable;->getReference()Lorg/apache/harmony/javax/naming/Reference;

    move-result-object v1

    .line 556
    :cond_2
    instance-of v2, p0, Lorg/apache/harmony/javax/naming/Reference;

    if-eqz v2, :cond_3

    move-object v1, p0

    .line 557
    check-cast v1, Lorg/apache/harmony/javax/naming/Reference;

    .line 560
    :cond_3
    if-eqz v1, :cond_5

    .line 563
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/Reference;->getFactoryClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 564
    invoke-static/range {v1 .. v6}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getObjectInstanceByFactoryInReference(Lorg/apache/harmony/javax/naming/Reference;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 567
    :cond_4
    invoke-static {p1, p2, p3, v1}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getObjectInstanceByUrlRefAddr(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Reference;)Ljava/lang/Object;

    move-result-object v7

    .line 569
    .local v7, result:Ljava/lang/Object;
    if-nez v7, :cond_0

    .line 575
    .end local v7           #result:Ljava/lang/Object;
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getObjectInstanceByObjectFactory(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;

    move-result-object v7

    .line 576
    .restart local v7       #result:Ljava/lang/Object;
    if-nez v7, :cond_0

    move-object v7, p0

    .line 581
    goto :goto_0
.end method

.method private static getObjectInstanceByFactoryInReference(Lorg/apache/harmony/javax/naming/Reference;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;
    .locals 7
    .parameter "ref"
    .parameter "o"
    .parameter "n"
    .parameter "c"
    .parameter
    .parameter "a"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Reference;",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 587
    .local p4, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const/4 v1, 0x0

    .line 591
    .local v1, factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/Reference;->getFactoryClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 592
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/Reference;->getFactoryClassLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/Reference;->getFactoryClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/Reference;->getFactoryClassLocation()Ljava/lang/String;

    move-result-object v3

    .line 599
    invoke-static {v2, v3}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->loadFactoryFromLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    check-cast v1, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;

    .line 603
    .restart local v1       #factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :cond_0
    if-nez v1, :cond_1

    .line 609
    .end local p1
    :goto_1
    return-object p1

    .restart local p1
    :cond_1
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getObjectInstanceFromGivenFactory(Lorg/apache/harmony/javax/naming/spi/ObjectFactory;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 593
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getObjectInstanceByObjectFactory(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;
    .locals 13
    .parameter "o"
    .parameter "n"
    .parameter "c"
    .parameter
    .parameter "a"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
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
    .line 618
    .line 619
    .local p3, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const-string v2, "java.naming.factory.object"

    .line 618
    move-object/from16 v0, p3

    invoke-static {v0, p2, v2}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->getFactoryNamesFromEnvironmentAndProviderResource(Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 620
    .local v9, fnames:[Ljava/lang/String;
    array-length v12, v9

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-lt v11, v12, :cond_1

    .line 636
    const/4 v10, 0x0

    :cond_0
    return-object v10

    .line 620
    :cond_1
    aget-object v8, v9, v11

    .line 622
    .local v8, element:Ljava/lang/String;
    const/4 v1, 0x0

    .line 624
    .local v1, factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :try_start_0
    invoke-static {v8}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 629
    invoke-static/range {v1 .. v6}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getObjectInstanceFromGivenFactory(Lorg/apache/harmony/javax/naming/spi/ObjectFactory;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;

    move-result-object v10

    .line 631
    .local v10, obj:Ljava/lang/Object;
    if-nez v10, :cond_0

    .line 620
    .end local v10           #obj:Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 625
    :catch_0
    move-exception v7

    .line 626
    .local v7, e:Ljava/lang/Exception;
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
    .line 643
    .local p3, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 644
    :cond_0
    const/4 v6, 0x0

    .line 683
    :cond_1
    :goto_0
    return-object v6

    .line 647
    :cond_2
    array-length v9, p4

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-lt v8, v9, :cond_3

    .line 683
    const/4 v6, 0x0

    goto :goto_0

    .line 647
    :cond_3
    aget-object v3, p4, v8

    .line 648
    .local v3, element:Ljava/lang/String;
    const/4 v4, 0x0

    .line 651
    .local v4, factory:Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "URLContextFactory"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 651
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, clsName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :try_start_1
    invoke-interface {v4, p0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 667
    .local v6, obj:Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 647
    .end local v1           #clsName:Ljava/lang/String;
    .end local v6           #obj:Ljava/lang/Object;
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    .line 654
    :catch_0
    move-exception v2

    .line 656
    .local v2, e:Ljava/lang/Exception;
    goto :goto_2

    .line 670
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #clsName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 672
    .restart local v2       #e:Ljava/lang/Exception;
    instance-of v7, v2, Lorg/apache/harmony/javax/naming/NamingException;

    if-eqz v7, :cond_4

    .line 673
    check-cast v2, Lorg/apache/harmony/javax/naming/NamingException;

    .end local v2           #e:Ljava/lang/Exception;
    throw v2

    .line 676
    .restart local v2       #e:Ljava/lang/Exception;
    :cond_4
    new-instance v5, Lorg/apache/harmony/javax/naming/NamingException;

    .line 677
    const-string v7, "jndi.21"

    invoke-static {v7}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 676
    invoke-direct {v5, v7}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 678
    .local v5, nex:Lorg/apache/harmony/javax/naming/NamingException;
    invoke-virtual {v5, v2}, Lorg/apache/harmony/javax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 679
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
    .line 690
    .line 691
    .local p2, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const-string v1, "java.naming.factory.url.pkgs"

    .line 690
    invoke-static {p2, p1, v1}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->getFactoryNamesFromEnvironmentAndProviderResource(Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 693
    .local v4, pkgPrefixes:[Ljava/lang/String;
    invoke-virtual {p3}, Lorg/apache/harmony/javax/naming/Reference;->getAll()Ljava/util/Enumeration;

    move-result-object v7

    .line 694
    .local v7, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/RefAddr;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 712
    const/4 v8, 0x0

    :goto_0
    return-object v8

    .line 695
    :cond_1
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/javax/naming/RefAddr;

    .line 697
    .local v6, addr:Lorg/apache/harmony/javax/naming/RefAddr;
    instance-of v1, v6, Lorg/apache/harmony/javax/naming/StringRefAddr;

    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {v6}, Lorg/apache/harmony/javax/naming/RefAddr;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    check-cast v6, Lorg/apache/harmony/javax/naming/StringRefAddr;

    .end local v6           #addr:Lorg/apache/harmony/javax/naming/RefAddr;
    invoke-virtual {v6}, Lorg/apache/harmony/javax/naming/StringRefAddr;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 703
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/jndi/internal/UrlParser;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 702
    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getObjectInstanceByUrlContextFactory(Ljava/lang/String;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 705
    .local v8, obj:Ljava/lang/Object;
    if-eqz v8, :cond_0

    goto :goto_0
.end method

.method private static getObjectInstanceFromGivenFactory(Lorg/apache/harmony/javax/naming/spi/ObjectFactory;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;
    .locals 6
    .parameter "factory"
    .parameter "o"
    .parameter "n"
    .parameter "c"
    .parameter
    .parameter "a"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/spi/ObjectFactory;",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 722
    .local p4, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    instance-of v0, p0, Lorg/apache/harmony/javax/naming/spi/DirObjectFactory;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 723
    check-cast v0, Lorg/apache/harmony/javax/naming/spi/DirObjectFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 724
    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/javax/naming/spi/DirObjectFactory;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;

    move-result-object v0

    .line 726
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/naming/spi/ObjectFactory;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStateToBind(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;
    .locals 18
    .parameter "o"
    .parameter "n"
    .parameter "c"
    .parameter
    .parameter "a"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 767
    .line 768
    .local p3, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const-string v4, "java.naming.factory.state"

    .line 767
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->getFactoryNamesFromEnvironmentAndProviderResource(Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 770
    .local v13, fnames:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 797
    new-instance v14, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v1}, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;-><init>(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    :cond_0
    :goto_1
    return-object v14

    .line 770
    :cond_1
    aget-object v11, v13, v16

    .line 772
    .local v11, element:Ljava/lang/String;
    const/4 v12, 0x0

    .line 774
    .local v12, factory:Lorg/apache/harmony/javax/naming/spi/StateFactory;
    :try_start_0
    invoke-static {v11}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/apache/harmony/javax/naming/spi/StateFactory;

    move-object v12, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    instance-of v4, v12, Lorg/apache/harmony/javax/naming/spi/DirStateFactory;

    if-eqz v4, :cond_3

    move-object v4, v12

    .line 780
    check-cast v4, Lorg/apache/harmony/javax/naming/spi/DirStateFactory;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v4 .. v9}, Lorg/apache/harmony/javax/naming/spi/DirStateFactory;->getStateToBind(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;

    move-result-object v14

    .line 783
    .local v14, r:Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;
    if-nez v14, :cond_0

    .line 770
    .end local v14           #r:Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;
    :cond_2
    :goto_2
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_0

    .line 775
    :catch_0
    move-exception v10

    .line 776
    .local v10, e:Ljava/lang/Exception;
    goto :goto_2

    .line 788
    .end local v10           #e:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v12, v0, v1, v2, v3}, Lorg/apache/harmony/javax/naming/spi/StateFactory;->getStateToBind(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v15

    .line 790
    .local v15, state:Ljava/lang/Object;
    if-eqz v15, :cond_2

    .line 791
    new-instance v14, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;

    move-object/from16 v0, p4

    invoke-direct {v14, v15, v0}, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;-><init>(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    goto :goto_1
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
    .line 808
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, " "

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v4, v5, [Ljava/net/URL;

    .line 810
    .local v4, urls:[Ljava/net/URL;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-lt v1, v5, :cond_0

    .line 815
    new-instance v2, Ljava/net/URLClassLoader;

    invoke-direct {v2, v4}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V

    .line 820
    .local v2, l:Ljava/net/URLClassLoader;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/net/URLClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 823
    :goto_1
    return-object v5

    .line 811
    .end local v2           #l:Ljava/net/URLClassLoader;
    :cond_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 821
    .restart local v2       #l:Ljava/net/URLClassLoader;
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/4 v5, 0x0

    goto :goto_1
.end method
