.class public Lorg/jivesoftware/smackx/LastActivityManager;
.super Ljava/lang/Object;
.source "LastActivityManager.java"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private lastMessageSent:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lorg/jivesoftware/smackx/LastActivityManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/LastActivityManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 6
    .parameter "connection"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lorg/jivesoftware/smackx/LastActivityManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 151
    new-instance v0, Lorg/jivesoftware/smackx/LastActivityManager$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/LastActivityManager$2;-><init>(Lorg/jivesoftware/smackx/LastActivityManager;)V

    .line 156
    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/Connection;->addPacketSendingListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 159
    new-instance v0, Lorg/jivesoftware/smackx/LastActivityManager$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/LastActivityManager$3;-><init>(Lorg/jivesoftware/smackx/LastActivityManager;)V

    .line 173
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v3, 0x0

    new-instance v4, Lorg/jivesoftware/smack/filter/IQTypeFilter;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/IQTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 174
    const-class v5, Lorg/jivesoftware/smackx/packet/LastActivity;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 173
    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 159
    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/LastActivityManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/LastActivityManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/LastActivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Lorg/jivesoftware/smackx/LastActivityManager;->resetIdleTime()V

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/LastActivityManager;)J
    .locals 2
    .parameter

    .prologue
    .line 182
    invoke-direct {p0}, Lorg/jivesoftware/smackx/LastActivityManager;->getIdleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/LastActivityManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jivesoftware/smackx/LastActivityManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method private getIdleTime()J
    .locals 6

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    .local v0, now:J
    iget-wide v2, p0, Lorg/jivesoftware/smackx/LastActivityManager;->lastMessageSent:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2
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

    .prologue
    .line 104
    new-instance v0, Lorg/jivesoftware/smackx/packet/LastActivity;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/LastActivity;-><init>()V

    .line 105
    .local v0, activity:Lorg/jivesoftware/smackx/packet/LastActivity;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/LastActivity;->setTo(Ljava/lang/String;)V

    .line 108
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 109
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/LastActivity;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 110
    .local v1, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 113
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 112
    check-cast v2, Lorg/jivesoftware/smackx/packet/LastActivity;

    .line 116
    .local v2, response:Lorg/jivesoftware/smackx/packet/LastActivity;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 117
    if-nez v2, :cond_0

    .line 118
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/LastActivity;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 121
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/LastActivity;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 123
    :cond_1
    return-object v2
.end method

.method private resetIdleTime()V
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jivesoftware/smackx/LastActivityManager;->lastMessageSent:J

    .line 193
    return-void
.end method
