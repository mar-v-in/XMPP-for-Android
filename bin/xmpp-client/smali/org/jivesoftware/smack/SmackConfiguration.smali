.class public final Lorg/jivesoftware/smack/SmackConfiguration;
.super Ljava/lang/Object;
.source "SmackConfiguration.java"


# static fields
.field private static final SMACK_VERSION:Ljava/lang/String; = "3.2.2"

.field private static defaultMechs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static keepAliveInterval:I

.field private static localSocks5ProxyEnabled:Z

.field private static localSocks5ProxyPort:I

.field private static packetCollectorSize:I

.field private static packetReplyTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v9, 0x1388

    const/4 v12, 0x1

    .line 53
    sput v9, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 54
    const/16 v8, 0x7530

    sput v8, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I

    .line 55
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    sput-object v8, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    .line 57
    sput-boolean v12, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    .line 58
    const/16 v8, 0x1e61

    sput v8, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    .line 59
    sput v9, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    .line 73
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    .line 74
    .local v1, classLoaders:[Ljava/lang/ClassLoader;
    array-length v9, v1

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v9, :cond_0

    .line 49
    :goto_1
    return-void

    .line 74
    :cond_0
    aget-object v0, v1, v8

    .line 76
    .local v0, classLoader:Ljava/lang/ClassLoader;
    const-string v10, "META-INF/smack-config.xml"

    invoke-virtual {v0, v10}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 77
    .local v2, configEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_1

    .line 74
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 79
    .local v7, url:Ljava/net/URL;
    const/4 v6, 0x0

    .line 81
    .local v6, systemStream:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 82
    new-instance v5, Lorg/xmlpull/mxp1/MXParser;

    invoke-direct {v5}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    .line 84
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v11, 0x1

    .line 83
    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 85
    const-string v10, "UTF-8"

    invoke-interface {v5, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 86
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 88
    .local v4, eventType:I
    :cond_2
    const/4 v10, 0x2

    if-ne v4, v10, :cond_3

    .line 89
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "className"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 92
    invoke-static {v5}, Lorg/jivesoftware/smack/SmackConfiguration;->parseClassToLoad(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 117
    :cond_3
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 118
    if-ne v4, v12, :cond_2

    .line 123
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 124
    :catch_0
    move-exception v10

    goto :goto_2

    .line 93
    :cond_4
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 94
    const-string v11, "packetReplyTimeout"

    .line 93
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 96
    sget v10, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 95
    invoke-static {v5, v10}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v10

    sput v10, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 119
    .end local v4           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 120
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 124
    :catch_2
    move-exception v10

    goto :goto_2

    .line 97
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #eventType:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_6
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 98
    const-string v11, "keepAliveInterval"

    .line 97
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 100
    sget v10, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I

    .line 99
    invoke-static {v5, v10}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v10

    sput v10, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 121
    .end local v4           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v8

    .line 123
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 127
    :goto_4
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 130
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v2           #configEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v6           #systemStream:Ljava/io/InputStream;
    .end local v7           #url:Ljava/net/URL;
    :catch_3
    move-exception v3

    .line 131
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 101
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #classLoader:Ljava/lang/ClassLoader;
    .restart local v2       #configEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v4       #eventType:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #systemStream:Ljava/io/InputStream;
    .restart local v7       #url:Ljava/net/URL;
    :cond_6
    :try_start_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mechName"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 102
    sget-object v10, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 103
    :cond_7
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 104
    const-string v11, "localSocks5ProxyEnabled"

    .line 103
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 106
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 105
    sput-boolean v10, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    goto :goto_3

    .line 107
    :cond_8
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 108
    const-string v11, "localSocks5ProxyPort"

    .line 107
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 110
    sget v10, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    .line 109
    invoke-static {v5, v10}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v10

    sput v10, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    goto/16 :goto_3

    .line 111
    :cond_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 112
    const-string v11, "packetCollectorSize"

    .line 111
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 114
    sget v10, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    .line 113
    invoke-static {v5, v10}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v10

    sput v10, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 124
    .end local v4           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v9

    goto :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    return-void
.end method

.method public static addSaslMech(Ljava/lang/String;)V
    .locals 1
    .parameter "mech"

    .prologue
    .line 142
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    return-void
.end method

.method public static addSaslMechs(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, mechs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    return-void

    .line 154
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, mech:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->addSaslMech(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 165
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/ClassLoader;

    .line 166
    .local v1, classLoaders:[Ljava/lang/ClassLoader;
    const-class v4, Lorg/jivesoftware/smack/SmackConfiguration;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    aput-object v4, v1, v3

    .line 167
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aput-object v5, v1, v4

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v2, loaders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ClassLoader;>;"
    array-length v4, v1

    :goto_0
    if-lt v3, v4, :cond_0

    .line 176
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/ClassLoader;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ClassLoader;

    return-object v3

    .line 171
    :cond_0
    aget-object v0, v1, v3

    .line 172
    .local v0, classLoader:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getKeepAliveInterval()I
    .locals 1

    .prologue
    .line 188
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I

    return v0
.end method

.method public static getLocalSocks5ProxyPort()I
    .locals 1

    .prologue
    .line 197
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    return v0
.end method

.method public static getPacketCollectorSize()I
    .locals 1

    .prologue
    .line 207
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    return v0
.end method

.method public static getPacketReplyTimeout()I
    .locals 1

    .prologue
    .line 219
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    if-gtz v0, :cond_0

    .line 220
    const/16 v0, 0x1388

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 222
    :cond_0
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    return v0
.end method

.method public static getSaslMechs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "3.2.2"

    return-object v0
.end method

.method public static isLocalSocks5ProxyEnabled()Z
    .locals 1

    .prologue
    .line 252
    sget-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    return v0
.end method

.method private static parseClassToLoad(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, className:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, cnfe:Ljava/lang/ClassNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error! A startup class specified in smack-config.xml could not be loaded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I
    .locals 2
    .parameter "parser"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 273
    .end local p1
    :goto_0
    return p1

    .line 271
    .restart local p1
    :catch_0
    move-exception v0

    .line 272
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeSaslMech(Ljava/lang/String;)V
    .locals 1
    .parameter "mech"

    .prologue
    .line 284
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    return-void
.end method

.method public static removeSaslMechs(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, mechs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    return-void

    .line 296
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    .local v0, mech:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->removeSaslMech(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setKeepAliveInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 311
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->keepAliveInterval:I

    .line 312
    return-void
.end method

.method public static setLocalSocks5ProxyEnabled(Z)V
    .locals 0
    .parameter "localSocks5ProxyEnabled"

    .prologue
    .line 322
    sput-boolean p0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    .line 323
    return-void
.end method

.method public static setLocalSocks5ProxyPort(I)V
    .locals 0
    .parameter "localSocks5ProxyPort"

    .prologue
    .line 334
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    .line 335
    return-void
.end method

.method public static setPacketCollectorSize(I)V
    .locals 0
    .parameter "collectorSize"

    .prologue
    .line 345
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    .line 346
    return-void
.end method

.method public static setPacketReplyTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 355
    if-gtz p0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 358
    :cond_0
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 359
    return-void
.end method
