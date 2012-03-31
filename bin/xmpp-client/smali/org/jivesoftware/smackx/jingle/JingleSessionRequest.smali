.class public Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;
.super Ljava/lang/Object;
.source "JingleSessionRequest.java"


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# instance fields
.field private final jingle:Lorg/jivesoftware/smackx/packet/Jingle;

.field private final manager:Lorg/jivesoftware/smackx/jingle/JingleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 36
    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleManager;Lorg/jivesoftware/smackx/packet/Jingle;)V
    .locals 0
    .parameter "manager"
    .parameter "jingle"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->manager:Lorg/jivesoftware/smackx/jingle/JingleManager;

    .line 56
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->jingle:Lorg/jivesoftware/smackx/packet/Jingle;

    .line 57
    return-void
.end method


# virtual methods
.method public declared-synchronized accept()Lorg/jivesoftware/smackx/jingle/JingleSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    const/4 v0, 0x0

    .line 67
    .local v0, session:Lorg/jivesoftware/smackx/jingle/JingleSession;
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->manager:Lorg/jivesoftware/smackx/jingle/JingleManager;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->manager:Lorg/jivesoftware/smackx/jingle/JingleManager;

    invoke-virtual {v1, p0}, Lorg/jivesoftware/smackx/jingle/JingleManager;->createIncomingJingleSession(Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;)Lorg/jivesoftware/smackx/jingle/JingleSession;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->setSid(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->updatePacketListener()V

    .line 73
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->getJingle()Lorg/jivesoftware/smackx/packet/Jingle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->receivePacketAndRespond(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 67
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return-object v0

    .line 67
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->jingle:Lorg/jivesoftware/smackx/packet/Jingle;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Jingle;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJingle()Lorg/jivesoftware/smackx/packet/Jingle;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->jingle:Lorg/jivesoftware/smackx/packet/Jingle;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->jingle:Lorg/jivesoftware/smackx/packet/Jingle;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Jingle;->getSid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reject()V
    .locals 5

    .prologue
    .line 131
    monitor-enter p0

    const/4 v1, 0x0

    .line 132
    .local v1, session:Lorg/jivesoftware/smackx/jingle/JingleSession;
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->manager:Lorg/jivesoftware/smackx/jingle/JingleManager;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->manager:Lorg/jivesoftware/smackx/jingle/JingleManager;

    invoke-virtual {v2, p0}, Lorg/jivesoftware/smackx/jingle/JingleManager;->createIncomingJingleSession(Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;)Lorg/jivesoftware/smackx/jingle/JingleSession;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->setSid(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->updatePacketListener()V

    .line 139
    const-string v2, "Declined"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->terminate(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    :try_start_3
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v4, ""

    invoke-virtual {v2, v4, v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 132
    .end local v0           #e:Lorg/jivesoftware/smack/XMPPException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method
