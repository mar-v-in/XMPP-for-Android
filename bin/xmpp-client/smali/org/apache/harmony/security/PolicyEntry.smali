.class public Lorg/apache/harmony/security/PolicyEntry;
.super Ljava/lang/Object;
.source "PolicyEntry.java"


# instance fields
.field private final cs:Ljava/security/CodeSource;

.field private final permissions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private final principals:[Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljava/security/CodeSource;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .parameter "cs"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/CodeSource;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, prs:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/security/Principal;>;"
    .local p3, permissions:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/security/Permission;>;"
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/PolicyEntry;->normalizeCodeSource(Ljava/security/CodeSource;)Ljava/security/CodeSource;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->cs:Ljava/security/CodeSource;

    .line 59
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->principals:[Ljava/security/Principal;

    .line 61
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    :goto_2
    iput-object v1, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    .line 63
    return-void

    :cond_2
    move-object v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Principal;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Principal;

    goto :goto_1

    .line 62
    :cond_4
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_2
.end method

.method private normalizeCodeSource(Ljava/security/CodeSource;)Ljava/security/CodeSource;
    .locals 4
    .parameter "codeSource"

    .prologue
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v3

    .line 106
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->normalizeURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    .line 108
    .local v0, codeSourceURL:Ljava/net/URL;
    move-object v1, p1

    .line 110
    .local v1, result:Ljava/security/CodeSource;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v3

    if-eq v0, v3, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/security/CodeSource;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v2

    .line 113
    .local v2, signers:[Ljava/security/CodeSigner;
    if-nez v2, :cond_1

    .line 114
    new-instance v1, Ljava/security/CodeSource;

    .line 115
    .end local v1           #result:Ljava/security/CodeSource;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 114
    invoke-direct {v1, v0, v3}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 120
    .end local v2           #signers:[Ljava/security/CodeSigner;
    .restart local v1       #result:Ljava/security/CodeSource;
    :cond_0
    :goto_0
    return-object v1

    .line 117
    .restart local v2       #signers:[Ljava/security/CodeSigner;
    :cond_1
    new-instance v1, Ljava/security/CodeSource;

    .end local v1           #result:Ljava/security/CodeSource;
    invoke-direct {v1, v0, v2}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .restart local v1       #result:Ljava/security/CodeSource;
    goto :goto_0
.end method


# virtual methods
.method public getPermissions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    return-object v0
.end method

.method public impliesCodeSource(Ljava/security/CodeSource;)Z
    .locals 2
    .parameter "codeSource"

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->cs:Ljava/security/CodeSource;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 83
    :cond_0
    if-nez p1, :cond_1

    .line 84
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->cs:Ljava/security/CodeSource;

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/PolicyEntry;->normalizeCodeSource(Ljava/security/CodeSource;)Ljava/security/CodeSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/CodeSource;->implies(Ljava/security/CodeSource;)Z

    move-result v0

    goto :goto_0
.end method

.method public impliesPrincipals([Ljava/security/Principal;)Z
    .locals 1
    .parameter "prs"

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->principals:[Ljava/security/Principal;

    invoke-static {v0, p1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVoid()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
