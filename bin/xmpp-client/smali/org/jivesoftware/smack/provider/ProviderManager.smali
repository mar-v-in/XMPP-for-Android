.class public Lorg/jivesoftware/smack/provider/ProviderManager;
.super Ljava/lang/Object;
.source "ProviderManager.java"


# static fields
.field private static instance:Lorg/jivesoftware/smack/provider/ProviderManager;


# instance fields
.field private final extensionProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final iqProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    .line 182
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    .line 186
    invoke-virtual {p0}, Lorg/jivesoftware/smack/provider/ProviderManager;->initialize()V

    .line 187
    return-void
.end method

.method private getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 242
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/ClassLoader;

    .line 243
    .local v1, classLoaders:[Ljava/lang/ClassLoader;
    const-class v4, Lorg/jivesoftware/smack/provider/ProviderManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    aput-object v4, v1, v3

    .line 244
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aput-object v5, v1, v4

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v2, loaders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ClassLoader;>;"
    array-length v4, v1

    :goto_0
    if-lt v3, v4, :cond_0

    .line 253
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/ClassLoader;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ClassLoader;

    return-object v3

    .line 248
    :cond_0
    aget-object v0, v1, v3

    .line 249
    .local v0, classLoader:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 250
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;
    .locals 2

    .prologue
    .line 155
    const-class v1, Lorg/jivesoftware/smack/provider/ProviderManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/provider/ProviderManager;->instance:Lorg/jivesoftware/smack/provider/ProviderManager;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lorg/jivesoftware/smack/provider/ProviderManager;

    invoke-direct {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/provider/ProviderManager;->instance:Lorg/jivesoftware/smack/provider/ProviderManager;

    .line 158
    :cond_0
    sget-object v0, Lorg/jivesoftware/smack/provider/ProviderManager;->instance:Lorg/jivesoftware/smack/provider/ProviderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/><"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized setInstance(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 3
    .parameter "providerManager"

    .prologue
    .line 173
    const-class v1, Lorg/jivesoftware/smack/provider/ProviderManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/provider/ProviderManager;->instance:Lorg/jivesoftware/smack/provider/ProviderManager;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 175
    const-string v2, "ProviderManager singleton already set"

    .line 174
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 177
    :cond_0
    :try_start_1
    sput-object p0, Lorg/jivesoftware/smack/provider/ProviderManager;->instance:Lorg/jivesoftware/smack/provider/ProviderManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "elementName"
    .parameter "namespace"
    .parameter "provider"

    .prologue
    .line 204
    instance-of v1, p3, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    if-nez v1, :cond_0

    instance-of v1, p3, Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 206
    const-string v2, "Provider must be a PacketExtensionProvider or a Class instance."

    .line 205
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "elementName"
    .parameter "namespace"
    .parameter "provider"

    .prologue
    .line 227
    instance-of v1, p3, Lorg/jivesoftware/smack/provider/IQProvider;

    if-nez v1, :cond_1

    instance-of v1, p3, Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-class v2, Lorg/jivesoftware/smack/packet/IQ;

    move-object v1, p3

    .line 228
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 230
    const-string v2, "Provider must be an IQProvider or a Class instance."

    .line 229
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

.method public getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getExtensionProviders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getIQProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 323
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getIQProviders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected initialize()V
    .locals 20

    .prologue
    .line 359
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/provider/ProviderManager;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v3

    .line 360
    .local v3, classLoaders:[Ljava/lang/ClassLoader;
    array-length v0, v3

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 476
    .end local v3           #classLoaders:[Ljava/lang/ClassLoader;
    :goto_1
    return-void

    .line 360
    .restart local v3       #classLoaders:[Ljava/lang/ClassLoader;
    :cond_0
    aget-object v2, v3, v16

    .line 362
    .local v2, classLoader:Ljava/lang/ClassLoader;
    const-string v18, "assets/smack.providers"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v13

    .line 363
    .local v13, providerEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_2
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-nez v18, :cond_1

    .line 360
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 364
    :cond_1
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 365
    .local v15, url:Ljava/net/URL;
    const/4 v14, 0x0

    .line 367
    .local v14, providerStream:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v15}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v14

    .line 368
    new-instance v11, Lorg/xmlpull/mxp1/MXParser;

    invoke-direct {v11}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    .line 370
    .local v11, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v18, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/16 v19, 0x1

    .line 369
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 371
    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-interface {v11, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 372
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 374
    .local v8, eventType:I
    :cond_2
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_3

    .line 375
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "iqProvider"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 376
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 377
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 379
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 380
    .local v7, elementName:Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 381
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 382
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, namespace:Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 384
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 385
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, className:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 391
    .local v9, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    if-nez v18, :cond_3

    .line 403
    :try_start_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 404
    .local v12, provider:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v18, Lorg/jivesoftware/smack/provider/IQProvider;

    .line 405
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 407
    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v19

    .line 406
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 462
    .end local v4           #className:Ljava/lang/String;
    .end local v7           #elementName:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #namespace:Ljava/lang/String;
    .end local v12           #provider:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    :goto_3
    :try_start_3
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    .line 463
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_2

    .line 466
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 467
    :catch_0
    move-exception v18

    goto/16 :goto_2

    .line 408
    .restart local v4       #className:Ljava/lang/String;
    .restart local v7       #elementName:Ljava/lang/String;
    .restart local v9       #key:Ljava/lang/String;
    .restart local v10       #namespace:Ljava/lang/String;
    .restart local v12       #provider:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    :try_start_5
    const-class v18, Lorg/jivesoftware/smack/packet/IQ;

    .line 409
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 412
    .end local v12           #provider:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v5

    .line 413
    .local v5, cnfe:Ljava/lang/ClassNotFoundException;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 464
    .end local v4           #className:Ljava/lang/String;
    .end local v5           #cnfe:Ljava/lang/ClassNotFoundException;
    .end local v7           #elementName:Ljava/lang/String;
    .end local v8           #eventType:I
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #namespace:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v16

    .line 466
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 470
    :goto_4
    :try_start_8
    throw v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 473
    .end local v2           #classLoader:Ljava/lang/ClassLoader;
    .end local v3           #classLoaders:[Ljava/lang/ClassLoader;
    .end local v13           #providerEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v14           #providerStream:Ljava/io/InputStream;
    .end local v15           #url:Ljava/net/URL;
    :catch_2
    move-exception v6

    .line 474
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 416
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #classLoader:Ljava/lang/ClassLoader;
    .restart local v3       #classLoaders:[Ljava/lang/ClassLoader;
    .restart local v8       #eventType:I
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #providerEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v14       #providerStream:Ljava/io/InputStream;
    .restart local v15       #url:Ljava/net/URL;
    :cond_5
    :try_start_9
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 417
    const-string v19, "extensionProvider"

    .line 416
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 418
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 419
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 421
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 422
    .restart local v7       #elementName:Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 423
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 424
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 425
    .restart local v10       #namespace:Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 426
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 427
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 431
    .restart local v4       #className:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 433
    .restart local v9       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v18

    if-nez v18, :cond_3

    .line 446
    :try_start_a
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 447
    .restart local v12       #provider:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v18, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    .line 448
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 450
    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v19

    .line 449
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_3

    .line 456
    .end local v12           #provider:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_3
    move-exception v5

    .line 457
    .restart local v5       #cnfe:Ljava/lang/ClassNotFoundException;
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 451
    .end local v5           #cnfe:Ljava/lang/ClassNotFoundException;
    .restart local v12       #provider:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_6
    :try_start_c
    const-class v18, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 452
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_3

    .line 467
    .end local v4           #className:Ljava/lang/String;
    .end local v7           #elementName:Ljava/lang/String;
    .end local v8           #eventType:I
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #namespace:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #provider:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_4
    move-exception v17

    goto/16 :goto_4
.end method

.method public removeExtensionProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 491
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    return-void
.end method

.method public removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 507
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method
