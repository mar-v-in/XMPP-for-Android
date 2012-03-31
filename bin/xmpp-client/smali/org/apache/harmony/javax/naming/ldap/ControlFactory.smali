.class public abstract Lorg/apache/harmony/javax/naming/ldap/ControlFactory;
.super Ljava/lang/Object;
.source "ControlFactory.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
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
    .line 46
    new-instance v1, Lorg/apache/harmony/javax/naming/ldap/ControlFactory$1;

    invoke-direct {v1, p0}, Lorg/apache/harmony/javax/naming/ldap/ControlFactory$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 68
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 70
    new-instance v1, Ljava/lang/ClassNotFoundException;

    .line 71
    const-string v2, "jndi.1C"

    .line 70
    invoke-static {v2, p0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    return-object v0
.end method

.method public static getControlInstance(Lorg/apache/harmony/javax/naming/ldap/Control;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 9
    .parameter "c"
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/ldap/Control;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/ldap/Control;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 107
    .line 108
    .local p2, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const-string v6, "java.naming.factory.control"

    .line 107
    invoke-static {p2, p1, v6}, Lorg/apache/harmony/jndi/internal/EnvironmentReader;->getFactoryNamesFromEnvironmentAndProviderResource(Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, fnames:[Ljava/lang/String;
    array-length v8, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_1

    move-object v1, p0

    .line 127
    :cond_0
    return-object v1

    .line 110
    :cond_1
    aget-object v3, v5, v7

    .line 112
    .local v3, element:Ljava/lang/String;
    const/4 v4, 0x0

    .line 114
    .local v4, factory:Lorg/apache/harmony/javax/naming/ldap/ControlFactory;
    :try_start_0
    invoke-static {v3}, Lorg/apache/harmony/javax/naming/ldap/ControlFactory;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/harmony/javax/naming/ldap/ControlFactory;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    invoke-virtual {v4, p0}, Lorg/apache/harmony/javax/naming/ldap/ControlFactory;->getControlInstance(Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v1

    .line 121
    .local v1, control:Lorg/apache/harmony/javax/naming/ldap/Control;
    if-nez v1, :cond_0

    .line 110
    .end local v1           #control:Lorg/apache/harmony/javax/naming/ldap/Control;
    :goto_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, e:Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method public abstract getControlInstance(Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/javax/naming/ldap/Control;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method
