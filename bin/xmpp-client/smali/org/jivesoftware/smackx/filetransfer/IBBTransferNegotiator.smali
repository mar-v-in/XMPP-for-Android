.class public Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;
.super Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
.source "IBBTransferNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$ByteStreamRequest;,
        Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOpenSidFilter;
    }
.end annotation


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 104
    invoke-static {p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getByteStreamManager(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 105
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public createIncomingStream(Lorg/jivesoftware/smackx/packet/StreamInitiation;)Ljava/io/InputStream;
    .locals 3
    .parameter "initiation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->ignoreBytestreamRequestOnce(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {p0, v1, p1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->initiateIncomingStream(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/packet/StreamInitiation;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 122
    .local v0, streamInitiation:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .parameter "streamID"
    .parameter "initiator"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v1, p3, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v0

    .line 130
    .local v0, session:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->setCloseBothStreamsEnabled(Z)V

    .line 131
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method public getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;
    .locals 4
    .parameter "from"
    .parameter "streamID"

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->ignoreBytestreamRequestOnce(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    invoke-direct {v3, p1}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 144
    new-instance v3, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOpenSidFilter;

    invoke-direct {v3, p2}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOpenSidFilter;-><init>(Ljava/lang/String;)V

    .line 143
    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-object v0
.end method

.method public getNamespaces()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://jabber.org/protocol/ibb"

    aput-object v2, v0, v1

    return-object v0
.end method

.method negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;
    .locals 4
    .parameter "streamInitiation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$ByteStreamRequest;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 157
    check-cast p1, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    .line 156
    .end local p1
    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$ByteStreamRequest;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$ByteStreamRequest;)V

    .line 160
    .local v0, request:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->accept()Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v1

    .line 161
    .local v1, session:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->setCloseBothStreamsEnabled(Z)V

    .line 162
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method
