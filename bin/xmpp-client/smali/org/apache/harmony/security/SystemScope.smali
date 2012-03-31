.class public Lorg/apache/harmony/security/SystemScope;
.super Ljava/security/IdentityScope;
.source "SystemScope.java"


# static fields
.field private static final serialVersionUID:J = -0x42c1915b3568f46fL


# instance fields
.field private final keys:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/security/PublicKey;",
            "Ljava/security/Identity;",
            ">;"
        }
    .end annotation
.end field

.field private final names:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Identity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/security/IdentityScope;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .locals 1
    .parameter "name"
    .parameter "scope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    .line 70
    return-void
.end method


# virtual methods
.method public declared-synchronized addIdentity(Ljava/security/Identity;)V
    .locals 4
    .parameter "identity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    if-nez p1, :cond_0

    .line 79
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.92"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 82
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/security/Identity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    new-instance v2, Ljava/security/KeyManagementException;

    .line 85
    const-string v3, "security.93"

    .line 84
    invoke-static {v3, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/security/Identity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 89
    .local v0, key:Ljava/security/PublicKey;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    new-instance v2, Ljava/security/KeyManagementException;

    .line 91
    const-string v3, "security.94"

    .line 90
    invoke-static {v3, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    if-eqz v0, :cond_3

    .line 96
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getIdentity(Ljava/lang/String;)Ljava/security/Identity;
    .locals 1
    .parameter "name"

    .prologue
    .line 116
    monitor-enter p0

    if-nez p1, :cond_0

    .line 117
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Identity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;
    .locals 1
    .parameter "key"

    .prologue
    .line 105
    monitor-enter p0

    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Identity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public identities()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Identity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeIdentity(Ljava/security/Identity;)V
    .locals 5
    .parameter "identity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 138
    monitor-enter p0

    if-nez p1, :cond_0

    .line 139
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "security.92"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 142
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/security/Identity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 144
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "security.95"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    .local v0, contains:Z
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p1}, Ljava/security/Identity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 152
    .local v1, key:Ljava/security/PublicKey;
    if-eqz v1, :cond_2

    .line 153
    if-nez v0, :cond_3

    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    .line 154
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_2
    if-nez v0, :cond_4

    .line 158
    new-instance v3, Ljava/security/KeyManagementException;

    const-string v4, "security.96"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
