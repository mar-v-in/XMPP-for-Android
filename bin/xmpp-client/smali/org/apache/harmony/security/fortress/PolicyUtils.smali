.class public Lorg/apache/harmony/security/fortress/PolicyUtils;
.super Ljava/lang/Object;
.source "PolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$SystemPropertyAccessor;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field private static final NO_ARGS:[Ljava/lang/Class; = null

.field private static final ONE_ARGS:[Ljava/lang/Class; = null

.field public static final POLICY_ALLOW_DYNAMIC:Ljava/lang/String; = "policy.allowSystemProperty"

.field public static final POLICY_EXPAND:Ljava/lang/String; = "policy.expandProperties"

.field public static final TRUE:Ljava/lang/String; = "true"

.field private static final TWO_ARGS:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    .line 304
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    .line 307
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    return-void
.end method

.method public static canExpandProperties()Z
    .locals 3

    .prologue
    .line 316
    const-string v1, "false"

    .line 317
    new-instance v0, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;

    const-string v2, "policy.expandProperties"

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    invoke-static {v1, v0}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 11
    .parameter "str"
    .parameter "properties"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    .line 334
    const-string v2, "${"

    .line 335
    .local v2, START_MARK:Ljava/lang/String;
    const-string v0, "}"

    .line 336
    .local v0, END_MARK:Ljava/lang/String;
    const-string v9, "${"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    .line 337
    .local v3, START_OFFSET:I
    const-string v9, "}"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    .line 339
    .local v1, END_OFFSET:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .local v6, result:Ljava/lang/StringBuilder;
    const-string v9, "${"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 341
    .local v7, start:I
    :goto_0
    if-gez v7, :cond_0

    .line 356
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 342
    :cond_0
    const-string v9, "}"

    invoke-virtual {v6, v9, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 343
    .local v4, end:I
    if-ltz v4, :cond_1

    .line 344
    add-int v9, v7, v3

    invoke-virtual {v6, v9, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, key:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 347
    add-int v9, v4, v1

    invoke-virtual {v6, v7, v9, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v7, v9

    .line 354
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    const-string v9, "${"

    invoke-virtual {v6, v9, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v7

    goto :goto_0

    .line 350
    .restart local v5       #key:Ljava/lang/String;
    .restart local v8       #value:Ljava/lang/String;
    :cond_2
    new-instance v9, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    .line 351
    const-string v10, "security.14F"

    .line 350
    invoke-static {v10, v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static expandGeneral(Ljava/lang/String;Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;)Ljava/lang/String;
    .locals 13
    .parameter "str"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    .line 375
    const-string v2, "${{"

    .line 376
    .local v2, START_MARK:Ljava/lang/String;
    const-string v0, "}}"

    .line 377
    .local v0, END_MARK:Ljava/lang/String;
    const-string v12, "${{"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    .line 378
    .local v3, START_OFFSET:I
    const-string v12, "}}"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 380
    .local v1, END_OFFSET:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .local v8, result:Ljava/lang/StringBuilder;
    const-string v12, "${{"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 382
    .local v10, start:I
    :goto_0
    if-gez v10, :cond_0

    .line 397
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 383
    :cond_0
    const-string v12, "}}"

    invoke-virtual {v8, v12, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 384
    .local v5, end:I
    if-ltz v5, :cond_1

    .line 385
    add-int v12, v10, v3

    invoke-virtual {v8, v12, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 386
    .local v6, key:Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 387
    .local v9, separator:I
    if-ltz v9, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, protocol:Ljava/lang/String;
    :goto_1
    if-ltz v9, :cond_3

    .line 390
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, data:Ljava/lang/String;
    :goto_2
    invoke-interface {p1, v7, v4}, Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 392
    .local v11, value:Ljava/lang/String;
    add-int v12, v5, v1

    invoke-virtual {v8, v10, v12, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v10, v12

    .line 395
    .end local v4           #data:Ljava/lang/String;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #protocol:Ljava/lang/String;
    .end local v9           #separator:I
    .end local v11           #value:Ljava/lang/String;
    :cond_1
    const-string v12, "${{"

    invoke-virtual {v8, v12, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v10

    goto :goto_0

    .restart local v6       #key:Ljava/lang/String;
    .restart local v9       #separator:I
    :cond_2
    move-object v7, v6

    .line 388
    goto :goto_1

    .line 390
    .restart local v7       #protocol:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "properties"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-static {p0, p1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static filePathToURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 6
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    const/4 v2, 0x0

    .line 421
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 423
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 426
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 424
    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    move-object v3, p0

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPolicyURLs(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)[Ljava/net/URL;
    .locals 13
    .parameter "system"
    .parameter "systemUrlKey"
    .parameter "securityUrlPrefix"

    .prologue
    .line 470
    new-instance v9, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;

    .line 471
    const/4 v11, 0x0

    .line 470
    invoke-direct {v9, v11}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;-><init>(Ljava/lang/String;)V

    .line 472
    .local v9, security:Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v10, urls:Ljava/util/List;,"Ljava/util/List<Ljava/net/URL;>;"
    const/4 v2, 0x0

    .line 474
    .local v2, dynamicOnly:Z
    const/4 v3, 0x0

    .line 477
    .local v3, dynamicURL:Ljava/net/URL;
    const-string v12, "false"

    .line 478
    const-string v11, "policy.allowSystemProperty"

    invoke-virtual {v9, v11}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;->key(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v11

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 477
    invoke-static {v12, v11}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 479
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, location:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 481
    const-string v11, "="

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 483
    const/4 v2, 0x1

    .line 484
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 487
    :cond_0
    :try_start_0
    invoke-static {v8, p0}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    .line 489
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v5, f:Ljava/io/File;
    new-instance v11, Lorg/apache/harmony/security/fortress/PolicyUtils$1;

    invoke-direct {v11, v5}, Lorg/apache/harmony/security/fortress/PolicyUtils$1;-><init>(Ljava/io/File;)V

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/URL;

    move-object v3, v0

    .line 502
    if-nez v3, :cond_1

    .line 503
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #dynamicURL:Ljava/net/URL;
    .local v4, dynamicURL:Ljava/net/URL;
    move-object v3, v4

    .line 512
    .end local v4           #dynamicURL:Ljava/net/URL;
    .end local v5           #f:Ljava/io/File;
    .end local v8           #location:Ljava/lang/String;
    .restart local v3       #dynamicURL:Ljava/net/URL;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 513
    const/4 v6, 0x1

    .line 516
    .local v6, i:I
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 517
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 516
    invoke-virtual {v9, v11}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;->key(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v11

    .line 515
    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 518
    .restart local v8       #location:Ljava/lang/String;
    if-nez v8, :cond_4

    .line 533
    .end local v7           #i:I
    .end local v8           #location:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 534
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/net/URL;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/net/URL;

    return-object v11

    .line 522
    .restart local v7       #i:I
    .restart local v8       #location:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v8, p0}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    .line 523
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 524
    .local v1, anURL:Ljava/net/URL;
    if-eqz v1, :cond_5

    .line 525
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_1

    .line 527
    .end local v1           #anURL:Ljava/net/URL;
    .end local v6           #i:I
    .restart local v7       #i:I
    :catch_0
    move-exception v11

    move v6, v7

    .line 514
    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_1

    .line 505
    .end local v6           #i:I
    :catch_1
    move-exception v11

    goto :goto_0

    .restart local v1       #anURL:Ljava/net/URL;
    .restart local v7       #i:I
    :cond_5
    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_1
.end method

.method public static instantiatePermission(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
    .locals 9
    .parameter
    .parameter "targetName"
    .parameter "targetActions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/security/Permission;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, targetType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 559
    move-object v0, v4

    check-cast v0, [[Ljava/lang/Class;

    .local v0, argTypes:[[Ljava/lang/Class;
    move-object v1, v4

    .line 560
    check-cast v1, [[Ljava/lang/Object;

    .line 561
    .local v1, args:[[Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 562
    new-array v0, v8, [[Ljava/lang/Class;

    .end local v0           #argTypes:[[Ljava/lang/Class;
    sget-object v4, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    aput-object v4, v0, v5

    sget-object v4, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    aput-object v4, v0, v6

    sget-object v4, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    aput-object v4, v0, v7

    .line 563
    .restart local v0       #argTypes:[[Ljava/lang/Class;
    new-array v1, v8, [[Ljava/lang/Object;

    .end local v1           #args:[[Ljava/lang/Object;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    aput-object v4, v1, v5

    .line 564
    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v4, v1, v6

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v4, v1, v7

    .line 576
    .restart local v1       #args:[[Ljava/lang/Object;
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v0

    if-lt v3, v4, :cond_2

    .line 584
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 585
    const-string v5, "security.150"

    .line 584
    invoke-static {v5, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    .end local v3           #i:I
    :cond_0
    if-eqz p1, :cond_1

    .line 566
    new-array v0, v8, [[Ljava/lang/Class;

    .end local v0           #argTypes:[[Ljava/lang/Class;
    sget-object v4, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    aput-object v4, v0, v5

    sget-object v4, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    aput-object v4, v0, v6

    sget-object v4, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    aput-object v4, v0, v7

    .line 567
    .restart local v0       #argTypes:[[Ljava/lang/Class;
    new-array v1, v8, [[Ljava/lang/Object;

    .end local v1           #args:[[Ljava/lang/Object;
    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v4, v1, v5

    .line 568
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    aput-object v4, v1, v6

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v4, v1, v7

    .line 567
    .restart local v1       #args:[[Ljava/lang/Object;
    goto :goto_0

    .line 570
    :cond_1
    new-array v0, v8, [[Ljava/lang/Class;

    .end local v0           #argTypes:[[Ljava/lang/Class;
    sget-object v4, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    aput-object v4, v0, v5

    sget-object v4, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    aput-object v4, v0, v6

    sget-object v4, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    aput-object v4, v0, v7

    .line 571
    .restart local v0       #argTypes:[[Ljava/lang/Class;
    new-array v1, v8, [[Ljava/lang/Object;

    .end local v1           #args:[[Ljava/lang/Object;
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v4, v1, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v4, v1, v6

    .line 572
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    aput-object v4, v1, v7

    .line 571
    .restart local v1       #args:[[Ljava/lang/Object;
    goto :goto_0

    .line 579
    .restart local v3       #i:I
    :cond_2
    :try_start_0
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 580
    .local v2, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Permission;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 581
    .end local v2           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v4

    .line 576
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 10
    .parameter "what"
    .parameter "where"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 601
    if-nez p0, :cond_1

    .line 622
    :cond_0
    :goto_0
    return v3

    .line 605
    :cond_1
    array-length v7, p0

    move v6, v4

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v0, p0, v6

    .line 606
    .local v0, element:Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 607
    if-nez p1, :cond_2

    move v3, v4

    .line 608
    goto :goto_0

    .line 610
    :cond_2
    const/4 v2, 0x0

    .line 611
    .local v2, found:Z
    array-length v8, p1

    move v5, v4

    :goto_2
    if-lt v5, v8, :cond_3

    .line 617
    :goto_3
    if-nez v2, :cond_5

    move v3, v4

    .line 618
    goto :goto_0

    .line 611
    :cond_3
    aget-object v1, p1, v5

    .line 612
    .local v1, element2:Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 613
    const/4 v2, 0x1

    .line 614
    goto :goto_3

    .line 611
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 605
    .end local v1           #element2:Ljava/lang/Object;
    .end local v2           #found:Z
    :cond_5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1
.end method

.method public static normalizeURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 3
    .parameter "codebase"

    .prologue
    .line 633
    if-eqz p0, :cond_1

    const-string v1, "file"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 636
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 640
    const-string v0, "*"

    .line 642
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->filePathToURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 643
    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    .line 652
    .end local v0           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 646
    :cond_2
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static toPermissionCollection(Ljava/util/Collection;)Ljava/security/PermissionCollection;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;)",
            "Ljava/security/PermissionCollection;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, perms:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    new-instance v1, Ljava/security/Permissions;

    invoke-direct {v1}, Ljava/security/Permissions;-><init>()V

    .line 667
    .local v1, pc:Ljava/security/Permissions;
    if-eqz p0, :cond_0

    .line 668
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 672
    :cond_0
    return-object v1

    .line 668
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Permission;

    .line 669
    .local v0, element:Ljava/security/Permission;
    invoke-virtual {v1, v0}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    goto :goto_0
.end method
