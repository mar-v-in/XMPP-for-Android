.class public Lorg/apache/harmony/javax/security/auth/login/LoginContext;
.super Ljava/lang/Object;
.source "LoginContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;,
        Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALLBACK_HANDLER_PROPERTY:Ljava/lang/String; = "auth.login.defaultCallbackHandler"

.field private static final OPTIONAL:I = 0x0

.field private static final REQUIRED:I = 0x1

.field private static final REQUISITE:I = 0x2

.field private static final SUFFICIENT:I = 0x3


# instance fields
.field private callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

.field private contextClassLoader:Ljava/lang/ClassLoader;

.field private loggedIn:Z

.field private modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

.field private sharedState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private subject:Ljavax/security/auth/Subject;

.field private userContext:Ljava/security/AccessControlContext;

.field private userProvidedConfig:Z

.field private userProvidedSubject:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/Subject;)V
    .locals 2
    .parameter "name"
    .parameter "subject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    if-nez p2, :cond_0

    .line 221
    new-instance v0, Ljavax/security/auth/login/LoginException;

    const-string v1, "auth.03"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .parameter "name"
    .parameter "subject"
    .parameter "cbHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    if-nez p2, :cond_0

    .line 230
    new-instance v0, Ljavax/security/auth/login/LoginException;

    const-string v1, "auth.03"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    if-nez p3, :cond_1

    .line 233
    new-instance v0, Ljavax/security/auth/login/LoginException;

    const-string v1, "auth.34"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
    .locals 0
    .parameter "name"
    .parameter "subject"
    .parameter "cbHandler"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .parameter "name"
    .parameter "cbHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    if-nez p2, :cond_0

    .line 213
    new-instance v0, Ljavax/security/auth/login/LoginException;

    const-string v1, "auth.34"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 216
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/security/AccessControlContext;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method static synthetic access$3(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    return-void
.end method

.method static synthetic access$4(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loginImpl()V

    return-void
.end method

.method static synthetic access$5(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->logoutImpl()V

    return-void
.end method

.method private init(Ljava/lang/String;Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
    .locals 8
    .parameter "name"
    .parameter "subject"
    .parameter "cbHandler"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 256
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Ljavax/security/auth/Subject;

    if-eqz p2, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedSubject:Z

    .line 261
    if-nez p1, :cond_1

    .line 262
    new-instance v5, Ljavax/security/auth/login/LoginException;

    const-string v6, "auth.00"

    invoke-static {v6}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 256
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 265
    :cond_1
    if-nez p4, :cond_4

    .line 266
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAccessibleConfiguration()Lorg/apache/harmony/javax/security/auth/login/Configuration;

    move-result-object p4

    .line 271
    :goto_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 273
    .local v4, sm:Ljava/lang/SecurityManager;
    if-eqz v4, :cond_2

    iget-boolean v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-nez v5, :cond_2

    .line 274
    new-instance v5, Ljavax/security/auth/AuthPermission;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createLoginContext."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 277
    :cond_2
    invoke-virtual {p4, p1}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    move-result-object v1

    .line 278
    .local v1, entries:[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    if-nez v1, :cond_5

    .line 279
    if-eqz v4, :cond_3

    iget-boolean v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-nez v5, :cond_3

    .line 280
    new-instance v5, Ljavax/security/auth/AuthPermission;

    .line 281
    const-string v6, "createLoginContext.other"

    invoke-direct {v5, v6}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 283
    :cond_3
    const-string v5, "other"

    invoke-virtual {p4, v5}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    move-result-object v1

    .line 284
    if-nez v1, :cond_5

    .line 285
    new-instance v5, Ljavax/security/auth/login/LoginException;

    const-string v6, "auth.35"

    invoke-static {v6, p1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 268
    .end local v1           #entries:[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    .end local v4           #sm:Ljava/lang/SecurityManager;
    :cond_4
    iput-boolean v6, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    goto :goto_1

    .line 289
    .restart local v1       #entries:[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    .restart local v4       #sm:Ljava/lang/SecurityManager;
    :cond_5
    array-length v5, v1

    new-array v5, v5, [Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    iput-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    .line 290
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v5, v5

    if-lt v3, v5, :cond_7

    .line 304
    :try_start_0
    new-instance v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;

    invoke-direct {v5, p0, p3}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Ljavax/security/auth/callback/CallbackHandler;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    iget-boolean v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v5, :cond_8

    .line 340
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    .line 345
    :cond_6
    :goto_3
    return-void

    .line 291
    :cond_7
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    new-instance v6, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    aget-object v7, v1, v3

    invoke-direct {v6, p0, v7}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;)V

    aput-object v6, v5, v3

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 333
    :catch_0
    move-exception v2

    .line 334
    .local v2, ex:Ljava/security/PrivilegedActionException;
    invoke-virtual {v2}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 335
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v5, Ljavax/security/auth/login/LoginException;

    .line 336
    const-string v6, "auth.36"

    invoke-static {v6}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-direct {v5, v6}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v5, v0}, Ljavax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    .line 335
    check-cast v5, Ljavax/security/auth/login/LoginException;

    throw v5

    .line 341
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v2           #ex:Ljava/security/PrivilegedActionException;
    :cond_8
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    if-eqz v5, :cond_6

    .line 342
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    .line 343
    new-instance v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;

    iget-object v6, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    invoke-direct {v5, p0, v6}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Ljavax/security/auth/callback/CallbackHandler;)V

    iput-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    goto :goto_3
.end method

.method private loginImpl()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Ljavax/security/auth/Subject;

    if-nez v7, :cond_0

    .line 376
    new-instance v7, Ljavax/security/auth/Subject;

    invoke-direct {v7}, Ljavax/security/auth/Subject;-><init>()V

    iput-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Ljavax/security/auth/Subject;

    .line 379
    :cond_0
    iget-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    if-nez v7, :cond_1

    .line 380
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    .line 384
    :cond_1
    const/4 v3, 0x0

    .line 386
    .local v3, firstProblem:Ljava/lang/Throwable;
    const/4 v7, 0x4

    new-array v4, v7, [I

    .line 387
    .local v4, logged:[I
    const/4 v7, 0x4

    new-array v6, v7, [I

    .line 389
    .local v6, total:[I
    iget-object v8, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v9, :cond_9

    .line 429
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 441
    .local v2, fail:Z
    const/4 v7, 0x1

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    if-ne v7, v8, :cond_4

    .line 442
    const/4 v7, 0x2

    aget v7, v4, v7

    const/4 v8, 0x2

    aget v8, v6, v8

    if-ne v7, v8, :cond_4

    .line 445
    const/4 v7, 0x1

    aget v7, v6, v7

    if-nez v7, :cond_d

    const/4 v7, 0x2

    aget v7, v6, v7

    if-nez v7, :cond_d

    .line 448
    const/4 v7, 0x0

    aget v7, v4, v7

    if-nez v7, :cond_3

    const/4 v7, 0x3

    aget v7, v4, v7

    if-eqz v7, :cond_4

    .line 449
    :cond_3
    const/4 v2, 0x0

    .line 457
    :cond_4
    :goto_2
    const/4 v7, 0x4

    new-array v0, v7, [I

    .line 459
    .local v0, commited:[I
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v6, v10

    aput v11, v6, v9

    aput v11, v6, v8

    aput v11, v6, v7

    .line 460
    if-nez v2, :cond_5

    .line 463
    iget-object v8, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_3
    if-lt v7, v9, :cond_e

    .line 479
    :cond_5
    const/4 v2, 0x1

    .line 480
    const/4 v7, 0x1

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    if-ne v7, v8, :cond_7

    .line 481
    const/4 v7, 0x2

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v6, v8

    if-ne v7, v8, :cond_7

    .line 484
    const/4 v7, 0x1

    aget v7, v6, v7

    if-nez v7, :cond_10

    const/4 v7, 0x2

    aget v7, v6, v7

    if-nez v7, :cond_10

    .line 489
    const/4 v7, 0x0

    aget v7, v0, v7

    if-nez v7, :cond_6

    const/4 v7, 0x3

    aget v7, v0, v7

    if-eqz v7, :cond_7

    .line 490
    :cond_6
    const/4 v2, 0x0

    .line 499
    :cond_7
    :goto_4
    if-eqz v2, :cond_14

    .line 502
    iget-object v8, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_5
    if-lt v7, v9, :cond_11

    .line 511
    instance-of v7, v3, Ljava/security/PrivilegedActionException;

    if-eqz v7, :cond_8

    .line 512
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 513
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 515
    :cond_8
    instance-of v7, v3, Ljavax/security/auth/login/LoginException;

    if-eqz v7, :cond_13

    .line 516
    check-cast v3, Ljavax/security/auth/login/LoginException;

    .end local v3           #firstProblem:Ljava/lang/Throwable;
    throw v3

    .line 389
    .end local v0           #commited:[I
    .end local v2           #fail:Z
    .restart local v3       #firstProblem:Ljava/lang/Throwable;
    :cond_9
    aget-object v5, v8, v7

    .line 394
    .local v5, module:Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :try_start_0
    iget-object v10, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Ljavax/security/auth/Subject;

    iget-object v11, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    iget-object v12, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    invoke-virtual {v5, v10, v11, v12}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->create(Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;Ljava/util/Map;)V

    .line 396
    iget-object v10, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v10}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->login()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 397
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    aget v11, v6, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v6, v10

    .line 398
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    aget v11, v4, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v4, v10

    .line 399
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_2

    .line 389
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, ex:Ljava/lang/Throwable;
    if-nez v3, :cond_b

    .line 405
    move-object v3, v1

    .line 407
    :cond_b
    iget-object v10, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;

    if-nez v10, :cond_c

    .line 414
    const/4 v7, 0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    goto/16 :goto_1

    .line 417
    :cond_c
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    aget v11, v6, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v6, v10

    .line 419
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    goto/16 :goto_1

    .line 453
    .end local v1           #ex:Ljava/lang/Throwable;
    .end local v5           #module:Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    .restart local v2       #fail:Z
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 463
    .restart local v0       #commited:[I
    :cond_e
    aget-object v5, v8, v7

    .line 464
    .restart local v5       #module:Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    iget-object v10, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;

    if-eqz v10, :cond_f

    .line 465
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    aget v11, v6, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v6, v10

    .line 467
    :try_start_1
    iget-object v10, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v10}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->commit()Z

    .line 468
    invoke-virtual {v5}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v10

    aget v11, v0, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v0, v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 463
    :cond_f
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 469
    :catch_1
    move-exception v1

    .line 470
    .restart local v1       #ex:Ljava/lang/Throwable;
    if-nez v3, :cond_f

    .line 471
    move-object v3, v1

    goto :goto_6

    .line 495
    .end local v1           #ex:Ljava/lang/Throwable;
    .end local v5           #module:Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 502
    :cond_11
    aget-object v5, v8, v7

    .line 504
    .restart local v5       #module:Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :try_start_2
    iget-object v10, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v10}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->abort()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 502
    :cond_12
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 505
    :catch_2
    move-exception v1

    .line 506
    .restart local v1       #ex:Ljava/lang/Throwable;
    if-nez v3, :cond_12

    .line 507
    move-object v3, v1

    goto :goto_7

    .line 518
    .end local v1           #ex:Ljava/lang/Throwable;
    .end local v5           #module:Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :cond_13
    new-instance v7, Ljavax/security/auth/login/LoginException;

    .line 519
    const-string v8, "auth.37"

    invoke-static {v8}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 518
    invoke-direct {v7, v8}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v7, v3}, Ljavax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 518
    check-cast v7, Ljavax/security/auth/login/LoginException;

    throw v7

    .line 521
    :cond_14
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    .line 522
    return-void
.end method

.method private logoutImpl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 548
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Ljavax/security/auth/Subject;

    if-nez v5, :cond_0

    .line 549
    new-instance v4, Ljavax/security/auth/login/LoginException;

    const-string v5, "auth.38"

    invoke-static {v5}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 551
    :cond_0
    iput-boolean v4, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    .line 552
    const/4 v1, 0x0

    .line 553
    .local v1, firstProblem:Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 554
    .local v3, total:I
    iget-object v5, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v6, v5

    :goto_0
    if-lt v4, v6, :cond_3

    .line 564
    if-nez v1, :cond_1

    if-nez v3, :cond_6

    .line 565
    :cond_1
    instance-of v4, v1, Ljava/security/PrivilegedActionException;

    if-eqz v4, :cond_2

    .line 566
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 567
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 569
    :cond_2
    instance-of v4, v1, Ljavax/security/auth/login/LoginException;

    if-eqz v4, :cond_5

    .line 570
    check-cast v1, Ljavax/security/auth/login/LoginException;

    .end local v1           #firstProblem:Ljava/lang/Throwable;
    throw v1

    .line 554
    .restart local v1       #firstProblem:Ljava/lang/Throwable;
    :cond_3
    aget-object v2, v5, v4

    .line 556
    .local v2, module:Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :try_start_0
    iget-object v7, v2, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v7}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->logout()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    add-int/lit8 v3, v3, 0x1

    .line 554
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, ex:Ljava/lang/Throwable;
    if-nez v1, :cond_4

    .line 560
    move-object v1, v0

    goto :goto_1

    .line 572
    .end local v0           #ex:Ljava/lang/Throwable;
    .end local v2           #module:Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    :cond_5
    new-instance v4, Ljavax/security/auth/login/LoginException;

    .line 573
    const-string v5, "auth.37"

    invoke-static {v5}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 572
    invoke-direct {v4, v5}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v4, v1}, Ljavax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 572
    check-cast v4, Ljavax/security/auth/login/LoginException;

    throw v4

    .line 575
    :cond_6
    return-void
.end method


# virtual methods
.method public getSubject()Ljavax/security/auth/Subject;
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedSubject:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Ljavax/security/auth/Subject;

    .line 249
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;

    invoke-direct {v0, p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V

    .line 360
    .local v0, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<Ljava/lang/Void;>;"
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v2, :cond_0

    .line 361
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    invoke-static {v0, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, ex:Ljava/security/PrivilegedActionException;
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/login/LoginException;

    throw v2
.end method

.method public logout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$3;

    invoke-direct {v0, p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$3;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V

    .line 533
    .local v0, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<Ljava/lang/Void;>;"
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v2, :cond_0

    .line 534
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    invoke-static {v0, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 541
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, ex:Ljava/security/PrivilegedActionException;
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/login/LoginException;

    throw v2
.end method
