.class public Lorg/jivesoftware/smackx/jingle/JingleManager;
.super Ljava/lang/Object;
.source "JingleManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionListener;


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final creationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/listeners/CreatedJingleSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private jingleMediaManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private jingleSessionRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field final jingleSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/JingleSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-class v0, Lorg/jivesoftware/smackx/jingle/JingleManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 196
    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleManager;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 194
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/util/List;)V
    .locals 2
    .parameter "connection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p2, jingleMediaManagers:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessions:Ljava/util/List;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->creationListeners:Ljava/util/List;

    .line 315
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 316
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleMediaManagers:Ljava/util/List;

    .line 318
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smackx/jingle/JingleManager$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/jingle/JingleManager$2;-><init>(Lorg/jivesoftware/smackx/jingle/JingleManager;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Roster;->addRosterListener(Lorg/jivesoftware/smack/RosterListener;)V

    .line 355
    return-void
.end method

.method private initJingleSessionRequestListeners()V
    .locals 3

    .prologue
    .line 521
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleManager$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/jingle/JingleManager$3;-><init>(Lorg/jivesoftware/smackx/jingle/JingleManager;)V

    .line 541
    .local v0, initRequestFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionRequestListeners:Ljava/util/List;

    .line 544
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smackx/jingle/JingleManager$4;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/jingle/JingleManager$4;-><init>(Lorg/jivesoftware/smackx/jingle/JingleManager;)V

    invoke-virtual {v1, v2, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 550
    return-void
.end method

.method public static isServiceEnabled(Lorg/jivesoftware/smack/Connection;)Z
    .locals 2
    .parameter "connection"

    .prologue
    .line 210
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 211
    const-string v1, "urn:xmpp:tmp:jingle"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->includesFeature(Ljava/lang/String;)Z

    move-result v0

    .line 210
    return v0
.end method

.method public static isServiceEnabled(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Z
    .locals 3
    .parameter "connection"
    .parameter "userID"

    .prologue
    .line 228
    .line 227
    :try_start_0
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v2

    .line 228
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    .line 229
    .local v1, result:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v2, "urn:xmpp:tmp:jingle"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 232
    .end local v1           #result:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :goto_0
    return v2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    .line 232
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setJingleServiceEnabled()V
    .locals 4

    .prologue
    .line 245
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 246
    .local v0, providerManager:Lorg/jivesoftware/smack/provider/ProviderManager;
    const-string v1, "jingle"

    const-string v2, "urn:xmpp:tmp:jingle"

    .line 247
    new-instance v3, Lorg/jivesoftware/smackx/provider/JingleProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/JingleProvider;-><init>()V

    .line 246
    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    new-instance v1, Lorg/jivesoftware/smackx/jingle/JingleManager$1;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/jingle/JingleManager$1;-><init>()V

    invoke-static {v1}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 259
    return-void
.end method

.method public static declared-synchronized setServiceEnabled(Lorg/jivesoftware/smack/Connection;Z)V
    .locals 3
    .parameter "connection"
    .parameter "enabled"

    .prologue
    .line 276
    const-class v1, Lorg/jivesoftware/smackx/jingle/JingleManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/jivesoftware/smackx/jingle/JingleManager;->isServiceEnabled(Lorg/jivesoftware/smack/Connection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, p1, :cond_0

    .line 287
    :goto_0
    monitor-exit v1

    return-void

    .line 280
    :cond_0
    if-eqz p1, :cond_1

    .line 281
    :try_start_1
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 282
    const-string v2, "urn:xmpp:tmp:jingle"

    .line 281
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 284
    :cond_1
    :try_start_2
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 285
    const-string v2, "urn:xmpp:tmp:jingle"

    .line 284
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public addCreationListener(Lorg/jivesoftware/smackx/jingle/listeners/CreatedJingleSessionListener;)V
    .locals 1
    .parameter "createdJingleSessionListener"

    .prologue
    .line 365
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->creationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method public declared-synchronized addJingleSessionRequestListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionRequestListener;)V
    .locals 2
    .parameter "jingleSessionRequestListener"

    .prologue
    .line 379
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 380
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionRequestListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 381
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/JingleManager;->initJingleSessionRequestListeners()V

    .line 383
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionRequestListeners:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 384
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :cond_1
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 379
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createIncomingJingleSession(Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;)Lorg/jivesoftware/smackx/jingle/JingleSession;
    .locals 6
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Received request cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleSession;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 418
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;->getFrom()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleMediaManagers:Ljava/util/List;

    move-object v2, p1

    .line 417
    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/jingle/JingleSession;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 420
    .local v0, session:Lorg/jivesoftware/smackx/jingle/JingleSession;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/JingleManager;->triggerSessionCreated(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 422
    return-object v0
.end method

.method public createOutgoingJingleSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/JingleSession;
    .locals 6
    .parameter "responder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 437
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 438
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 439
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 440
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 441
    const-string v2, "The provided user id was not fully qualified"

    .line 440
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_1
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleSession;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 445
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v3

    .line 446
    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleMediaManagers:Ljava/util/List;

    move-object v4, p1

    .line 444
    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/jingle/JingleSession;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 448
    .local v0, session:Lorg/jivesoftware/smackx/jingle/JingleSession;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/JingleManager;->triggerSessionCreated(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 450
    return-object v0
.end method

.method public disconnectAllSessions()V
    .locals 6

    .prologue
    .line 458
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessions:Ljava/util/List;

    const/4 v4, 0x0

    .line 459
    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 458
    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 461
    .local v2, sessions:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/JingleSession;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 469
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 470
    return-void

    .line 461
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 463
    .local v1, jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;
    :try_start_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->terminate()V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMediaManagers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleMediaManagers:Ljava/util/List;

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/JingleSession;
    .locals 3
    .parameter "jid"

    .prologue
    .line 508
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 513
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 508
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 509
    .local v0, jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getResponder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public removeCreationListener(Lorg/jivesoftware/smackx/jingle/listeners/CreatedJingleSessionListener;)V
    .locals 1
    .parameter "createdJingleSessionListener"

    .prologue
    .line 560
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->creationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 561
    return-void
.end method

.method public removeJingleSessionRequestListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionRequestListener;)V
    .locals 2
    .parameter "jingleSessionRequestListener"

    .prologue
    .line 573
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionRequestListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionRequestListeners:Ljava/util/List;

    monitor-enter v1

    .line 577
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 576
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sessionClosed(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 1
    .parameter "reason"
    .parameter "jingleSession"

    .prologue
    .line 583
    invoke-virtual {p2, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->removeListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    .line 584
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 585
    return-void
.end method

.method public sessionClosedOnError(Lorg/jivesoftware/smack/XMPPException;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 1
    .parameter "e"
    .parameter "jingleSession"

    .prologue
    .line 590
    invoke-virtual {p2, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->removeListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    .line 591
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 592
    return-void
.end method

.method public sessionDeclined(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 3
    .parameter "reason"
    .parameter "jingleSession"

    .prologue
    .line 596
    invoke-virtual {p2, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->removeListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    .line 597
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 598
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->close()V

    .line 599
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleManager;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Declined:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->error(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public sessionEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "pt"
    .parameter "rc"
    .parameter "lc"
    .parameter "jingleSession"

    .prologue
    .line 605
    return-void
.end method

.method public sessionMediaReceived(Lorg/jivesoftware/smackx/jingle/JingleSession;Ljava/lang/String;)V
    .locals 0
    .parameter "jingleSession"
    .parameter "participant"

    .prologue
    .line 611
    return-void
.end method

.method public sessionRedirected(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 1
    .parameter "redirection"
    .parameter "jingleSession"

    .prologue
    .line 616
    invoke-virtual {p2, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->removeListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    .line 617
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 618
    return-void
.end method

.method public setMediaManagers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, jingleMediaManagers:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;>;"
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleMediaManagers:Ljava/util/List;

    .line 631
    return-void
.end method

.method public triggerSessionCreated(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 4
    .parameter "jingleSession"

    .prologue
    .line 639
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V

    .line 641
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->creationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 648
    return-void

    .line 641
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/listeners/CreatedJingleSessionListener;

    .line 643
    .local v0, createdJingleSessionListener:Lorg/jivesoftware/smackx/jingle/listeners/CreatedJingleSessionListener;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jivesoftware/smackx/jingle/listeners/CreatedJingleSessionListener;->sessionCreated(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method triggerSessionRequested(Lorg/jivesoftware/smackx/packet/Jingle;)V
    .locals 5
    .parameter "initJin"

    .prologue
    .line 659
    const/4 v1, 0x0

    check-cast v1, [Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionRequestListener;

    .line 662
    .local v1, jingleSessionRequestListeners:[Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionRequestListener;
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionRequestListeners:Ljava/util/List;

    monitor-enter v4

    .line 663
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionRequestListeners:Ljava/util/List;

    .line 664
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 663
    new-array v1, v3, [Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionRequestListener;

    .line 665
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionRequestListeners:Ljava/util/List;

    .line 666
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 662
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    new-instance v2, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;-><init>(Lorg/jivesoftware/smackx/jingle/JingleManager;Lorg/jivesoftware/smackx/packet/Jingle;)V

    .line 672
    .local v2, request:Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 675
    return-void

    .line 662
    .end local v2           #request:Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 672
    .restart local v2       #request:Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;
    :cond_0
    aget-object v0, v1, v3

    .line 673
    .local v0, jingleSessionRequestListener:Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionRequestListener;
    invoke-interface {v0, v2}, Lorg/jivesoftware/smackx/jingle/listeners/JingleSessionRequestListener;->sessionRequested(Lorg/jivesoftware/smackx/jingle/JingleSessionRequest;)V

    .line 672
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
