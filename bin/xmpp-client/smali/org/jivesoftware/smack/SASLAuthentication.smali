.class public Lorg/jivesoftware/smack/SASLAuthentication;
.super Ljava/lang/Object;
.source "SASLAuthentication.java"

# interfaces
.implements Lorg/jivesoftware/smack/UserAuthentication;


# static fields
.field private static implementedMechanisms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jivesoftware/smack/sasl/SASLMechanism;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mechanismsPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

.field private errorCondition:Ljava/lang/String;

.field private resourceBinded:Z

.field private saslFailed:Z

.field private saslNegotiated:Z

.field private serverMechanisms:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    .line 183
    const-string v0, "EXTERNAL"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLExternalMechanism;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 184
    const-string v0, "GSSAPI"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLGSSAPIMechanism;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 185
    const-string v0, "DIGEST-MD5"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLDigestMD5Mechanism;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 186
    const-string v0, "CRAM-MD5"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLCramMD5Mechanism;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 187
    const-string v0, "PLAIN"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLPlainMechanism;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 188
    const-string v0, "ANONYMOUS"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLAnonymous;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 193
    const-string v0, "PLAIN"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->supportSASLMechanism(Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 228
    iput-object p1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    .line 229
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SASLAuthentication;->init()V

    .line 230
    return-void
.end method

.method private bindResourceAndEstablishSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 544
    monitor-enter p0

    .line 545
    :try_start_0
    iget-boolean v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 547
    const-wide/16 v6, 0x7530

    :try_start_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 554
    iget-boolean v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z

    if-nez v6, :cond_1

    .line 556
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "Resource binding not offered by server"

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 544
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 559
    :cond_1
    new-instance v1, Lorg/jivesoftware/smack/packet/Bind;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Bind;-><init>()V

    .line 560
    .local v1, bindResource:Lorg/jivesoftware/smack/packet/Bind;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Bind;->setResource(Ljava/lang/String;)V

    .line 562
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    .line 563
    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 564
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Bind;->getPacketID()Ljava/lang/String;

    move-result-object v8

    .line 563
    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 566
    .local v2, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 570
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 569
    invoke-virtual {v2, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Bind;

    .line 571
    .local v3, response:Lorg/jivesoftware/smack/packet/Bind;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 572
    if-nez v3, :cond_2

    .line 573
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from the server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 576
    :cond_2
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Bind;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_3

    .line 577
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Bind;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 579
    :cond_3
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Bind;->getJid()Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, userJID:Ljava/lang/String;
    iget-boolean v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->sessionSupported:Z

    if-eqz v6, :cond_5

    .line 582
    new-instance v4, Lorg/jivesoftware/smack/packet/Session;

    invoke-direct {v4}, Lorg/jivesoftware/smack/packet/Session;-><init>()V

    .line 583
    .local v4, session:Lorg/jivesoftware/smack/packet/Session;
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 584
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Session;->getPacketID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 586
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 590
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 589
    invoke-virtual {v2, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 591
    .local v0, ack:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 592
    if-nez v0, :cond_4

    .line 593
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from the server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 596
    :cond_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_6

    .line 597
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 601
    .end local v0           #ack:Lorg/jivesoftware/smack/packet/IQ;
    .end local v4           #session:Lorg/jivesoftware/smack/packet/Session;
    :cond_5
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    .line 602
    const-string v7, "Session establishment not offered by server"

    .line 601
    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 548
    .end local v1           #bindResource:Lorg/jivesoftware/smack/packet/Bind;
    .end local v2           #collector:Lorg/jivesoftware/smack/PacketCollector;
    .end local v3           #response:Lorg/jivesoftware/smack/packet/Bind;
    .end local v5           #userJID:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 604
    .restart local v0       #ack:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v1       #bindResource:Lorg/jivesoftware/smack/packet/Bind;
    .restart local v2       #collector:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v3       #response:Lorg/jivesoftware/smack/packet/Bind;
    .restart local v4       #session:Lorg/jivesoftware/smack/packet/Session;
    .restart local v5       #userJID:Ljava/lang/String;
    :cond_6
    return-object v5
.end method

.method public static getRegisterSASLMechanisms()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jivesoftware/smack/sasl/SASLMechanism;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;>;"
    sget-object v2, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    return-object v0

    .line 104
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, mechanismsPreference:Ljava/lang/String;
    sget-object v2, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jivesoftware/smack/sasl/SASLMechanism;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, mClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public static supportSASLMechanism(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 121
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method public static supportSASLMechanism(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "index"

    .prologue
    .line 140
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v0, p1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 141
    return-void
.end method

.method public static unregisterSASLMechanism(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 222
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public static unsupportSASLMechanism(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 154
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "username"
    .parameter "password"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v4, 0x0

    .line 353
    .local v4, selectedMechanism:Ljava/lang/String;
    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 360
    if-eqz v4, :cond_6

    .line 365
    :try_start_0
    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    .line 366
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 367
    .local v3, mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    .line 368
    const-class v7, Lorg/jivesoftware/smack/SASLAuthentication;

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 369
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/sasl/SASLMechanism;

    iput-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 376
    iget-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 377
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v6

    .line 376
    invoke-virtual {v5, p1, v6, p2}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    monitor-enter p0
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    :try_start_1
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 383
    const-wide/16 v5, 0x7530

    :try_start_2
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 380
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    :try_start_4
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    if-eqz v5, :cond_4

    .line 395
    iget-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 396
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SASL authentication "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 398
    iget-object v7, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 396
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 415
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3           #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_0
    move-exception v1

    .line 416
    .local v1, e:Lorg/jivesoftware/smack/XMPPException;
    throw v1

    .line 353
    .end local v1           #e:Lorg/jivesoftware/smack/XMPPException;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 354
    .local v2, mechanism:Ljava/lang/String;
    sget-object v6, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 355
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v6, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 356
    move-object v4, v2

    goto/16 :goto_0

    .line 380
    .end local v2           #mechanism:Ljava/lang/String;
    .restart local v0       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3       #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 417
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3           #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_1
    move-exception v1

    .line 420
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v5, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 425
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 400
    .restart local v0       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3       #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :cond_3
    :try_start_7
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    .line 401
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SASL authentication failed using mechanism "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 401
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 400
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 406
    :cond_4
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-eqz v5, :cond_5

    .line 408
    invoke-direct {p0, p3}, Lorg/jivesoftware/smack/SASLAuthentication;->bindResourceAndEstablishSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 412
    :cond_5
    new-instance v5, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v5, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v5

    goto :goto_2

    .line 425
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3           #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :cond_6
    new-instance v5, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v5, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 384
    .restart local v0       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3       #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljavax/security/auth/callback/CallbackHandler;)Ljava/lang/String;
    .locals 8
    .parameter "username"
    .parameter "resource"
    .parameter "cbh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v4, 0x0

    .line 258
    .local v4, selectedMechanism:Ljava/lang/String;
    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 265
    :goto_0
    if-eqz v4, :cond_6

    .line 270
    :try_start_0
    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    .line 271
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 272
    .local v3, mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    .line 273
    const-class v7, Lorg/jivesoftware/smack/SASLAuthentication;

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 274
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/sasl/SASLMechanism;

    iput-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 280
    iget-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6, p3}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljavax/security/auth/callback/CallbackHandler;)V

    .line 284
    monitor-enter p0
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :try_start_1
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 287
    const-wide/16 v5, 0x7530

    :try_start_2
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 284
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    :try_start_4
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    if-eqz v5, :cond_5

    .line 298
    iget-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 299
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SASL authentication "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 301
    iget-object v7, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 299
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 315
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3           #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_0
    move-exception v1

    .line 316
    .local v1, e:Lorg/jivesoftware/smack/XMPPException;
    throw v1

    .line 258
    .end local v1           #e:Lorg/jivesoftware/smack/XMPPException;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    .local v2, mechanism:Ljava/lang/String;
    sget-object v6, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 260
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v6, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    move-object v4, v2

    .line 262
    goto :goto_0

    .line 284
    .end local v2           #mechanism:Ljava/lang/String;
    .restart local v0       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3       #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 317
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3           #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_1
    move-exception v1

    .line 318
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "SASL authentication failed"

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 303
    .restart local v0       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3       #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :cond_4
    :try_start_7
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SASL authentication failed using mechanism "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 304
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    :cond_5
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-eqz v5, :cond_3

    .line 311
    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/SASLAuthentication;->bindResourceAndEstablishSession(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v5

    return-object v5

    .line 321
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3           #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :cond_6
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    .line 322
    const-string v6, "SASL Authentication failed. No known authentication mechanisims."

    .line 321
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 288
    .restart local v0       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3       #mechanismClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public authenticateAnonymously()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 449
    :try_start_0
    new-instance v1, Lorg/jivesoftware/smack/sasl/SASLAnonymous;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/sasl/SASLAnonymous;-><init>(Lorg/jivesoftware/smack/SASLAuthentication;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 450
    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :try_start_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 456
    const-wide/16 v1, 0x1388

    :try_start_2
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 453
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 463
    :try_start_4
    iget-boolean v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    if-eqz v1, :cond_2

    .line 467
    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 468
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SASL authentication failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v2, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 484
    invoke-virtual {v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticateAnonymously()Ljava/lang/String;

    move-result-object v1

    .line 483
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return-object v1

    .line 453
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 471
    :cond_1
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    const-string v2, "SASL authentication failed"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :cond_2
    iget-boolean v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-eqz v1, :cond_3

    .line 477
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->bindResourceAndEstablishSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 479
    :cond_3
    new-instance v1, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v2, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 480
    invoke-virtual {v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticateAnonymously()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v1

    goto :goto_1

    .line 457
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method authenticated()V
    .locals 1

    .prologue
    .line 493
    monitor-enter p0

    .line 494
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    .line 496
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 493
    monitor-exit p0

    .line 498
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method authenticationFailed()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method authenticationFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 521
    monitor-enter p0

    .line 522
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    .line 523
    iput-object p1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 521
    monitor-exit p0

    .line 527
    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method bindingRequired()V
    .locals 1

    .prologue
    .line 534
    monitor-enter p0

    .line 535
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z

    .line 537
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 534
    monitor-exit p0

    .line 539
    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method challengeReceived(Ljava/lang/String;)V
    .locals 1
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->challengeReceived(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public hasAnonymousAuthentication()Z
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    const-string v1, "ANONYMOUS"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasNonAnonymousAuthentication()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 641
    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/SASLAuthentication;->hasAnonymousAuthentication()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 641
    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 651
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    .line 652
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    .line 653
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z

    .line 654
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->sessionSupported:Z

    .line 655
    return-void
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    return v0
.end method

.method public send(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "stanza"

    .prologue
    .line 669
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 670
    return-void
.end method

.method sessionsSupported()V
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->sessionSupported:Z

    .line 679
    return-void
.end method

.method setAvailableSASLMethods(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, mechanisms:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    .line 693
    return-void
.end method
