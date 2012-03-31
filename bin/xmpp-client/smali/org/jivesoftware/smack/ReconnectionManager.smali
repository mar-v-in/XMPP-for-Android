.class public Lorg/jivesoftware/smack/ReconnectionManager;
.super Ljava/lang/Object;
.source "ReconnectionManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field done:Z

.field private final randomBase:I

.field private reconnectionThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lorg/jivesoftware/smack/ReconnectionManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/ReconnectionManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->randomBase:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    .line 53
    iput-object p1, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/ReconnectionManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/ReconnectionManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smack/ReconnectionManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smack/ReconnectionManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smack/ReconnectionManager;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->randomBase:I

    return v0
.end method

.method private isReconnectionAllowed()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->isReconnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 89
    goto :goto_0
.end method


# virtual methods
.method public connectionClosed()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    .line 59
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 63
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    .line 64
    instance-of v3, p1, Lorg/jivesoftware/smack/XMPPException;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 65
    check-cast v2, Lorg/jivesoftware/smack/XMPPException;

    .line 66
    .local v2, xmppEx:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPException;->getStreamError()Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v0

    .line 69
    .local v0, error:Lorg/jivesoftware/smack/packet/StreamError;
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StreamError;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, reason:Ljava/lang/String;
    const-string v3, "conflict"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    .end local v0           #error:Lorg/jivesoftware/smack/packet/StreamError;
    .end local v1           #reason:Ljava/lang/String;
    .end local v2           #xmppEx:Lorg/jivesoftware/smack/XMPPException;
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->reconnect()V

    goto :goto_0
.end method

.method protected notifyAttemptToReconnectIn(I)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, v1, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    :cond_0
    return-void

    .line 103
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ConnectionListener;

    .line 104
    .local v0, listener:Lorg/jivesoftware/smack/ConnectionListener;
    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/ConnectionListener;->reconnectingIn(I)V

    goto :goto_0
.end method

.method protected notifyReconnectionFailed(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, v1, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ConnectionListener;

    .line 118
    .local v0, listener:Lorg/jivesoftware/smack/ConnectionListener;
    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/ConnectionListener;->reconnectionFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected declared-synchronized reconnect()V
    .locals 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->reconnectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->reconnectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_1
    :try_start_1
    new-instance v0, Lorg/jivesoftware/smack/ReconnectionManager$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/ReconnectionManager$2;-><init>(Lorg/jivesoftware/smack/ReconnectionManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->reconnectionThread:Ljava/lang/Thread;

    .line 219
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->reconnectionThread:Ljava/lang/Thread;

    const-string v1, "Smack Reconnection Manager"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->reconnectionThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 221
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->reconnectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 228
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 233
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method
