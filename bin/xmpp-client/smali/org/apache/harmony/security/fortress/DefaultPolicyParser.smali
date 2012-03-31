.class public Lorg/apache/harmony/security/fortress/DefaultPolicyParser;
.super Ljava/lang/Object;
.source "DefaultPolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;
    }
.end annotation


# instance fields
.field private final scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;

    .line 181
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/DefaultPolicyScanner;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;

    .line 188
    return-void
.end method


# virtual methods
.method protected getPrincipalByAlias(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/Principal;
    .locals 3
    .parameter "ks"
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v1, Ljava/security/KeyStoreException;

    .line 210
    const-string v2, "security.147"

    .line 209
    invoke-static {v2, p2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_0
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 214
    .local v0, x509:Ljava/security/cert/Certificate;
    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    .line 215
    check-cast v0, Ljava/security/cert/X509Certificate;

    .end local v0           #x509:Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1

    .line 217
    .restart local v0       #x509:Ljava/security/cert/Certificate;
    :cond_1
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "security.148"

    invoke-static {v2, p2, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected initKeyStore(Ljava/util/List;Ljava/net/URL;Ljava/util/Properties;Z)Ljava/security/KeyStore;
    .locals 7
    .parameter
    .parameter "base"
    .parameter "system"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;",
            ">;",
            "Ljava/net/URL;",
            "Ljava/util/Properties;",
            "Z)",
            "Ljava/security/KeyStore;"
        }
    .end annotation

    .prologue
    .local p1, keystores:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;>;"
    const/4 v5, 0x0

    .line 245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    move-object v3, v5

    .line 271
    :goto_1
    return-object v3

    .line 247
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;

    .line 248
    .local v2, ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    if-eqz p4, :cond_1

    .line 249
    iget-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    invoke-static {v6, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    .line 250
    iget-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 251
    iget-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    invoke-static {v6, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    .line 254
    :cond_1
    iget-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 255
    :cond_2
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    .line 257
    :cond_3
    iget-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 258
    .local v3, ks:Ljava/security/KeyStore;
    new-instance v4, Ljava/net/URL;

    iget-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    invoke-direct {v4, p2, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 260
    .local v4, location:Ljava/net/URL;
    new-instance v6, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;

    invoke-direct {v6, v4}, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;-><init>(Ljava/net/URL;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v1, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v1, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 267
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .end local v3           #ks:Ljava/security/KeyStore;
    .end local v4           #location:Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .restart local v3       #ks:Ljava/security/KeyStore;
    .restart local v4       #location:Ljava/net/URL;
    :catchall_0
    move-exception v6

    .line 264
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 265
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public parse(Ljava/net/URL;Ljava/util/Properties;)Ljava/util/Collection;
    .locals 10
    .parameter "location"
    .parameter "system"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/PolicyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {}, Lorg/apache/harmony/security/fortress/PolicyUtils;->canExpandProperties()Z

    move-result v6

    .line 296
    .local v6, resolve:Z
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 297
    new-instance v8, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;

    invoke-direct {v8, p1}, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;-><init>(Ljava/net/URL;)V

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;

    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 296
    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 300
    .local v5, r:Ljava/io/Reader;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 301
    .local v1, grantEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v2, keystores:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;>;"
    :try_start_0
    iget-object v8, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;

    invoke-virtual {v8, v5, v1, v2}, Lorg/apache/harmony/security/DefaultPolicyScanner;->scanStream(Ljava/io/Reader;Ljava/util/Collection;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    .line 310
    invoke-virtual {p0, v2, p1, p2, v6}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->initKeyStore(Ljava/util/List;Ljava/net/URL;Ljava/util/Properties;Z)Ljava/security/KeyStore;

    move-result-object v3

    .line 312
    .local v3, ks:Ljava/security/KeyStore;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 313
    .local v7, result:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/PolicyEntry;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 324
    return-object v7

    .line 305
    .end local v3           #ks:Ljava/security/KeyStore;
    .end local v7           #result:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/PolicyEntry;>;"
    :catchall_0
    move-exception v8

    .line 306
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    .line 307
    throw v8

    .line 313
    .restart local v3       #ks:Ljava/security/KeyStore;
    .restart local v7       #result:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/PolicyEntry;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    .line 315
    .local v0, ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    :try_start_1
    invoke-virtual {p0, v0, v3, p2, v6}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolveGrant(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Lorg/apache/harmony/security/PolicyEntry;

    move-result-object v4

    .line 316
    .local v4, pe:Lorg/apache/harmony/security/PolicyEntry;
    invoke-virtual {v4}, Lorg/apache/harmony/security/PolicyEntry;->isVoid()Z

    move-result v9

    if-nez v9, :cond_0

    .line 317
    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 319
    .end local v4           #pe:Lorg/apache/harmony/security/PolicyEntry;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method protected resolveGrant(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Lorg/apache/harmony/security/PolicyEntry;
    .locals 11
    .parameter "ge"
    .parameter "ks"
    .parameter "system"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v6, 0x0

    .line 371
    .local v6, codebase:Ljava/net/URL;
    const/4 v9, 0x0

    check-cast v9, [Ljava/security/cert/Certificate;

    .line 372
    .local v9, signers:[Ljava/security/cert/Certificate;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 373
    .local v8, principals:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/Principal;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 374
    .local v7, permissions:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/Permission;>;"
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 375
    new-instance v6, Ljava/net/URL;

    .end local v6           #codebase:Ljava/net/URL;
    if-eqz p4, :cond_5

    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    invoke-static {v0, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 378
    .restart local v6       #codebase:Ljava/net/URL;
    :cond_0
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 379
    if-eqz p4, :cond_1

    .line 380
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    invoke-static {v0, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    .line 382
    :cond_1
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolveSigners(Ljava/security/KeyStore;Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v9

    .line 384
    :cond_2
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 396
    :cond_3
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->permissions:Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 397
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->permissions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 406
    :cond_4
    new-instance v0, Lorg/apache/harmony/security/PolicyEntry;

    new-instance v2, Ljava/security/CodeSource;

    invoke-direct {v2, v6, v9}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    invoke-direct {v0, v2, v8, v7}, Lorg/apache/harmony/security/PolicyEntry;-><init>(Ljava/security/CodeSource;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0

    .line 376
    .end local v6           #codebase:Ljava/net/URL;
    :cond_5
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    goto :goto_0

    .line 385
    .restart local v6       #codebase:Ljava/net/URL;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    .line 386
    .local v1, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    if-eqz p4, :cond_7

    .line 387
    iget-object v2, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    invoke-static {v2, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    .line 389
    :cond_7
    iget-object v2, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 390
    iget-object v2, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->getPrincipalByAlias(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    :cond_8
    new-instance v2, Lorg/apache/harmony/security/UnresolvedPrincipal;

    iget-object v3, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    iget-object v4, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/harmony/security/UnresolvedPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    .end local v1           #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;

    .local v1, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 399
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolvePermission(Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Ljava/security/Permission;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 401
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method protected resolvePermission(Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Ljava/security/Permission;
    .locals 6
    .parameter "pe"
    .parameter "ge"
    .parameter "ks"
    .parameter "system"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 441
    new-instance v3, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;

    invoke-direct {v3, p0}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;-><init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;)V

    invoke-virtual {v3, p2, p3}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->configure(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;)Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;

    move-result-object v3

    .line 440
    invoke-static {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandGeneral(Ljava/lang/String;Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 443
    :cond_0
    if-eqz p5, :cond_3

    .line 444
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 445
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    invoke-static {v2, p4}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 447
    :cond_1
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 448
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    invoke-static {v2, p4}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    .line 450
    :cond_2
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 451
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    invoke-static {v2, p4}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    .line 454
    :cond_3
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v1, 0x0

    .line 457
    .local v1, signers:[Ljava/security/cert/Certificate;
    :goto_0
    :try_start_0
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->klass:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 458
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSigners()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 459
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 460
    iget-object v3, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    .line 459
    invoke-static {v0, v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->instantiatePermission(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 465
    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return-object v2

    .line 455
    .end local v1           #signers:[Ljava/security/cert/Certificate;
    :cond_4
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    invoke-virtual {p0, p3, v2}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolveSigners(Ljava/security/KeyStore;Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v1

    goto :goto_0

    .line 462
    .restart local v1       #signers:[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    .line 465
    :cond_5
    new-instance v2, Ljava/security/UnresolvedPermission;

    iget-object v3, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->klass:Ljava/lang/String;

    iget-object v4, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    iget-object v5, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Ljava/security/UnresolvedPermission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V

    goto :goto_1
.end method

.method protected resolveSigners(Ljava/security/KeyStore;Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 4
    .parameter "ks"
    .parameter "signers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "security.146"

    invoke-static {v3, p2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 489
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 490
    .local v0, certs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/Certificate;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .local v1, snt:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    .line 495
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    return-object v2

    .line 493
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
