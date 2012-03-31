.class Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;
.super Ljava/lang/Object;
.source "InBandBytestreamSession.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->getDataPacketListener()Lorg/jivesoftware/smack/PacketListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastSequence:J

.field final synthetic this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->lastSequence:J

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .parameter "packet"

    .prologue
    .line 532
    .line 533
    const-string v4, "data"

    .line 534
    const-string v5, "http://jabber.org/protocol/ibb"

    .line 533
    invoke-virtual {p1, v4, v5}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    .line 532
    check-cast v2, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    .line 540
    .local v2, data:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getSeq()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->lastSequence:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 543
    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    .line 544
    .end local p1
    new-instance v4, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 545
    sget-object v5, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->unexpected_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 544
    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 542
    invoke-static {p1, v4}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v3

    .line 546
    .local v3, unexpectedRequest:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->access$1(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v4

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smack/Connection;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 574
    .end local v3           #unexpectedRequest:Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    :goto_0
    return-void

    .line 552
    .restart local p1
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getDecodedData()[B

    move-result-object v4

    if-nez v4, :cond_2

    .line 555
    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    .end local p1
    new-instance v4, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 556
    sget-object v5, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 554
    invoke-static {p1, v4}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 557
    .local v0, badRequest:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->access$1(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v4

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smack/Connection;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 562
    .end local v0           #badRequest:Lorg/jivesoftware/smack/packet/IQ;
    .restart local p1
    :cond_2
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    iget-object v4, v4, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 565
    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    .end local p1
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 566
    .local v1, confirmData:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->access$1(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v4

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smack/Connection;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 569
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getSeq()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->lastSequence:J

    .line 570
    iget-wide v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->lastSequence:J

    const-wide/32 v6, 0xffff

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 571
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->lastSequence:J

    goto :goto_0
.end method
