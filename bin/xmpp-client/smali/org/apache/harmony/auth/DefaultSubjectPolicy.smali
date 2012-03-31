.class public Lorg/apache/harmony/auth/DefaultSubjectPolicy;
.super Lorg/apache/harmony/javax/security/auth/Policy;
.source "DefaultSubjectPolicy.java"


# static fields
.field private static final AUTH_SECURITY_POLICY:Ljava/lang/String; = "java.security.auth.policy"

.field private static final POLICY_URL_PREFIX:Ljava/lang/String; = "auth.policy.url."

.field private static final REFRESH_POLICY:Ljavax/security/auth/AuthPermission;

.field private static final emptySource:Ljava/security/CodeSource;

.field private static final parser:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;


# instance fields
.field private isInitialized:Z

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/harmony/security/PolicyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Ljavax/security/auth/AuthPermission;

    .line 49
    const-string v1, "refreshPolicy"

    .line 48
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->REFRESH_POLICY:Ljavax/security/auth/AuthPermission;

    .line 65
    new-instance v0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    invoke-direct {v0}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;-><init>()V

    sput-object v0, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->parser:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    .line 68
    new-instance v0, Ljava/security/CodeSource;

    invoke-direct {v0, v2, v2}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    sput-object v0, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->emptySource:Ljava/security/CodeSource;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/Policy;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->isInitialized:Z

    .line 74
    return-void
.end method

.method private declared-synchronized init()V
    .locals 8

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->set:Ljava/util/Set;

    .line 108
    new-instance v2, Ljava/util/Properties;

    .line 109
    new-instance v4, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;

    invoke-direct {v4}, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;-><init>()V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Properties;

    .line 108
    invoke-direct {v2, v4}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 110
    .local v2, system:Ljava/util/Properties;
    const-string v4, "/"

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    const-string v4, "java.security.auth.policy"

    const-string v5, "auth.policy.url."

    .line 111
    invoke-static {v2, v4, v5}, Lorg/apache/harmony/security/fortress/PolicyUtils;->getPolicyURLs(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v1

    .line 114
    .local v1, policyLocations:[Ljava/net/URL;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 122
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    :try_start_1
    aget-object v3, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .local v3, url:Ljava/net/URL;
    :try_start_2
    iget-object v6, p0, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->set:Ljava/util/Set;

    sget-object v7, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->parser:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    invoke-virtual {v7, v3, v2}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->parse(Ljava/net/URL;Ljava/util/Properties;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 106
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #policyLocations:[Ljava/net/URL;
    .end local v2           #system:Ljava/util/Properties;
    .end local v3           #url:Ljava/net/URL;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public getPermissions(Ljavax/security/auth/Subject;Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 6
    .parameter "subject"
    .parameter "cs"

    .prologue
    .line 78
    iget-boolean v5, p0, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->isInitialized:Z

    if-nez v5, :cond_0

    .line 79
    invoke-direct {p0}, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->init()V

    .line 82
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 83
    .local v3, pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    iget-object v5, p0, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->set:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p1}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    .line 87
    .local v4, size:I
    new-array v2, v4, [Ljava/security/Principal;

    .line 88
    .local v2, p:[Ljava/security/Principal;
    invoke-virtual {p1}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    if-nez p2, :cond_1

    .line 91
    sget-object p2, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->emptySource:Ljava/security/CodeSource;

    .line 94
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 101
    .end local v2           #p:[Ljava/security/Principal;
    .end local v4           #size:I
    :cond_2
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->toPermissionCollection(Ljava/util/Collection;)Ljava/security/PermissionCollection;

    move-result-object v5

    return-object v5

    .line 95
    .restart local v2       #p:[Ljava/security/Principal;
    .restart local v4       #size:I
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/PolicyEntry;

    .line 96
    .local v0, ge:Lorg/apache/harmony/security/PolicyEntry;
    invoke-virtual {v0, p2}, Lorg/apache/harmony/security/PolicyEntry;->impliesCodeSource(Ljava/security/CodeSource;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/PolicyEntry;->impliesPrincipals([Ljava/security/Principal;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    invoke-virtual {v0}, Lorg/apache/harmony/security/PolicyEntry;->getPermissions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 128
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 129
    sget-object v1, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->REFRESH_POLICY:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 131
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/auth/DefaultSubjectPolicy;->init()V

    .line 132
    return-void
.end method
