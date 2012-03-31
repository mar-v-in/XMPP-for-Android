.class public Lorg/jivesoftware/smackx/PrivateDataManager;
.super Ljava/lang/Object;
.source "PrivateDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataIQProvider;,
        Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;
    }
.end annotation


# static fields
.field private static privateDataProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/provider/PrivateDataProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/PrivateDataManager;->privateDataProviders:Ljava/util/Map;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be logged in to XMPP server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 262
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 2
    .parameter "connection"
    .parameter "user"

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be logged in to XMPP server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 283
    iput-object p2, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->user:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public static addPrivateDataProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/provider/PrivateDataProvider;)V
    .locals 2
    .parameter "elementName"
    .parameter "namespace"
    .parameter "provider"

    .prologue
    .line 172
    invoke-static {p0, p1}, Lorg/jivesoftware/smackx/PrivateDataManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lorg/jivesoftware/smackx/PrivateDataManager;->privateDataProviders:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public static getPrivateDataProvider(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/provider/PrivateDataProvider;
    .locals 2
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 204
    invoke-static {p0, p1}, Lorg/jivesoftware/smackx/PrivateDataManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lorg/jivesoftware/smackx/PrivateDataManager;->privateDataProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/provider/PrivateDataProvider;

    return-object v1
.end method

.method private static getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/><"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removePrivateDataProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 235
    invoke-static {p0, p1}, Lorg/jivesoftware/smackx/PrivateDataManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lorg/jivesoftware/smackx/PrivateDataManager;->privateDataProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method


# virtual methods
.method public getPrivateData(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/PrivateData;
    .locals 6
    .parameter "elementName"
    .parameter "namespace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v2, Lorg/jivesoftware/smackx/PrivateDataManager$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/jivesoftware/smackx/PrivateDataManager$1;-><init>(Lorg/jivesoftware/smackx/PrivateDataManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v2, privateDataGet:Lorg/jivesoftware/smack/packet/IQ;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 321
    iget-object v4, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->user:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 322
    iget-object v4, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->user:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, packetID:Ljava/lang/String;
    iget-object v4, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 328
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-direct {v5, v1}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 331
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 335
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 334
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 337
    .local v3, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 338
    if-nez v3, :cond_1

    .line 339
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from the server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 342
    :cond_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_2

    .line 343
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 345
    :cond_2
    check-cast v3, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;

    .end local v3           #response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;->getPrivateData()Lorg/jivesoftware/smackx/packet/PrivateData;

    move-result-object v4

    return-object v4
.end method

.method public setPrivateData(Lorg/jivesoftware/smackx/packet/PrivateData;)V
    .locals 6
    .parameter "privateData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v2, Lorg/jivesoftware/smackx/PrivateDataManager$2;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smackx/PrivateDataManager$2;-><init>(Lorg/jivesoftware/smackx/PrivateDataManager;Lorg/jivesoftware/smackx/packet/PrivateData;)V

    .line 372
    .local v2, privateDataSet:Lorg/jivesoftware/smack/packet/IQ;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 374
    iget-object v4, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->user:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 375
    iget-object v4, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->user:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 379
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, packetID:Ljava/lang/String;
    iget-object v4, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 381
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-direct {v5, v1}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 384
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/PrivateDataManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 387
    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 389
    .local v3, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 390
    if-nez v3, :cond_1

    .line 391
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from the server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 394
    :cond_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_2

    .line 395
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 397
    :cond_2
    return-void
.end method
