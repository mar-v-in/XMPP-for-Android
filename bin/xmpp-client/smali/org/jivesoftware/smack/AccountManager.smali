.class public Lorg/jivesoftware/smack/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# instance fields
.field private accountCreationSupported:Z

.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private info:Lorg/jivesoftware/smack/packet/Registration;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/AccountManager;->info:Lorg/jivesoftware/smack/packet/Registration;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/AccountManager;->accountCreationSupported:Z

    .line 62
    iput-object p1, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 63
    return-void
.end method

.method private declared-synchronized getRegistrationInfo()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 302
    .local v2, reg:Lorg/jivesoftware/smack/packet/Registration;
    iget-object v4, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 303
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v5, 0x0

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 304
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v7, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 303
    aput-object v6, v4, v5

    invoke-direct {v1, v4}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 305
    .local v1, filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v4, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 306
    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 307
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 309
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 308
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 311
    .local v3, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 312
    if-nez v3, :cond_0

    .line 313
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local v0           #collector:Lorg/jivesoftware/smack/PacketCollector;
    .end local v1           #filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    .end local v2           #reg:Lorg/jivesoftware/smack/packet/Registration;
    .end local v3           #result:Lorg/jivesoftware/smack/packet/IQ;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 314
    .restart local v0       #collector:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v1       #filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    .restart local v2       #reg:Lorg/jivesoftware/smack/packet/Registration;
    .restart local v3       #result:Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_1

    .line 315
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 317
    :cond_1
    check-cast v3, Lorg/jivesoftware/smack/packet/Registration;

    .end local v3           #result:Lorg/jivesoftware/smack/packet/IQ;
    iput-object v3, p0, Lorg/jivesoftware/smack/AccountManager;->info:Lorg/jivesoftware/smack/packet/Registration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;)V
    .locals 9
    .parameter "newPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v3, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 78
    .local v3, reg:Lorg/jivesoftware/smack/packet/Registration;
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 79
    iget-object v5, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "username"

    iget-object v6, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v5, "password"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/Registration;->setAttributes(Ljava/util/Map;)V

    .line 84
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v6, 0x0

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 85
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v8, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 84
    aput-object v7, v5, v6

    invoke-direct {v1, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 86
    .local v1, filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v5, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 87
    invoke-virtual {v5, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 88
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 90
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v5, v5

    .line 89
    invoke-virtual {v0, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/packet/IQ;

    .line 92
    .local v4, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 93
    if-nez v4, :cond_0

    .line 94
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "No response from server."

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_0
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v5

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v5, v6, :cond_1

    .line 96
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 98
    :cond_1
    return-void
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AccountManager;->supportsAccountCreation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    const-string v3, "Server does not support account creation."

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v1, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AccountManager;->getAccountAttributes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    invoke-virtual {p0, p1, p2, v1}, Lorg/jivesoftware/smack/AccountManager;->createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    return-void

    .line 124
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, attributeName:Ljava/lang/String;
    const-string v3, ""

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .parameter "username"
    .parameter "password"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 147
    .local p3, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AccountManager;->supportsAccountCreation()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Server does not support account creation."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    :cond_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 151
    .local v2, reg:Lorg/jivesoftware/smack/packet/Registration;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 152
    iget-object v4, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 153
    const-string v4, "username"

    invoke-interface {p3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v4, "password"

    invoke-interface {p3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v2, p3}, Lorg/jivesoftware/smack/packet/Registration;->setAttributes(Ljava/util/Map;)V

    .line 156
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v5, 0x0

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 157
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v7, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 156
    aput-object v6, v4, v5

    invoke-direct {v1, v4}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 158
    .local v1, filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v4, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 159
    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 160
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 162
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 161
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 164
    .local v3, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 165
    if-nez v3, :cond_1

    .line 166
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_2

    .line 168
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 170
    :cond_2
    return-void
.end method

.method public deleteAccount()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v5, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 185
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 186
    const-string v6, "Must be logged in to delete a account."

    .line 185
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    :cond_0
    new-instance v3, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 189
    .local v3, reg:Lorg/jivesoftware/smack/packet/Registration;
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 190
    iget-object v5, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v0, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "remove"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Registration;->setAttributes(Ljava/util/Map;)V

    .line 196
    new-instance v2, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v6, 0x0

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 197
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v8, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 196
    aput-object v7, v5, v6

    invoke-direct {v2, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 198
    .local v2, filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v5, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 199
    invoke-virtual {v5, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 200
    .local v1, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smack/AccountManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 202
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v5, v5

    .line 201
    invoke-virtual {v1, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/packet/IQ;

    .line 204
    .local v4, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 205
    if-nez v4, :cond_1

    .line 206
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "No response from server."

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_1
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v5

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v5, v6, :cond_2

    .line 208
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 210
    :cond_2
    return-void
.end method

.method public getAccountAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AccountManager;->info:Lorg/jivesoftware/smack/packet/Registration;

    if-nez v1, :cond_0

    .line 224
    invoke-direct {p0}, Lorg/jivesoftware/smack/AccountManager;->getRegistrationInfo()V

    .line 226
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AccountManager;->info:Lorg/jivesoftware/smack/packet/Registration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Registration;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-object v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, xe:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    .line 230
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountAttributes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AccountManager;->info:Lorg/jivesoftware/smack/packet/Registration;

    if-nez v2, :cond_0

    .line 263
    invoke-direct {p0}, Lorg/jivesoftware/smack/AccountManager;->getRegistrationInfo()V

    .line 265
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AccountManager;->info:Lorg/jivesoftware/smack/packet/Registration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Registration;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 266
    .local v0, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 267
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 272
    .end local v0           #attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, xe:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    .line 272
    .end local v1           #xe:Lorg/jivesoftware/smack/XMPPException;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_0
.end method

.method public getAccountInstructions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AccountManager;->info:Lorg/jivesoftware/smack/packet/Registration;

    if-nez v1, :cond_0

    .line 286
    invoke-direct {p0}, Lorg/jivesoftware/smack/AccountManager;->getRegistrationInfo()V

    .line 288
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AccountManager;->info:Lorg/jivesoftware/smack/packet/Registration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Registration;->getInstructions()Ljava/lang/String;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 290
    :goto_0
    return-object v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, xe:Lorg/jivesoftware/smack/XMPPException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setSupportsAccountCreation(Z)V
    .locals 0
    .parameter "accountCreationSupported"

    .prologue
    .line 331
    iput-boolean p1, p0, Lorg/jivesoftware/smack/AccountManager;->accountCreationSupported:Z

    .line 332
    return-void
.end method

.method public supportsAccountCreation()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    iget-boolean v3, p0, Lorg/jivesoftware/smack/AccountManager;->accountCreationSupported:Z

    if-eqz v3, :cond_0

    .line 360
    :goto_0
    return v1

    .line 354
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/AccountManager;->info:Lorg/jivesoftware/smack/packet/Registration;

    if-nez v3, :cond_1

    .line 355
    invoke-direct {p0}, Lorg/jivesoftware/smack/AccountManager;->getRegistrationInfo()V

    .line 356
    iget-object v3, p0, Lorg/jivesoftware/smack/AccountManager;->info:Lorg/jivesoftware/smack/packet/Registration;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Registration;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v3, v4, :cond_2

    :goto_1
    iput-boolean v1, p0, Lorg/jivesoftware/smack/AccountManager;->accountCreationSupported:Z

    .line 358
    :cond_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/AccountManager;->accountCreationSupported:Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 356
    goto :goto_1

    .line 359
    :catch_0
    move-exception v0

    .local v0, xe:Lorg/jivesoftware/smack/XMPPException;
    move v1, v2

    .line 360
    goto :goto_0
.end method
