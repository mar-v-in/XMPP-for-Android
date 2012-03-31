.class public Lorg/apache/harmony/security/fortress/Services;
.super Ljava/lang/Object;
.source "Services.java"


# static fields
.field private static needRefresh:Z

.field private static final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final providersNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field static refreshNumber:I

.field private static final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 48
    const/16 v1, 0x200

    .line 47
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    .line 56
    const/4 v0, 0x1

    sput v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    .line 66
    new-instance v0, Lorg/apache/harmony/security/fortress/Services$1;

    invoke-direct {v0}, Lorg/apache/harmony/security/fortress/Services$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 182
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->loadProviders()V

    return-void
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 1
    .parameter "name"

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    goto :goto_0
.end method

.method public static getProviders()[Ljava/security/Provider;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/Provider;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Provider;

    return-object v0
.end method

.method public static getProvidersList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 1
    .parameter "key"

    .prologue
    .line 114
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    return-object v0
.end method

.method public static initServiceInfo(Ljava/security/Provider;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 130
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    .local v1, it1:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    .line 130
    if-nez v7, :cond_1

    .line 152
    return-void

    .line 132
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    .line 133
    .local v5, serv:Ljava/security/Provider$Service;
    invoke-virtual {v5}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, type:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 136
    invoke-virtual {v5}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 136
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, key:Ljava/lang/String;
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 138
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_2
    sget-object v7, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v7, v5}, Lorg/apache/harmony/security/fortress/SecurityAccess;->getAliases(Ljava/security/Provider$Service;)Ljava/util/Iterator;

    move-result-object v2

    .line 141
    .local v2, it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    .line 140
    if-eqz v7, :cond_0

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 145
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 146
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 148
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static insertProviderAt(Ljava/security/Provider;I)I
    .locals 3
    .parameter "provider"
    .parameter "position"

    .prologue
    .line 162
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 163
    .local v0, size:I
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-le p1, v0, :cond_1

    .line 164
    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 166
    :cond_1
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 167
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 169
    return p1
.end method

.method public static isEmpty()Z
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static loadProviders()V
    .locals 7

    .prologue
    .line 183
    const/4 v4, 0x0

    .line 184
    .local v4, providerClassName:Ljava/lang/String;
    const/4 v1, 0x1

    .line 185
    .local v1, i:I
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 188
    .local v0, cl:Ljava/lang/ClassLoader;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "security.provider."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 202
    sget-object v5, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v5}, Lorg/apache/harmony/security/fortress/SecurityAccess;->renumProviders()V

    .line 203
    return-void

    .line 192
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 193
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    .line 194
    .local v3, p:Ljava/security/Provider;
    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 197
    .end local v1           #i:I
    .end local v3           #p:Ljava/security/Provider;
    .restart local v2       #i:I
    :catch_0
    move-exception v5

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 198
    .end local v1           #i:I
    .restart local v2       #i:I
    :catch_1
    move-exception v5

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 199
    .end local v1           #i:I
    .restart local v2       #i:I
    :catch_2
    move-exception v5

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public static printServices()V
    .locals 6

    .prologue
    .line 210
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->refresh()V

    .line 211
    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 212
    .local v1, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    return-void

    .line 212
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, key:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static refresh()V
    .locals 1

    .prologue
    .line 222
    sget-boolean v0, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    if-eqz v0, :cond_0

    .line 223
    sget v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    .line 224
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->updateServiceInfo()V

    .line 226
    :cond_0
    return-void
.end method

.method public static removeProvider(I)V
    .locals 3
    .parameter "providerNumber"

    .prologue
    .line 234
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    add-int/lit8 v2, p0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 235
    .local v0, p:Ljava/security/Provider;
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 237
    return-void
.end method

.method public static setNeedRefresh()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    .line 245
    return-void
.end method

.method public static updateServiceInfo()V
    .locals 3

    .prologue
    .line 253
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 254
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, provider:Ljava/security/Provider;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    .line 258
    return-void

    .line 254
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #provider:Ljava/security/Provider;
    check-cast v0, Ljava/security/Provider;

    .line 255
    .restart local v0       #provider:Ljava/security/Provider;
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V

    goto :goto_0
.end method
