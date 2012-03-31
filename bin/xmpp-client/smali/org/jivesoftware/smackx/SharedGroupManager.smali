.class public Lorg/jivesoftware/smackx/SharedGroupManager;
.super Ljava/lang/Object;
.source "SharedGroupManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedGroups(Lorg/jivesoftware/smack/Connection;)Ljava/util/List;
    .locals 5
    .parameter "connection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;-><init>()V

    .line 37
    .local v1, info:Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 41
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 43
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 47
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 46
    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 49
    .local v2, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 50
    if-nez v2, :cond_0

    .line 51
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from the server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v3, v4, :cond_1

    .line 54
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 56
    :cond_1
    check-cast v2, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;

    .end local v2           #result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;->getGroups()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
