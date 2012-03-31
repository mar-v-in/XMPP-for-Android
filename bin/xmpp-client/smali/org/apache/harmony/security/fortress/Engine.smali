.class public Lorg/apache/harmony/security/fortress/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# static fields
.field public static door:Lorg/apache/harmony/security/fortress/SecurityAccess;


# instance fields
.field private lastAlgorithm:Ljava/lang/String;

.field public provider:Ljava/security/Provider;

.field private refreshNumber:I

.field private returnedService:Ljava/security/Provider$Service;

.field private final serviceName:Ljava/lang/String;

.field public spi:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized getInstance(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "algorithm"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 86
    monitor-enter p0

    if-nez p1, :cond_0

    .line 87
    :try_start_0
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    .line 88
    const-string v2, "security.149"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 90
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->refresh()V

    .line 91
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->returnedService:Ljava/security/Provider$Service;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->lastAlgorithm:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget v1, p0, Lorg/apache/harmony/security/fortress/Engine;->refreshNumber:I

    sget v2, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    if-ne v1, v2, :cond_1

    .line 94
    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine;->returnedService:Ljava/security/Provider$Service;

    .line 113
    .local v0, serv:Ljava/security/Provider$Service;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    .line 114
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 96
    .end local v0           #serv:Ljava/security/Provider$Service;
    :cond_1
    :try_start_2
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    .line 98
    const-string v2, "security.14A"

    .line 99
    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    .line 97
    invoke-static {v2, v3, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    iget-object v2, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    invoke-static {p1}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->getService(Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 104
    .restart local v0       #serv:Ljava/security/Provider$Service;
    if-nez v0, :cond_3

    .line 105
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    .line 106
    const-string v2, "security.14A"

    .line 107
    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    .line 105
    invoke-static {v2, v3, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_3
    iput-object v0, p0, Lorg/apache/harmony/security/fortress/Engine;->returnedService:Ljava/security/Provider$Service;

    .line 110
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine;->lastAlgorithm:Ljava/lang/String;

    .line 111
    sget v1, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    iput v1, p0, Lorg/apache/harmony/security/fortress/Engine;->refreshNumber:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V
    .locals 4
    .parameter "algorithm"
    .parameter "provider"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, 0x0

    .line 131
    .local v0, serv:Ljava/security/Provider$Service;
    if-nez p1, :cond_0

    .line 132
    :try_start_0
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    .line 133
    const-string v2, "security.14B"

    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    .line 132
    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 135
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 136
    if-nez v0, :cond_1

    .line 137
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    .line 138
    const-string v2, "security.14A"

    .line 139
    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    .line 137
    invoke-static {v2, v3, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_1
    invoke-virtual {v0, p3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    .line 142
    iput-object p2, p0, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit p0

    return-void
.end method
