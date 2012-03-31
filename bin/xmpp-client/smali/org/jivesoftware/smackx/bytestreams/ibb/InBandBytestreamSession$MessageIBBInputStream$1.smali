.class Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream$1;
.super Ljava/lang/Object;
.source "InBandBytestreamSession.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;->getDataPacketListener()Lorg/jivesoftware/smack/PacketListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 632
    .line 633
    const-string v1, "data"

    .line 634
    const-string v2, "http://jabber.org/protocol/ibb"

    .line 633
    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 632
    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    .line 637
    .local v0, data:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getDecodedData()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 653
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;

    iget-object v1, v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method
