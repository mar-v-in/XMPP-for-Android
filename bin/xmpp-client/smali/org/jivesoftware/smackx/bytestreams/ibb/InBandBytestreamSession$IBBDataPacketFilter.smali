.class Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;
.super Ljava/lang/Object;
.source "InBandBytestreamSession.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IBBDataPacketFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 5
    .parameter "packet"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->remoteJID:Ljava/lang/String;
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$0(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    const-string v3, "data"

    .line 76
    const-string v4, "http://jabber.org/protocol/ibb"

    .line 74
    invoke-virtual {p1, v3, v4}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 77
    .local v1, packetExtension:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz v1, :cond_0

    .line 78
    instance-of v3, v1, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 83
    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    .line 84
    .local v0, data:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getSessionID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$1(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const/4 v2, 0x1

    goto :goto_0
.end method
