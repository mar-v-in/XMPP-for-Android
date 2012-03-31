.class public Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;
.super Ljava/lang/Object;
.source "TranscriptSearchManager.java"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 44
    return-void
.end method


# virtual methods
.method public getSearchForm(Ljava/lang/String;)Lorg/jivesoftware/smackx/Form;
    .locals 6
    .parameter "serviceJID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;-><init>()V

    .line 59
    .local v2, search:Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 60
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->setTo(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 63
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 64
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 67
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 66
    check-cast v1, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;

    .line 70
    .local v1, response:Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 71
    if-nez v1, :cond_0

    .line 72
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 75
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 77
    :cond_1
    invoke-static {v1}, Lorg/jivesoftware/smackx/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;

    move-result-object v3

    return-object v3
.end method

.method public submitSearch(Ljava/lang/String;Lorg/jivesoftware/smackx/Form;)Lorg/jivesoftware/smackx/ReportedData;
    .locals 6
    .parameter "serviceJID"
    .parameter "completedForm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;-><init>()V

    .line 96
    .local v2, search:Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 97
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->setTo(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 100
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 101
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 102
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 105
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 104
    check-cast v1, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;

    .line 108
    .local v1, response:Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 109
    if-nez v1, :cond_0

    .line 110
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 113
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/TranscriptSearch;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 115
    :cond_1
    invoke-static {v1}, Lorg/jivesoftware/smackx/ReportedData;->getReportedDataFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/ReportedData;

    move-result-object v3

    return-object v3
.end method
