.class public Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;
.super Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
.source "STUNResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger; = null

.field public static final STUNSERVERS_FILENAME:Ljava/lang/String; = "META-INF/stun-config.xml"


# instance fields
.field protected currentServer:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

.field protected defaultPort:I

.field protected resolvedLocalIP:Ljava/lang/String;

.field protected resolvedPublicIP:Ljava/lang/String;

.field protected resolverThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 173
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->defaultPort:I

    .line 196
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;-><init>(Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->currentServer:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    .line 197
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "defaultPort"

    .prologue
    .line 206
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;-><init>()V

    .line 208
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->defaultPort:I

    .line 209
    return-void
.end method

.method static synthetic access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    return-object v0
.end method

.method private bestSTUNServer(Ljava/util/ArrayList;)Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;",
            ">;)",
            "Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, listServers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->isResolving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->resolverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 234
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->setResolveEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 245
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->defaultPort:I

    .line 246
    invoke-super {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->currentServer:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->currentServer:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->getHostname()Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentServerPort()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->currentServer:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->currentServer:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->getPort()I

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v1, "Initialized"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->isResolving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->isResolved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->currentServer:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->loadSTUNServers()Ljava/util/ArrayList;

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->currentServer:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->isNull()Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->clearCandidates()V

    .line 293
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$1;-><init>(Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;)V

    .line 375
    const-string v2, "Waiting for all the transport candidates checks..."

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 293
    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->resolverThread:Ljava/lang/Thread;

    .line 377
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->resolverThread:Ljava/lang/Thread;

    const-string v1, "STUN resolver"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->resolverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 383
    :cond_1
    return-void

    .line 380
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No valid STUN server found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isResolving()Z
    .locals 1

    .prologue
    .line 392
    invoke-super {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->isResolving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->resolverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSTUNServers()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 418
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v3, serversList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;>;"
    const/4 v8, 0x2

    :try_start_0
    new-array v1, v8, [Ljava/lang/ClassLoader;

    .line 424
    .local v1, classLoaders:[Ljava/lang/ClassLoader;
    const/4 v8, 0x0

    new-instance v9, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$2;

    invoke-direct {v9, p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$2;-><init>(Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;)V

    .line 425
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 424
    aput-object v9, v1, v8

    .line 426
    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    aput-object v9, v1, v8

    .line 428
    array-length v8, v1

    :goto_0
    if-lt v7, v8, :cond_0

    .line 446
    .end local v1           #classLoaders:[Ljava/lang/ClassLoader;
    :goto_1
    return-object v3

    .line 428
    .restart local v1       #classLoaders:[Ljava/lang/ClassLoader;
    :cond_0
    aget-object v0, v1, v7

    .line 430
    .local v0, classLoader:Ljava/lang/ClassLoader;
    const-string v9, "META-INF/stun-config.xml"

    invoke-virtual {v0, v9}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    .line 432
    .local v4, stunConfigEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    .line 432
    if-nez v9, :cond_2

    .line 428
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 434
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URL;

    .line 435
    .local v6, url:Ljava/net/URL;
    const/4 v5, 0x0

    .line 437
    .local v5, stunConfigStream:Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    .line 438
    invoke-virtual {p0, v5}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->loadSTUNServers(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 439
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 442
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v1           #classLoaders:[Ljava/lang/ClassLoader;
    .end local v4           #stunConfigEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v5           #stunConfigStream:Ljava/io/InputStream;
    .end local v6           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 443
    .local v2, e:Ljava/lang/Exception;
    sget-object v7, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public loadSTUNServers(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 10
    .parameter "stunConfigStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 458
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v5, serversList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 464
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 465
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v8, 0x1

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 466
    const-string v7, "UTF-8"

    invoke-interface {v2, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 468
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 470
    .local v1, eventType:I
    :cond_0
    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    .line 473
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "stunServer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 475
    const/4 v3, 0x0

    .line 476
    .local v3, serverName:Ljava/lang/String;
    const/4 v4, -0x1

    .line 479
    .local v4, serverPort:I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 480
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 481
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 485
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 493
    :goto_0
    if-eqz v3, :cond_1

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 494
    :try_start_2
    new-instance v6, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    invoke-direct {v6, p0, v3, v4}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;-><init>(Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;Ljava/lang/String;I)V

    .line 497
    .local v6, service:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v3           #serverName:Ljava/lang/String;
    .end local v4           #serverPort:I
    .end local v6           #service:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 503
    if-ne v1, v9, :cond_0

    .line 511
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    invoke-direct {p0, v5}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->bestSTUNServer(Ljava/util/ArrayList;)Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    move-result-object v7

    iput-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->currentServer:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    .line 513
    return-object v5

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v7, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 507
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 508
    .local v0, e:Ljava/io/IOException;
    sget-object v7, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 488
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #serverName:Ljava/lang/String;
    .restart local v4       #serverPort:I
    :catch_2
    move-exception v7

    goto :goto_0
.end method

.method public declared-synchronized resolve(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 4
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->setResolveInit()V

    .line 525
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->clearCandidates()V

    .line 527
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;

    .line 528
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->resolvedPublicIP:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->getFreePort()I

    move-result v2

    .line 527
    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Fixed;-><init>(Ljava/lang/String;I)V

    .line 529
    .local v0, candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->resolvedLocalIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->setLocalIp(Ljava/lang/String;)V

    .line 531
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RESOLVING : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->resolvedPublicIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 532
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->addCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 536
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->setResolveEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    .line 523
    .end local v0           #candidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSTUNService(Ljava/lang/String;I)V
    .locals 1
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 549
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    invoke-direct {v0, p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;-><init>(Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->currentServer:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;

    .line 550
    return-void
.end method
