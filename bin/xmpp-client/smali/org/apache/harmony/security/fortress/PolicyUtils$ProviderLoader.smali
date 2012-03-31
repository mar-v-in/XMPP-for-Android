.class public Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;
.super Ljava/lang/Object;
.source "PolicyUtils.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/PolicyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final expectedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;,"Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader<TT;>;"
    .local p2, expected:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->key:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->expectedType:Ljava/lang/Class;

    .line 125
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;,"Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader<TT;>;"
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->key:Ljava/lang/String;

    invoke-static {v4}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, klassName:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 140
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "security.14C"

    .line 141
    iget-object v6, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->key:Ljava/lang/String;

    .line 140
    invoke-static {v5, v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_1
    const/4 v4, 0x1

    .line 146
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 145
    invoke-static {v2, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 147
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->expectedType:Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 148
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->expectedType:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    new-instance v4, Ljava/lang/SecurityException;

    .line 150
    const-string v5, "security.14D"

    .line 151
    iget-object v6, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->expectedType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-static {v5, v2, v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 156
    .local v3, se:Ljava/lang/SecurityException;
    throw v3

    .line 154
    .end local v3           #se:Ljava/lang/SecurityException;
    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 157
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/SecurityException;

    .line 160
    const-string v4, "security.14E"

    invoke-static {v4, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v3       #se:Ljava/lang/SecurityException;
    invoke-virtual {v3, v0}, Ljava/lang/SecurityException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 162
    throw v3
.end method
