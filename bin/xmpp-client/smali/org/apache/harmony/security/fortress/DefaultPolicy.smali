.class public Lorg/apache/harmony/security/fortress/DefaultPolicy;
.super Ljava/security/Policy;
.source "DefaultPolicy.java"


# static fields
.field public static final JAVA_SECURITY_POLICY:Ljava/lang/String; = "java.security.policy"

.field public static final POLICY_URL_PREFIX:Ljava/lang/String; = "policy.url."


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;>;"
        }
    .end annotation
.end field

.field private final grants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/harmony/security/PolicyEntry;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private final parser:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    invoke-direct {v0}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/fortress/DefaultPolicy;-><init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;)V
    .locals 1
    .parameter "dpr"

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/fortress/DefaultPolicy;-><init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;Z)V

    .line 188
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;Z)V
    .locals 1
    .parameter "dpr"
    .parameter "needRefresh"

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/security/Policy;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->grants:Ljava/util/Set;

    .line 160
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    .line 191
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->parser:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    .line 193
    if-eqz p2, :cond_0

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/fortress/DefaultPolicy;->refreshImpl(Ljava/lang/Object;)V

    .line 196
    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "needRefresh"

    .prologue
    .line 178
    new-instance v0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    invoke-direct {v0}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/fortress/DefaultPolicy;-><init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;Z)V

    .line 179
    return-void
.end method

.method private refreshImpl(Ljava/lang/Object;)V
    .locals 8
    .parameter "para"

    .prologue
    .line 317
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 318
    .local v0, fresh:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/security/PolicyEntry;>;"
    new-instance v4, Ljava/util/Properties;

    .line 319
    new-instance v5, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;

    invoke-direct {v5}, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;-><init>()V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Properties;

    .line 318
    invoke-direct {v4, v5}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 320
    .local v4, system:Ljava/util/Properties;
    const-string v5, "/"

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    const-string v5, "java.security.policy"

    const-string v6, "policy.url."

    .line 321
    invoke-static {v4, v5, v6}, Lorg/apache/harmony/security/fortress/PolicyUtils;->getPolicyURLs(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v3

    .line 323
    .local v3, policyLocations:[Ljava/net/URL;
    const/4 v1, 0x1

    .line 324
    .local v1, needLoadSysProp:Z
    if-eqz p1, :cond_0

    .line 330
    const/4 v1, 0x0

    .line 336
    :cond_0
    if-eqz v1, :cond_1

    .line 337
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_2

    .line 358
    :cond_1
    iget-object v6, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    monitor-enter v6

    .line 359
    :try_start_0
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->grants:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 360
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->grants:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 362
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 358
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    .line 365
    return-void

    .line 337
    :cond_2
    aget-object v2, v3, v5

    .line 339
    .local v2, policyLocation:Ljava/net/URL;
    :try_start_1
    iget-object v7, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->parser:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    invoke-virtual {v7, v2, v4}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->parse(Ljava/net/URL;Ljava/util/Properties;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 358
    .end local v2           #policyLocation:Ljava/net/URL;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 341
    .restart local v2       #policyLocation:Ljava/net/URL;
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 7
    .parameter "cs"

    .prologue
    .line 204
    iget-boolean v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    if-nez v5, :cond_1

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    if-nez v5, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/apache/harmony/security/fortress/DefaultPolicy;->refresh()V

    .line 205
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_1
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 212
    .local v3, pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    if-nez v3, :cond_4

    .line 214
    iget-object v6, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    monitor-enter v6

    .line 218
    :try_start_1
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    move-object v3, v0

    .line 219
    if-nez v3, :cond_3

    .line 220
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 221
    .end local v3           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .local v4, pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :try_start_2
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->grants:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 222
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 229
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v4

    .line 214
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    .end local v4           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .restart local v3       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :cond_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 233
    :cond_4
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->toPermissionCollection(Ljava/util/Collection;)Ljava/security/PermissionCollection;

    move-result-object v5

    return-object v5

    .line 205
    .end local v3           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 223
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    .restart local v4       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :cond_5
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/PolicyEntry;

    .line 224
    .local v1, ge:Lorg/apache/harmony/security/PolicyEntry;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/apache/harmony/security/PolicyEntry;->impliesPrincipals([Ljava/security/Principal;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/PolicyEntry;->impliesCodeSource(Ljava/security/CodeSource;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    invoke-virtual {v1}, Lorg/apache/harmony/security/PolicyEntry;->getPermissions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 214
    .end local v1           #ge:Lorg/apache/harmony/security/PolicyEntry;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .restart local v3       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :goto_1
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    :catchall_2
    move-exception v5

    goto :goto_1
.end method

.method public getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;
    .locals 8
    .parameter "pd"

    .prologue
    const/4 v6, 0x0

    .line 244
    iget-boolean v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    if-nez v5, :cond_1

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    if-nez v5, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/apache/harmony/security/fortress/DefaultPolicy;->refresh()V

    .line 245
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_1
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 252
    .local v3, pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    if-nez v3, :cond_4

    .line 254
    iget-object v7, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    monitor-enter v7

    .line 258
    :try_start_1
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    move-object v3, v0

    .line 259
    if-nez v3, :cond_3

    .line 260
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 261
    .end local v3           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .local v4, pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :try_start_2
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->grants:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 262
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 271
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v4

    .line 254
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    .end local v4           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .restart local v3       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :cond_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 275
    :cond_4
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->toPermissionCollection(Ljava/util/Collection;)Ljava/security/PermissionCollection;

    move-result-object v5

    return-object v5

    .line 245
    .end local v3           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 263
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    .restart local v4       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :cond_5
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/PolicyEntry;

    .line 264
    .local v1, ge:Lorg/apache/harmony/security/PolicyEntry;
    if-nez p1, :cond_6

    move-object v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Lorg/apache/harmony/security/PolicyEntry;->impliesPrincipals([Ljava/security/Principal;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 266
    if-nez p1, :cond_7

    move-object v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Lorg/apache/harmony/security/PolicyEntry;->impliesCodeSource(Ljava/security/CodeSource;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    invoke-virtual {v1}, Lorg/apache/harmony/security/PolicyEntry;->getPermissions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 254
    .end local v1           #ge:Lorg/apache/harmony/security/PolicyEntry;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .restart local v3       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :goto_3
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .line 265
    .end local v3           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .restart local v1       #ge:Lorg/apache/harmony/security/PolicyEntry;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    .restart local v4       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :cond_6
    :try_start_7
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getPrincipals()[Ljava/security/Principal;

    move-result-object v5

    goto :goto_1

    .line 267
    :cond_7
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v5

    goto :goto_2

    .line 254
    .end local v1           #ge:Lorg/apache/harmony/security/PolicyEntry;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    .end local v4           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .restart local v3       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :catchall_2
    move-exception v5

    goto :goto_3
.end method

.method public implies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z
    .locals 5
    .parameter "domain"
    .parameter "permission"

    .prologue
    .line 281
    if-nez p2, :cond_0

    .line 282
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 284
    :cond_0
    const/4 v1, 0x0

    .line 285
    .local v1, implies:Z
    if-eqz p1, :cond_2

    .line 286
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/fortress/DefaultPolicy;->getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;

    move-result-object v3

    .line 287
    .local v3, total:Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getPermissions()Ljava/security/PermissionCollection;

    move-result-object v2

    .line 288
    .local v2, inherent:Ljava/security/PermissionCollection;
    if-eqz v2, :cond_1

    .line 289
    invoke-virtual {v2}, Ljava/security/PermissionCollection;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 290
    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_3

    .line 294
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    :cond_1
    invoke-virtual {v3, p2}, Ljava/security/PermissionCollection;->implies(Ljava/security/Permission;)Z

    move-result v1

    .line 296
    .end local v2           #inherent:Ljava/security/PermissionCollection;
    .end local v3           #total:Ljava/security/PermissionCollection;
    :cond_2
    return v1

    .line 291
    .restart local v0       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    .restart local v2       #inherent:Ljava/security/PermissionCollection;
    .restart local v3       #total:Ljava/security/PermissionCollection;
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Permission;

    invoke-virtual {v3, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_0
.end method

.method public declared-synchronized refresh()V
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/fortress/DefaultPolicy;->refreshImpl(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized refresh(Ljava/lang/Object;)V
    .locals 1
    .parameter "para"

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/fortress/DefaultPolicy;->refreshImpl(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
