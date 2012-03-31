.class public Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "RTPBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;,
        Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$Provider;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "rtpbridge"

.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger; = null

.field public static final NAME:Ljava/lang/String; = "rtpbridge"

.field public static final NAMESPACE:Ljava/lang/String; = "http://www.jivesoftware.com/protocol/rtpbridge"


# instance fields
.field private bridgeAction:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

.field private hostA:Ljava/lang/String;

.field private hostB:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pass:Ljava/lang/String;

.field private portA:I

.field private portB:I

.field private sid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 141
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 140
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 170
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    const-string v1, "rtpbridge"

    const-string v2, "http://www.jivesoftware.com/protocol/rtpbridge"

    .line 171
    new-instance v3, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$Provider;-><init>()V

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 364
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 146
    iput v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portA:I

    .line 147
    iput v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portB:I

    .line 152
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->create:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->bridgeAction:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    .line 365
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "sid"

    .prologue
    const/4 v0, -0x1

    .line 381
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 146
    iput v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portA:I

    .line 147
    iput v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portB:I

    .line 152
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->create:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->bridgeAction:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    .line 382
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->sid:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;)V
    .locals 1
    .parameter "sid"
    .parameter "bridgeAction"

    .prologue
    const/4 v0, -0x1

    .line 391
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 146
    iput v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portA:I

    .line 147
    iput v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portB:I

    .line 152
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->create:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->bridgeAction:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    .line 392
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->sid:Ljava/lang/String;

    .line 393
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->bridgeAction:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    .line 394
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;)V
    .locals 1
    .parameter "action"

    .prologue
    const/4 v0, -0x1

    .line 372
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 146
    iput v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portA:I

    .line 147
    iput v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portB:I

    .line 152
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->create:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->bridgeAction:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    .line 373
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->bridgeAction:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    .line 374
    return-void
.end method

.method public static getPublicIP(Lorg/jivesoftware/smack/Connection;)Ljava/lang/String;
    .locals 11
    .parameter "xmppConnection"

    .prologue
    const/4 v8, 0x0

    .line 182
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v9

    if-nez v9, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v8

    .line 186
    :cond_1
    new-instance v7, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;

    .line 187
    sget-object v9, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->publicip:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    .line 186
    invoke-direct {v7, v9}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;-><init>(Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;)V

    .line 188
    .local v7, rtpPacket:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "rtpbridge."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->setTo(Ljava/lang/String;)V

    .line 189
    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 195
    new-instance v9, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 196
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPacketID()Ljava/lang/String;

    move-result-object v10

    .line 195
    invoke-direct {v9, v10}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 198
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p0, v7}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 201
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v0, v9, v10}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v6

    .line 200
    check-cast v6, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;

    .line 204
    .local v6, response:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 206
    if-eqz v6, :cond_0

    .line 210
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getIp()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getIp()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 214
    const/4 v5, 0x0

    .line 216
    .local v5, ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 220
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_4

    .line 238
    :cond_3
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getIp()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1

    .line 223
    .end local v1           #e:Ljava/net/SocketException;
    :cond_4
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 224
    .local v4, iface:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 226
    .local v3, iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 228
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 229
    .local v2, iaddress:Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_5

    .line 230
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getIp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_5

    goto/16 :goto_0
.end method

.method public static getRTPBridge(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    .locals 5
    .parameter "connection"
    .parameter "sessionID"

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    const/4 v1, 0x0

    .line 270
    :goto_0
    return-object v1

    .line 255
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;

    invoke-direct {v2, p1}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, rtpPacket:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rtpbridge."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->setTo(Ljava/lang/String;)V

    .line 259
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 260
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 262
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 265
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 264
    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;

    .line 268
    .local v1, response:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    goto :goto_0
.end method

.method public static relaySession(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    .locals 5
    .parameter "connection"
    .parameter "sessionID"
    .parameter "pass"
    .parameter "proxyCandidate"
    .parameter "localCandidate"

    .prologue
    .line 283
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    const/4 v1, 0x0

    .line 313
    :goto_0
    return-object v1

    .line 287
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;

    .line 288
    sget-object v3, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->change:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    .line 287
    invoke-direct {v2, p1, v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;)V

    .line 289
    .local v2, rtpPacket:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rtpbridge."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->setTo(Ljava/lang/String;)V

    .line 290
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 292
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->setPass(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p4}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->setPortA(I)V

    .line 294
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->setPortB(I)V

    .line 295
    invoke-virtual {p4}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->setHostA(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->setHostB(Ljava/lang/String;)V

    .line 302
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 303
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 305
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 308
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 307
    check-cast v1, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;

    .line 311
    .local v1, response:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    goto :goto_0
.end method

.method public static serviceAvailable(Lorg/jivesoftware/smack/Connection;)Z
    .locals 8
    .parameter "connection"

    .prologue
    const/4 v5, 0x0

    .line 324
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v5

    .line 328
    :cond_1
    sget-object v6, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v7, "Service listing"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 331
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 344
    .local v0, disco:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    .line 345
    .local v1, discoInfo:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getIdentities()Ljava/util/Iterator;

    move-result-object v4

    .line 346
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 348
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 349
    .local v3, identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 350
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "rtpbridge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 351
    const/4 v5, 0x1

    goto :goto_0

    .line 354
    .end local v1           #discoInfo:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .end local v3           #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    :catch_0
    move-exception v2

    .line 355
    .local v2, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAttributes()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v0, str:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getSid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 403
    const-string v1, " sid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPass()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 407
    const-string v1, " pass=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPortA()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 411
    const-string v1, " porta=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPortA()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPortB()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 415
    const-string v1, " portb=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getPortB()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getHostA()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 419
    const-string v1, " hosta=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getHostA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getHostB()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 423
    const-string v1, " hostb=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getHostB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v0, str:Ljava/lang/StringBuilder;
    const-string v1, "<rtpbridge xmlns=\'http://www.jivesoftware.com/protocol/rtpbridge\' sid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 438
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->bridgeAction:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    sget-object v2, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->create:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const-string v1, "<candidate/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :goto_0
    const-string v1, "</rtpbridge>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 442
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->bridgeAction:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    sget-object v2, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->change:Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge$BridgeAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    const-string v1, "<relay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getAttributes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 445
    :cond_1
    const-string v1, "<publicip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->getAttributes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getHostA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->hostA:Ljava/lang/String;

    return-object v0
.end method

.method public getHostB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->hostB:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->pass:Ljava/lang/String;

    return-object v0
.end method

.method public getPortA()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portA:I

    return v0
.end method

.method public getPortB()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portB:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public setHostA(Ljava/lang/String;)V
    .locals 0
    .parameter "hostA"

    .prologue
    .line 530
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->hostA:Ljava/lang/String;

    .line 531
    return-void
.end method

.method public setHostB(Ljava/lang/String;)V
    .locals 0
    .parameter "hostB"

    .prologue
    .line 539
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->hostB:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 548
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->ip:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 557
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->name:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public setPass(Ljava/lang/String;)V
    .locals 0
    .parameter "pass"

    .prologue
    .line 566
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->pass:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public setPortA(I)V
    .locals 0
    .parameter "portA"

    .prologue
    .line 575
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portA:I

    .line 576
    return-void
.end method

.method public setPortB(I)V
    .locals 0
    .parameter "portB"

    .prologue
    .line 584
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->portB:I

    .line 585
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 593
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/RTPBridge;->sid:Ljava/lang/String;

    .line 594
    return-void
.end method
