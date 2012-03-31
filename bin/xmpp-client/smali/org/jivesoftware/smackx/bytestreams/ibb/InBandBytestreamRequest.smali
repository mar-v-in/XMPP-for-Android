.class public Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;
.super Ljava/lang/Object;
.source "InBandBytestreamRequest.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;


# instance fields
.field private final byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

.field private final manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;)V
    .locals 0
    .parameter "manager"
    .parameter "byteStreamRequest"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 41
    iput-object p2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    .line 42
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
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->accept()Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v0

    return-object v0
.end method

.method public accept()Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    .line 57
    .local v0, connection:Lorg/jivesoftware/smack/Connection;
    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    .line 58
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getFrom()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-direct {v1, v0, v3, v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;Ljava/lang/String;)V

    .line 59
    .local v1, ibbSession:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getSessions()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-static {v3}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    .line 63
    .local v2, resultIQ:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 65
    return-object v1
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reject()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->replyRejectPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 95
    return-void
.end method
