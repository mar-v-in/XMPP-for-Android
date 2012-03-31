.class public abstract Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
.super Ljava/lang/Object;
.source "StreamNegotiator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method public createError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "from"
    .parameter "to"
    .parameter "packetID"
    .parameter "xmppError"

    .prologue
    .line 55
    .line 56
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 55
    invoke-static {p3, p2, p1, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 57
    .local v0, iq:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0, p4}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 58
    return-object v0
.end method

.method public abstract createIncomingStream(Lorg/jivesoftware/smackx/packet/StreamInitiation;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public createInitiationAccept(Lorg/jivesoftware/smackx/packet/StreamInitiation;[Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/StreamInitiation;
    .locals 6
    .parameter "streamInitiationOffer"
    .parameter "namespaces"

    .prologue
    .line 94
    new-instance v3, Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/StreamInitiation;-><init>()V

    .line 95
    .local v3, response:Lorg/jivesoftware/smackx/packet/StreamInitiation;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setTo(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFrom(Ljava/lang/String;)V

    .line 97
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 98
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setPacketID(Ljava/lang/String;)V

    .line 100
    new-instance v1, Lorg/jivesoftware/smackx/packet/DataForm;

    const-string v4, "submit"

    invoke-direct {v1, v4}, Lorg/jivesoftware/smackx/packet/DataForm;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, form:Lorg/jivesoftware/smackx/packet/DataForm;
    new-instance v0, Lorg/jivesoftware/smackx/FormField;

    .line 102
    const-string v4, "stream-method"

    .line 101
    invoke-direct {v0, v4}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    array-length v5, p2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 106
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/packet/DataForm;->addField(Lorg/jivesoftware/smackx/FormField;)V

    .line 108
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFeatureNegotiationForm(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 109
    return-object v3

    .line 103
    :cond_0
    aget-object v2, p2, v4

    .line 104
    .local v2, namespace:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/FormField;->addValue(Ljava/lang/String;)V

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public abstract createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public abstract getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;
.end method

.method public abstract getNamespaces()[Ljava/lang/String;
.end method

.method initiateIncomingStream(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/packet/StreamInitiation;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 5
    .parameter "connection"
    .parameter "initiation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 158
    .line 159
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {p0, p2, v3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createInitiationAccept(Lorg/jivesoftware/smackx/packet/StreamInitiation;[Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/StreamInitiation;

    move-result-object v1

    .line 164
    .local v1, response:Lorg/jivesoftware/smackx/packet/StreamInitiation;
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-virtual {p0, v3, v4}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 165
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 168
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 169
    .local v2, streamMethodInitiation:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 170
    if-nez v2, :cond_0

    .line 171
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from file transfer initiator"

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_0
    return-object v2
.end method

.method abstract negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
