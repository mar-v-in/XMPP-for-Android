.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;
.super Ljava/lang/Object;
.source "HttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionPool"
.end annotation


# instance fields
.field private final freeConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 5

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    .line 54
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 54
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 55
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 56
    .local v0, connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->closeSocketAndStreams()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    .end local v0           #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getHttpConnection(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .locals 5
    .parameter "config"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 66
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->access$0()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->access$0()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    :cond_1
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    move-object v3, v0

    .line 87
    :goto_0
    monitor-exit p0

    return-object v3

    .line 75
    .end local v0           #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 76
    .restart local v0       #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->isStale()Z

    move-result v3

    if-nez v3, :cond_4

    .line 79
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 80
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v4

    .line 81
    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_3
    move-object v3, v0

    .line 85
    goto :goto_0

    .line 87
    .end local v2           #security:Ljava/lang/SecurityManager;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->getHttpConnection(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 65
    .end local v0           #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public numFreeConnections()I
    .locals 4

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, numFree:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    .line 95
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 94
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    return v1

    .line 95
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public declared-synchronized returnConnection(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V
    .locals 4
    .parameter "connection"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->access$0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getHttpConfiguration()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    move-result-object v0

    .line 105
    .local v0, config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    .line 106
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 107
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->access$1()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 112
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v0           #config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    .restart local v0       #config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->closeSocketAndStreams()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    .end local v0           #config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 120
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->closeSocketAndStreams()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
