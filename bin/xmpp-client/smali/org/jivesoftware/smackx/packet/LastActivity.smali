.class public Lorg/jivesoftware/smackx/packet/LastActivity;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "LastActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/LastActivity$Provider;
    }
.end annotation


# instance fields
.field public lastActivity:J

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smackx/packet/LastActivity;->lastActivity:J

    .line 127
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/LastActivity;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 128
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/packet/LastActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/LastActivity;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static getLastActivity(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/LastActivity;
    .locals 5
    .parameter "con"
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lorg/jivesoftware/smackx/packet/LastActivity;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/LastActivity;-><init>()V

    .line 100
    .local v0, activity:Lorg/jivesoftware/smackx/packet/LastActivity;
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/LastActivity;->setTo(Ljava/lang/String;)V

    .line 104
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 105
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/LastActivity;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 106
    .local v1, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 109
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 108
    check-cast v2, Lorg/jivesoftware/smackx/packet/LastActivity;

    .line 112
    .local v2, response:Lorg/jivesoftware/smackx/packet/LastActivity;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 113
    if-nez v2, :cond_0

    .line 114
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/LastActivity;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 117
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/LastActivity;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 119
    :cond_1
    return-object v2
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 169
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/LastActivity;->message:Ljava/lang/String;

    .line 170
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<query xmlns=\"jabber:iq:last\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-wide v1, p0, Lorg/jivesoftware/smackx/packet/LastActivity;->lastActivity:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 135
    const-string v1, " seconds=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jivesoftware/smackx/packet/LastActivity;->lastActivity:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    const-string v1, "></query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIdleTime()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/jivesoftware/smackx/packet/LastActivity;->lastActivity:J

    return-wide v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/LastActivity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setLastActivity(J)V
    .locals 0
    .parameter "lastActivity"

    .prologue
    .line 165
    iput-wide p1, p0, Lorg/jivesoftware/smackx/packet/LastActivity;->lastActivity:J

    .line 166
    return-void
.end method
