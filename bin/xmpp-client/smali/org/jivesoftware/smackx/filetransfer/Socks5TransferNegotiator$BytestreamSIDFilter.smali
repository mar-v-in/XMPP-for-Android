.class Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$BytestreamSIDFilter;
.super Lorg/jivesoftware/smack/filter/PacketTypeFilter;
.source "Socks5TransferNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytestreamSIDFilter"
.end annotation


# instance fields
.field private final sessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 67
    const-class v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StreamID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$BytestreamSIDFilter;->sessionID:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 4
    .parameter "packet"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 77
    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 80
    .local v0, bytestream:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$BytestreamSIDFilter;->sessionID:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 83
    .end local v0           #bytestream:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    :cond_0
    return v1
.end method
