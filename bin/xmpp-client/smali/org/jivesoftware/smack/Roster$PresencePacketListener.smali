.class Lorg/jivesoftware/smack/Roster$PresencePacketListener;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/Roster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresencePacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/Roster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smack/Roster;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/Roster$PresencePacketListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Roster$PresencePacketListener;-><init>(Lorg/jivesoftware/smack/Roster;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .parameter "packet"

    .prologue
    .line 73
    move-object v3, p1

    check-cast v3, Lorg/jivesoftware/smack/packet/Presence;

    .line 74
    .local v3, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, from:Ljava/lang/String;
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v1}, Lorg/jivesoftware/smack/Roster;->access$0(Lorg/jivesoftware/smack/Roster;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v6, v7, :cond_2

    .line 84
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 85
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 86
    .local v5, userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_0
    const-string v6, ""

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$2(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    .line 98
    .local v0, entry:Lorg/jivesoftware/smack/RosterEntry;
    if-eqz v0, :cond_0

    .line 99
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->fireRosterPresenceEvent(Lorg/jivesoftware/smack/packet/Presence;)V
    invoke-static {v6, v3}, Lorg/jivesoftware/smack/Roster;->access$3(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 184
    .end local v0           #entry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v5           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_0
    :goto_1
    return-void

    .line 88
    :cond_1
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .restart local v5       #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    goto :goto_0

    .line 103
    .end local v5           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_2
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v6, v7, :cond_6

    .line 106
    const-string v6, ""

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 109
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 110
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 111
    .restart local v5       #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :goto_2
    const-string v6, ""

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v5           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_3
    :goto_3
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$2(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    .line 129
    .restart local v0       #entry:Lorg/jivesoftware/smack/RosterEntry;
    if-eqz v0, :cond_0

    .line 130
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->fireRosterPresenceEvent(Lorg/jivesoftware/smack/packet/Presence;)V
    invoke-static {v6, v3}, Lorg/jivesoftware/smack/Roster;->access$3(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_1

    .line 113
    .end local v0           #entry:Lorg/jivesoftware/smack/RosterEntry;
    :cond_4
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .restart local v5       #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    goto :goto_2

    .line 118
    .end local v5           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_5
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 119
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    .line 120
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 125
    .restart local v5       #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 132
    .end local v5           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_6
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v6, v7, :cond_8

    .line 133
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->subscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$4(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->accept_all:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    if-ne v6, v7, :cond_7

    .line 135
    new-instance v4, Lorg/jivesoftware/smack/packet/Presence;

    .line 136
    sget-object v6, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 135
    invoke-direct {v4, v6}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 137
    .local v4, response:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 138
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$5(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Connection;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_1

    .line 139
    .end local v4           #response:Lorg/jivesoftware/smack/packet/Presence;
    :cond_7
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->subscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$4(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->reject_all:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    if-ne v6, v7, :cond_0

    .line 141
    new-instance v4, Lorg/jivesoftware/smack/packet/Presence;

    .line 142
    sget-object v6, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 141
    invoke-direct {v4, v6}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 143
    .restart local v4       #response:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 144
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$5(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Connection;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_1

    .line 147
    .end local v4           #response:Lorg/jivesoftware/smack/packet/Presence;
    :cond_8
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v6, v7, :cond_9

    .line 148
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->subscriptionMode:Lorg/jivesoftware/smack/Roster$SubscriptionMode;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$4(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->manual:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    if-eq v6, v7, :cond_0

    .line 154
    new-instance v4, Lorg/jivesoftware/smack/packet/Presence;

    .line 155
    sget-object v6, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 154
    invoke-direct {v4, v6}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 156
    .restart local v4       #response:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 157
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$5(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Connection;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_1

    .line 164
    .end local v4           #response:Lorg/jivesoftware/smack/packet/Presence;
    :cond_9
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/Presence$Type;->error:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v6, v7, :cond_0

    .line 165
    const-string v6, ""

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 167
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 168
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 169
    .restart local v5       #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_4
    const-string v6, ""

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->entries:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$2(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    .line 180
    .restart local v0       #entry:Lorg/jivesoftware/smack/RosterEntry;
    if-eqz v0, :cond_0

    .line 181
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->fireRosterPresenceEvent(Lorg/jivesoftware/smack/packet/Presence;)V
    invoke-static {v6, v3}, Lorg/jivesoftware/smack/Roster;->access$3(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/packet/Presence;)V

    goto/16 :goto_1

    .line 171
    .end local v0           #entry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v5           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_a
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1(Lorg/jivesoftware/smack/Roster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 174
    .restart local v5       #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    goto :goto_4
.end method
