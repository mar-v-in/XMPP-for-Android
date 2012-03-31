.class public Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;
.super Ljava/lang/Object;
.source "Socks5BytestreamRequest.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;


# static fields
.field private static final ADDRESS_BLACKLIST:Lorg/jivesoftware/smack/util/Cache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/Cache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLACKLIST_LIFETIME:J = 0x6ddd00L

.field private static final BLACKLIST_MAX_SIZE:I = 0x64

.field private static CONNECTION_FAILURE_THRESHOLD:I


# instance fields
.field private final bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

.field private final manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

.field private minimumConnectTimeout:I

.field private totalConnectTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lorg/jivesoftware/smack/util/Cache;

    .line 44
    const/16 v1, 0x64

    const-wide/32 v2, 0x6ddd00

    .line 43
    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->ADDRESS_BLACKLIST:Lorg/jivesoftware/smack/util/Cache;

    .line 51
    const/4 v0, 0x2

    sput v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->CONNECTION_FAILURE_THRESHOLD:I

    .line 34
    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;)V
    .locals 1
    .parameter "manager"
    .parameter "bytestreamRequest"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/16 v0, 0x2710

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->totalConnectTimeout:I

    .line 95
    const/16 v0, 0x7d0

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->minimumConnectTimeout:I

    .line 107
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    .line 108
    iput-object p2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 109
    return-void
.end method

.method private cancelRequest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 210
    const-string v2, "Could not establish socket with any provided host"

    .line 211
    .local v2, errorMessage:Ljava/lang/String;
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 212
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v4, "Could not establish socket with any provided host"

    .line 211
    invoke-direct {v0, v3, v4}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 213
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-static {v3, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 214
    .local v1, errorIQ:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 215
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "Could not establish socket with any provided host"

    invoke-direct {v3, v4, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3
.end method

.method private createUsedHostResponse(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .locals 2
    .parameter "selectedHost"

    .prologue
    .line 227
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 228
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, response:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setTo(Ljava/lang/String;)V

    .line 230
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 231
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setPacketID(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setUsedHost(Ljava/lang/String;)V

    .line 233
    return-object v0
.end method

.method public static getConnectFailureThreshold()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->CONNECTION_FAILURE_THRESHOLD:I

    return v0
.end method

.method private getConnectionFailures(Ljava/lang/String;)I
    .locals 2
    .parameter "address"

    .prologue
    .line 244
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->ADDRESS_BLACKLIST:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 245
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private incrementConnectionFailures(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 309
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->ADDRESS_BLACKLIST:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 310
    .local v0, count:Ljava/lang/Integer;
    sget-object v2, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->ADDRESS_BLACKLIST:Lorg/jivesoftware/smack/util/Cache;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lorg/jivesoftware/smack/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void

    .line 310
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static setConnectFailureThreshold(I)V
    .locals 0
    .parameter "connectFailureThreshold"

    .prologue
    .line 79
    sput p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->CONNECTION_FAILURE_THRESHOLD:I

    .line 80
    return-void
.end method


# virtual methods
.method public bridge synthetic accept()Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->accept()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    move-result-object v0

    return-object v0
.end method

.method public accept()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v11, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 130
    invoke-virtual {v11}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getStreamHosts()Ljava/util/Collection;

    move-result-object v9

    .line 133
    .local v9, streamHosts:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v11

    if-nez v11, :cond_0

    .line 134
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->cancelRequest()V

    .line 137
    :cond_0
    const/4 v5, 0x0

    .line 138
    .local v5, selectedHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    const/4 v6, 0x0

    .line 141
    .local v6, socket:Ljava/net/Socket;
    iget-object v11, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v12

    .line 142
    iget-object v13, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v13}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v13

    invoke-virtual {v13}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v13

    .line 140
    invoke-static {v11, v12, v13}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->createDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, digest:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->getTotalConnectTimeout()I

    move-result v11

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v12

    div-int/2addr v11, v12

    .line 151
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->getMinimumConnectTimeout()I

    move-result v12

    .line 149
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 153
    .local v10, timeout:I
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 189
    :goto_1
    if-eqz v5, :cond_2

    if-nez v6, :cond_3

    .line 190
    :cond_2
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->cancelRequest()V

    .line 194
    :cond_3
    invoke-direct {p0, v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->createUsedHostResponse(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    move-result-object v4

    .line 195
    .local v4, response:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    iget-object v11, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 197
    new-instance v11, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v12

    .line 198
    iget-object v13, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v13}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 197
    invoke-direct {v11, v6, v12}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;-><init>(Ljava/net/Socket;Z)V

    return-object v11

    .line 153
    .end local v4           #response:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 154
    .local v8, streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 155
    invoke-virtual {v8}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getPort()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 154
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->getConnectionFailures(Ljava/lang/String;)I

    move-result v3

    .line 159
    .local v3, failures:I
    sget v12, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->CONNECTION_FAILURE_THRESHOLD:I

    if-lez v12, :cond_5

    .line 160
    sget v12, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->CONNECTION_FAILURE_THRESHOLD:I

    if-ge v3, v12, :cond_1

    .line 168
    :cond_5
    :try_start_0
    new-instance v7, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;

    invoke-direct {v7, v8, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;)V

    .line 172
    .local v7, socks5Client:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
    invoke-virtual {v7, v10}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->getSocket(I)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 175
    move-object v5, v8

    goto :goto_1

    .line 178
    .end local v7           #socks5Client:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
    :catch_0
    move-exception v2

    .line 179
    .local v2, e:Ljava/util/concurrent/TimeoutException;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->incrementConnectionFailures(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v2           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v2

    .line 181
    .local v2, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->incrementConnectionFailures(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 183
    .local v2, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->incrementConnectionFailures(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumConnectTimeout()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->minimumConnectTimeout:I

    if-gtz v0, :cond_0

    .line 266
    const/16 v0, 0x7d0

    .line 268
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->minimumConnectTimeout:I

    goto :goto_0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalConnectTimeout()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->totalConnectTimeout:I

    if-gtz v0, :cond_0

    .line 297
    const/16 v0, 0x2710

    .line 299
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->totalConnectTimeout:I

    goto :goto_0
.end method

.method public reject()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->replyRejectPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 320
    return-void
.end method

.method public setMinimumConnectTimeout(I)V
    .locals 0
    .parameter "minimumConnectTimeout"

    .prologue
    .line 330
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->minimumConnectTimeout:I

    .line 331
    return-void
.end method

.method public setTotalConnectTimeout(I)V
    .locals 0
    .parameter "totalConnectTimeout"

    .prologue
    .line 349
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->totalConnectTimeout:I

    .line 350
    return-void
.end method
