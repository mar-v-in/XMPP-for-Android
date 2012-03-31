.class public abstract Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;
.super Ljava/lang/Object;
.source "TransportResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;
    }
.end annotation


# static fields
.field public static final CHECK_TIMEOUT:I = 0xbb8

.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# instance fields
.field protected final candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;",
            ">;"
        }
    .end annotation
.end field

.field private resolved:Z

.field private resolving:Z

.field public type:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 81
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 74
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;->rawupd:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->type:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->listeners:Ljava/util/ArrayList;

    .line 101
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->initialized:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    .line 114
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->resolving:Z

    .line 115
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->resolved:Z

    .line 116
    return-void
.end method

.method private triggerResolveEnd()V
    .locals 4

    .prologue
    .line 415
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getListenersList()Ljava/util/ArrayList;

    move-result-object v3

    .line 416
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 417
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 424
    return-void

    .line 418
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;

    .line 419
    .local v2, trl:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;
    instance-of v3, v2, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 420
    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;

    .line 421
    .local v1, li:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;->end()V

    goto :goto_0
.end method

.method private triggerResolveInit()V
    .locals 4

    .prologue
    .line 430
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getListenersList()Ljava/util/ArrayList;

    move-result-object v3

    .line 431
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 432
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 439
    return-void

    .line 433
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;

    .line 434
    .local v2, trl:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;
    instance-of v3, v2, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 435
    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;

    .line 436
    .local v1, li:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;->init()V

    goto :goto_0
.end method


# virtual methods
.method protected addCandidate(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 2
    .parameter "cand"

    .prologue
    .line 125
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->triggerCandidateAdded(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 133
    return-void

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addListener(Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;)V
    .locals 2
    .parameter "li"

    .prologue
    .line 142
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->listeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v1

    .line 145
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->cancel()V

    .line 159
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    return-void
.end method

.method protected clearCandidates()V
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    monitor-exit v1

    .line 169
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCandidate(I)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 3
    .parameter "i"

    .prologue
    .line 179
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    monitor-enter v2

    .line 180
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 179
    .local v0, cand:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    monitor-exit v2

    .line 182
    return-object v0

    .line 179
    .end local v0           #cand:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCandidateCount()I
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCandidates()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    monitor-enter v1

    .line 204
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    monitor-exit v1

    return-object v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCandidatesList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    monitor-enter v3

    .line 217
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->candidates:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    return-object v1

    .line 216
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    .restart local v0       #result:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    .restart local v0       #result:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    goto :goto_0
.end method

.method protected getFreePort()I
    .locals 11

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, freePort:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v5, 0xa

    if-lt v3, v5, :cond_0

    .line 245
    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    .line 246
    .local v4, ss:Ljava/net/ServerSocket;
    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    .line 247
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #ss:Ljava/net/ServerSocket;
    :goto_1
    move v2, v1

    .line 251
    .end local v1           #freePort:I
    .local v2, freePort:I
    :goto_2
    return v2

    .line 233
    .end local v2           #freePort:I
    .restart local v1       #freePort:I
    :cond_0
    const-wide/16 v5, 0x2710

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x40c3880000000000L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int v1, v5

    .line 234
    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_1

    .line 236
    :goto_3
    :try_start_1
    new-instance v4, Ljava/net/ServerSocket;

    invoke-direct {v4, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 237
    .restart local v4       #ss:Ljava/net/ServerSocket;
    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    .line 238
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v1

    .line 239
    .end local v1           #freePort:I
    .restart local v2       #freePort:I
    goto :goto_2

    .line 234
    .end local v2           #freePort:I
    .end local v4           #ss:Ljava/net/ServerSocket;
    .restart local v1       #freePort:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 249
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getListenersList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->listeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 261
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->listeners:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPreferredCandidate()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 5

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 273
    .local v1, result:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getCandidatesList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 274
    .local v0, cands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 278
    .restart local v1       #result:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    sget-object v2, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 281
    :cond_0
    return-object v1
.end method

.method public getType()Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->type:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    return-object v0
.end method

.method public abstract initialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public initializeAndWait()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->initialize()V

    .line 301
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v2, "Initializing transport resolver..."

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 302
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v2, "Transport resolved\n"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 310
    :goto_1
    return-void

    .line 303
    :cond_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v2, "Resolver init still pending"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 304
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isResolved()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->resolved:Z

    return v0
.end method

.method public isResolving()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->resolving:Z

    return v0
.end method

.method public removeListener(Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;)V
    .locals 2
    .parameter "li"

    .prologue
    .line 349
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->listeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 349
    monitor-exit v1

    .line 352
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract resolve(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public declared-synchronized setInitialized()V
    .locals 1

    .prologue
    .line 363
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setResolveEnd()V
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->resolved:Z

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->resolving:Z

    .line 374
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->triggerResolveEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setResolveInit()V
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->resolved:Z

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->resolving:Z

    .line 385
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->triggerResolveInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setType(Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 389
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->type:Lorg/jivesoftware/smackx/jingle/nat/TransportResolver$Type;

    .line 390
    return-void
.end method

.method protected triggerCandidateAdded(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 6
    .parameter "cand"

    .prologue
    .line 399
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->getListenersList()Ljava/util/ArrayList;

    move-result-object v3

    .line 400
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 401
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 409
    return-void

    .line 402
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;

    .line 403
    .local v2, trl:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;
    instance-of v3, v2, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 404
    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;

    .line 405
    .local v1, li:Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;
    sget-object v3, Lorg/jivesoftware/smackx/jingle/nat/TransportResolver;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "triggerCandidateAdded : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getLocalIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 406
    invoke-interface {v1, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;->candidateAdded(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    goto :goto_0
.end method
