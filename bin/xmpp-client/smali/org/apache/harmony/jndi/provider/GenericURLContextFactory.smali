.class public abstract Lorg/apache/harmony/jndi/provider/GenericURLContextFactory;
.super Ljava/lang/Object;
.source "GenericURLContextFactory.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/spi/ObjectFactory;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method protected abstract createURLContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/Context;"
        }
    .end annotation
.end method

.method public getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    .locals 8
    .parameter "obj"
    .parameter "name"
    .parameter "nameCtx"
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
    .line 108
    .local p4, environment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-virtual {p0, p4}, Lorg/apache/harmony/jndi/provider/GenericURLContextFactory;->createURLContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v1

    .line 110
    .local v1, context:Lorg/apache/harmony/javax/naming/Context;
    if-nez p1, :cond_0

    .line 136
    .end local v1           #context:Lorg/apache/harmony/javax/naming/Context;
    .end local p1
    :goto_0
    return-object v1

    .line 116
    .restart local v1       #context:Lorg/apache/harmony/javax/naming/Context;
    .restart local p1
    :cond_0
    :try_start_0
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 118
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-interface {v1, p1}, Lorg/apache/harmony/javax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 154
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/Context;->close()V

    move-object v1, v6

    .line 118
    goto :goto_0

    .line 121
    .restart local p1
    :cond_1
    :try_start_1
    instance-of v6, p1, [Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 123
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 125
    .local v5, strings:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 127
    new-instance v6, Lorg/apache/harmony/javax/naming/ConfigurationException;

    .line 128
    const-string v7, "jndi.2C"

    invoke-static {v7}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-direct {v6, v7}, Lorg/apache/harmony/javax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v5           #strings:[Ljava/lang/String;
    .end local p1
    :catchall_0
    move-exception v6

    .line 154
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 155
    throw v6

    .line 131
    .restart local v5       #strings:[Ljava/lang/String;
    .restart local p1
    :cond_2
    const/4 v4, 0x0

    .line 133
    .local v4, exception:Lorg/apache/harmony/javax/naming/NamingException;
    :try_start_2
    array-length v7, v5

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v7, :cond_3

    .line 145
    throw v4

    .line 133
    :cond_3
    aget-object v3, v5, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .local v3, element:Ljava/lang/String;
    :try_start_3
    invoke-interface {v1, v3}, Lorg/apache/harmony/javax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    .line 154
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/Context;->close()V

    move-object v1, v6

    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 140
    .local v2, e:Lorg/apache/harmony/javax/naming/NamingException;
    move-object v4, v2

    .line 133
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 151
    .end local v2           #e:Lorg/apache/harmony/javax/naming/NamingException;
    .end local v3           #element:Ljava/lang/String;
    .end local v4           #exception:Lorg/apache/harmony/javax/naming/NamingException;
    .end local v5           #strings:[Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 152
    const-string v7, "jndi.2D"

    .line 151
    invoke-static {v7, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
