.class public Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;
.super Ljava/lang/Object;
.source "FileTransferNegotiator.java"


# static fields
.field public static IBB_ONLY:Z = false

.field private static final NAMESPACE:[Ljava/lang/String; = null

.field protected static final STREAM_DATA_FIELD_NAME:Ljava/lang/String; = "stream-method"

.field private static final STREAM_INIT_PREFIX:Ljava/lang/String; = "jsi_"

.field private static final randomGenerator:Ljava/util/Random;

.field private static final transferObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 63
    const-string v3, "http://jabber.org/protocol/si/profile/file-transfer"

    aput-object v3, v2, v1

    .line 64
    const-string v3, "http://jabber.org/protocol/si"

    aput-object v3, v2, v0

    .line 62
    sput-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->NAMESPACE:[Ljava/lang/String;

    .line 66
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->transferObject:Ljava/util/Map;

    .line 72
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sput-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->randomGenerator:Ljava/util/Random;

    .line 80
    const-string v2, "ibb"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    .line 58
    return-void

    :cond_0
    move v0, v1

    .line 80
    goto :goto_0
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->configureConnection(Lorg/jivesoftware/smack/Connection;)V

    .line 225
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 226
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 227
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 228
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->cleanup(Lorg/jivesoftware/smack/Connection;)V

    return-void
.end method

.method private cleanup(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 231
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->transferObject:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->cleanup()V

    .line 234
    :cond_0
    return-void
.end method

.method private configureConnection(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 237
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;-><init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 263
    return-void
.end method

.method private createDefaultInitiationForm()Lorg/jivesoftware/smackx/packet/DataForm;
    .locals 4

    .prologue
    .line 266
    new-instance v1, Lorg/jivesoftware/smackx/packet/DataForm;

    const-string v2, "form"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/packet/DataForm;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, form:Lorg/jivesoftware/smackx/packet/DataForm;
    new-instance v0, Lorg/jivesoftware/smackx/FormField;

    const-string v2, "stream-method"

    invoke-direct {v0, v2}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    const-string v2, "list-single"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/FormField;->setType(Ljava/lang/String;)V

    .line 269
    sget-boolean v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v2, :cond_0

    .line 270
    new-instance v2, Lorg/jivesoftware/smackx/FormField$Option;

    .line 271
    const-string v3, "http://jabber.org/protocol/bytestreams"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/FormField$Option;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/FormField;->addOption(Lorg/jivesoftware/smackx/FormField$Option;)V

    .line 273
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/FormField$Option;

    const-string v3, "http://jabber.org/protocol/ibb"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/FormField$Option;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/FormField;->addOption(Lorg/jivesoftware/smackx/FormField$Option;)V

    .line 274
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/packet/DataForm;->addField(Lorg/jivesoftware/smackx/FormField;)V

    .line 275
    return-object v1
.end method

.method public static createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .parameter "ID"
    .parameter "to"
    .parameter "from"
    .parameter "type"

    .prologue
    .line 97
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$1;-><init>()V

    .line 103
    .local v0, iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 108
    return-object v0
.end method

.method public static getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;
    .locals 3
    .parameter "connection"

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Connection cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    const/4 v1, 0x0

    .line 136
    :goto_0
    return-object v1

    .line 129
    :cond_1
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->transferObject:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->transferObject:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    goto :goto_0

    .line 132
    :cond_2
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 134
    .local v0, transfer:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->setServiceEnabled(Lorg/jivesoftware/smack/Connection;Z)V

    .line 135
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->transferObject:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 136
    goto :goto_0
.end method

.method private getNegotiator(Lorg/jivesoftware/smackx/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 9
    .parameter "field"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, isByteStream:Z
    const/4 v2, 0x0

    .line 283
    .local v2, isIBB:Z
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/FormField;->getOptions()Ljava/util/Iterator;

    move-result-object v3

    .line 284
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField$Option;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 283
    if-nez v5, :cond_1

    .line 293
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 294
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 295
    sget-object v5, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 296
    const-string v6, "No acceptable transfer mechanism"

    .line 294
    invoke-direct {v0, v5, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 297
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 285
    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/FormField$Option;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/FormField$Option;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, variable:Ljava/lang/String;
    const-string v5, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v5, :cond_2

    .line 287
    const/4 v1, 0x1

    goto :goto_0

    .line 288
    :cond_2
    const-string v5, "http://jabber.org/protocol/ibb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 289
    const/4 v2, 0x1

    goto :goto_0

    .line 302
    .end local v4           #variable:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 303
    new-instance v5, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;

    iget-object v6, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 304
    iget-object v7, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    iget-object v8, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 303
    invoke-direct {v5, v6, v7, v8}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V

    .line 308
    :goto_1
    return-object v5

    .line 305
    :cond_4
    if-eqz v1, :cond_5

    .line 306
    iget-object v5, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_1

    .line 308
    :cond_5
    iget-object v5, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_1
.end method

.method private getOutgoingNegotiator(Lorg/jivesoftware/smackx/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 9
    .parameter "field"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, isByteStream:Z
    const/4 v2, 0x0

    .line 330
    .local v2, isIBB:Z
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 339
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 340
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 341
    sget-object v5, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 342
    const-string v6, "No acceptable transfer mechanism"

    .line 340
    invoke-direct {v0, v5, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 343
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 331
    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 332
    .local v4, variable:Ljava/lang/String;
    const-string v5, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v5, :cond_2

    .line 333
    const/4 v1, 0x1

    goto :goto_0

    .line 334
    :cond_2
    const-string v5, "http://jabber.org/protocol/ibb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 335
    const/4 v2, 0x1

    goto :goto_0

    .line 346
    .end local v4           #variable:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 347
    new-instance v5, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;

    iget-object v6, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 348
    iget-object v7, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    iget-object v8, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 347
    invoke-direct {v5, v6, v7, v8}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V

    .line 352
    :goto_1
    return-object v5

    .line 349
    :cond_4
    if-eqz v1, :cond_5

    .line 350
    iget-object v5, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_1

    .line 352
    :cond_5
    iget-object v5, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_1
.end method

.method private getStreamMethodField(Lorg/jivesoftware/smackx/packet/DataForm;)Lorg/jivesoftware/smackx/FormField;
    .locals 4
    .parameter "form"

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DataForm;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    :cond_0
    return-object v0

    .line 359
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #field:Lorg/jivesoftware/smackx/FormField;
    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    .line 360
    .restart local v0       #field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stream-method"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSupportedProtocols()Ljava/util/Collection;
    .locals 2
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
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, protocols:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "http://jabber.org/protocol/ibb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    sget-boolean v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v1, :cond_0

    .line 149
    const-string v1, "http://jabber.org/protocol/bytestreams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static isServiceEnabled(Lorg/jivesoftware/smack/Connection;)Z
    .locals 5
    .parameter "connection"

    .prologue
    .line 164
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 166
    .local v0, manager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v2, namespaces:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->NAMESPACE:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    const-string v3, "http://jabber.org/protocol/ibb"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    sget-boolean v3, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v3, :cond_0

    .line 170
    const-string v3, "http://jabber.org/protocol/bytestreams"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 178
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 173
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 174
    .local v1, namespace:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->includesFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setServiceEnabled(Lorg/jivesoftware/smack/Connection;Z)V
    .locals 5
    .parameter "connection"
    .parameter "isEnabled"

    .prologue
    .line 193
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 195
    .local v0, manager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v2, namespaces:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->NAMESPACE:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    const-string v3, "http://jabber.org/protocol/ibb"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-boolean v3, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v3, :cond_0

    .line 199
    const-string v3, "http://jabber.org/protocol/bytestreams"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 212
    return-void

    .line 202
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    .local v1, namespace:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 204
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->includesFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getNextStreamID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "jsi_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public negotiateOutgoingTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 10
    .parameter "userID"
    .parameter "streamID"
    .parameter "fileName"
    .parameter "size"
    .parameter "desc"
    .parameter "responseTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v4, Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/StreamInitiation;-><init>()V

    .line 410
    .local v4, si:Lorg/jivesoftware/smackx/packet/StreamInitiation;
    invoke-virtual {v4, p2}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setSesssionID(Ljava/lang/String;)V

    .line 411
    invoke-static {p3}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setMimeType(Ljava/lang/String;)V

    .line 413
    new-instance v5, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

    invoke-direct {v5, p3, p4, p5}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;-><init>(Ljava/lang/String;J)V

    .line 415
    .local v5, siFile:Lorg/jivesoftware/smackx/packet/StreamInitiation$File;
    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->setDesc(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFile(Lorg/jivesoftware/smackx/packet/StreamInitiation$File;)V

    .line 418
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createDefaultInitiationForm()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFeatureNegotiationForm(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 420
    iget-object v7, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFrom(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v4, p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setTo(Ljava/lang/String;)V

    .line 422
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 424
    iget-object v7, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 425
    new-instance v8, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getPacketID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 426
    .local v1, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v7, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 427
    move/from16 v0, p7

    int-to-long v7, v0

    invoke-virtual {v1, v7, v8}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v6

    .line 428
    .local v6, siResponse:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 430
    instance-of v7, v6, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v7, :cond_2

    move-object v2, v6

    .line 431
    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 432
    .local v2, iqResponse:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v7

    sget-object v8, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v3, v6

    .line 433
    check-cast v3, Lorg/jivesoftware/smackx/packet/StreamInitiation;

    .line 435
    .local v3, response:Lorg/jivesoftware/smackx/packet/StreamInitiation;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFeatureNegotiationForm()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v7

    .line 434
    invoke-direct {p0, v7}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getStreamMethodField(Lorg/jivesoftware/smackx/packet/DataForm;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getOutgoingNegotiator(Lorg/jivesoftware/smackx/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v7

    .line 443
    .end local v2           #iqResponse:Lorg/jivesoftware/smack/packet/IQ;
    .end local v3           #response:Lorg/jivesoftware/smackx/packet/StreamInitiation;
    :goto_0
    return-object v7

    .line 437
    .restart local v2       #iqResponse:Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v7

    sget-object v8, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 438
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v7

    .line 440
    :cond_1
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string v8, "File transfer response unreadable"

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 443
    .end local v2           #iqResponse:Lorg/jivesoftware/smack/packet/IQ;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public rejectStream(Lorg/jivesoftware/smackx/packet/StreamInitiation;)V
    .locals 6
    .parameter "si"

    .prologue
    .line 454
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 455
    const-string v3, "Offer Declined"

    .line 454
    invoke-direct {v0, v2, v3}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 456
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getTo()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 456
    invoke-static {v2, v3, v4, v5}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 458
    .local v1, iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 459
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 460
    return-void
.end method

.method public selectStreamNegotiator(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 11
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getStreamInitiation()Lorg/jivesoftware/smackx/packet/StreamInitiation;

    move-result-object v5

    .line 477
    .local v5, si:Lorg/jivesoftware/smackx/packet/StreamInitiation;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFeatureNegotiationForm()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v7

    .line 476
    invoke-direct {p0, v7}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getStreamMethodField(Lorg/jivesoftware/smackx/packet/DataForm;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v6

    .line 479
    .local v6, streamMethodField:Lorg/jivesoftware/smackx/FormField;
    if-nez v6, :cond_0

    .line 480
    const-string v2, "No stream methods contained in packet."

    .line 481
    .local v2, errorMessage:Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 482
    sget-object v7, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v8, "No stream methods contained in packet."

    .line 481
    invoke-direct {v1, v7, v8}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 483
    .local v1, error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v8

    .line 484
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getTo()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 483
    invoke-static {v7, v8, v9, v10}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v3

    .line 485
    .local v3, iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 486
    iget-object v7, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 487
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string v8, "No stream methods contained in packet."

    invoke-direct {v7, v8, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v7

    .line 494
    .end local v1           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v2           #errorMessage:Ljava/lang/String;
    .end local v3           #iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    :try_start_0
    invoke-direct {p0, v6}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getNegotiator(Lorg/jivesoftware/smackx/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 505
    .local v4, selectedStreamNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    return-object v4

    .line 495
    .end local v4           #selectedStreamNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v8

    .line 497
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getTo()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 496
    invoke-static {v7, v8, v9, v10}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v3

    .line 498
    .restart local v3       #iqPacket:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 499
    iget-object v7, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 500
    throw v0
.end method
