.class public Lorg/apache/harmony/javax/security/sasl/Sasl;
.super Ljava/lang/Object;
.source "Sasl.java"


# static fields
.field private static final CLIENTFACTORYSRV:Ljava/lang/String; = "SaslClientFactory"

.field public static final CREDENTIALS:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.credentials"

.field public static final MAX_BUFFER:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.maxbuffer"

.field public static final POLICY_FORWARD_SECRECY:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.policy.forward"

.field public static final POLICY_NOACTIVE:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.policy.noactive"

.field public static final POLICY_NOANONYMOUS:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.policy.noanonymous"

.field public static final POLICY_NODICTIONARY:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.policy.nodictionary"

.field public static final POLICY_NOPLAINTEXT:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.policy.noplaintext"

.field public static final POLICY_PASS_CREDENTIALS:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.policy.credentials"

.field public static final QOP:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.qop"

.field public static final RAW_SEND_SIZE:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.rawsendsize"

.field public static final REUSE:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.reuse"

.field private static final SERVERFACTORYSRV:Ljava/lang/String; = "SaslServerFactory"

.field public static final SERVER_AUTH:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.server.authentication"

.field public static final STRENGTH:Ljava/lang/String; = "org.apache.harmony.javax.security.sasl.strength"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method public static createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;
    .locals 14
    .parameter "mechanisms"
    .parameter "authanticationID"
    .parameter "protocol"
    .parameter "serverName"
    .parameter
    .parameter "cbh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljavax/security/auth/callback/CallbackHandler;",
            ")",
            "Lorg/apache/harmony/javax/security/sasl/SaslClient;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 72
    .local p4, prop:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez p0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "auth.33"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    const-string v1, "SaslClientFactory"

    invoke-static {v1}, Lorg/apache/harmony/javax/security/sasl/Sasl;->findFactories(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v12

    .line 76
    .local v12, res:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const/4 v13, 0x0

    .line 103
    :goto_0
    return-object v13

    .line 80
    :cond_1
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 81
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    const/4 v13, 0x0

    goto :goto_0

    .line 82
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;

    .line 83
    .local v0, fact:Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;->getMechanismNames(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, mech:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 85
    .local v8, is:Z
    if-eqz v10, :cond_4

    .line 86
    array-length v3, v10

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_5

    .line 95
    :cond_4
    if-eqz v8, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 96
    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v13

    .line 98
    .local v13, saslC:Lorg/apache/harmony/javax/security/sasl/SaslClient;
    if-eqz v13, :cond_2

    goto :goto_0

    .line 86
    .end local v13           #saslC:Lorg/apache/harmony/javax/security/sasl/SaslClient;
    :cond_5
    aget-object v7, v10, v2

    .line 87
    .local v7, element:Ljava/lang/String;
    array-length v4, p0

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v4, :cond_6

    .line 86
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 87
    :cond_6
    aget-object v11, p0, v1

    .line 88
    .local v11, mechanism:Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 89
    const/4 v8, 0x1

    .line 90
    goto :goto_3

    .line 87
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static createSaslServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslServer;
    .locals 12
    .parameter "mechanism"
    .parameter "protocol"
    .parameter "serverName"
    .parameter
    .parameter "cbh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljavax/security/auth/callback/CallbackHandler;",
            ")",
            "Lorg/apache/harmony/javax/security/sasl/SaslServer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 109
    .local p3, prop:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez p0, :cond_0

    .line 110
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "auth.32"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    const-string v1, "SaslServerFactory"

    invoke-static {v1}, Lorg/apache/harmony/javax/security/sasl/Sasl;->findFactories(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v10

    .line 113
    .local v10, res:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const/4 v11, 0x0

    .line 138
    :goto_0
    return-object v11

    .line 117
    :cond_1
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 118
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    const/4 v11, 0x0

    goto :goto_0

    .line 119
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;

    .line 120
    .local v0, fact:Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;->getMechanismNames(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, mech:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 122
    .local v7, is:Z
    if-eqz v9, :cond_4

    .line 123
    array-length v2, v9

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_5

    .line 130
    :cond_4
    :goto_2
    if-eqz v7, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    .line 131
    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;->createSaslServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslServer;

    move-result-object v11

    .line 133
    .local v11, saslS:Lorg/apache/harmony/javax/security/sasl/SaslServer;
    if-eqz v11, :cond_2

    goto :goto_0

    .line 123
    .end local v11           #saslS:Lorg/apache/harmony/javax/security/sasl/SaslServer;
    :cond_5
    aget-object v6, v9, v1

    .line 124
    .local v6, element:Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 125
    const/4 v7, 0x1

    .line 126
    goto :goto_2

    .line 123
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static findFactories(Ljava/lang/String;)Ljava/util/Collection;
    .locals 12
    .parameter "service"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 147
    .local v2, fact:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    .line 148
    .local v4, pp:[Ljava/security/Provider;
    if-eqz v4, :cond_0

    array-length v9, v4

    if-nez v9, :cond_1

    .line 170
    :cond_0
    return-object v2

    .line 151
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 152
    .local v7, props:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v10, v4

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v1, v4, v9

    .line 153
    .local v1, element:Ljava/security/Provider;
    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, prName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 155
    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-nez v11, :cond_3

    .line 152
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 156
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 157
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v8, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 158
    invoke-virtual {v1, v8}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, prop:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 161
    invoke-static {v6, v1}, Lorg/apache/harmony/javax/security/sasl/Sasl;->newInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Lorg/apache/harmony/javax/security/sasl/SaslException;
    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSaslClientFactories()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    const-string v1, "SaslClientFactory"

    invoke-static {v1}, Lorg/apache/harmony/javax/security/sasl/Sasl;->findFactories(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 176
    .local v0, res:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;>;"
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public static getSaslServerFactories()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    const-string v1, "SaslServerFactory"

    invoke-static {v1}, Lorg/apache/harmony/javax/security/sasl/Sasl;->findFactories(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 183
    .local v0, res:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;>;"
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method private static newInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 7
    .parameter "factoryName"
    .parameter "prv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v4, "auth.31"

    invoke-static {v4}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, msg:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 192
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 196
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-static {p0, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 197
    .local v2, factory:Ljava/lang/Object;
    return-object v2

    .line 198
    .end local v2           #factory:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 199
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 200
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 201
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 202
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v4, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
