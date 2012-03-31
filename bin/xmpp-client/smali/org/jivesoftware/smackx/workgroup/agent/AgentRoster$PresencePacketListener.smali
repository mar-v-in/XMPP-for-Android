.class Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;
.super Ljava/lang/Object;
.source "AgentRoster.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresencePacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 13
    .parameter "packet"

    .prologue
    .line 92
    move-object v6, p1

    check-cast v6, Lorg/jivesoftware/smack/packet/Presence;

    .line 93
    .local v6, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, from:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 97
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 98
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Presence with no FROM: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Presence;->toXML()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #calls: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v4}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$3(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v9

    sget-object v10, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v9, v10, :cond_5

    .line 111
    const-string v9, "agent-status"

    .line 112
    const-string v10, "http://jabber.org/protocol/workgroup"

    .line 111
    invoke-virtual {v6, v9, v10}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 110
    check-cast v1, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;

    .line 113
    .local v1, agentStatus:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;
    if-eqz v1, :cond_0

    .line 119
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->workgroupJID:Ljava/lang/String;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$4(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->getWorkgroupJID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$0(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    .line 125
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v8, userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$0(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_1
    monitor-enter v8

    .line 133
    :try_start_0
    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$2(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;

    move-result-object v10

    monitor-enter v10

    .line 137
    :try_start_1
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$2(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 136
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 128
    .end local v8           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_3
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$0(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .restart local v8       #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    goto :goto_1

    .line 131
    :catchall_1
    move-exception v9

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 137
    :cond_4
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, element:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 139
    .local v3, entry:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 140
    invoke-static {v5}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 141
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 140
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 142
    iget-object v11, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    const/4 v12, 0x2

    #calls: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->fireEvent(ILjava/lang/Object;)V
    invoke-static {v11, v12, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$1(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 149
    .end local v1           #agentStatus:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;
    .end local v2           #element:Ljava/lang/Object;
    .end local v3           #entry:Ljava/lang/String;
    .end local v8           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_5
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v9

    sget-object v10, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v9, v10, :cond_0

    .line 150
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$0(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 151
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$0(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v9

    .line 152
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 153
    .restart local v8       #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    monitor-enter v8

    .line 154
    :try_start_4
    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 156
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 157
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$0(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v8           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_6
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$2(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;

    move-result-object v10

    monitor-enter v10

    .line 162
    :try_start_5
    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;
    invoke-static {v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$2(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 161
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .line 153
    .restart local v8       #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :catchall_3
    move-exception v9

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v9

    .line 162
    .end local v8           #userPresences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_8
    :try_start_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 163
    .local v7, string:Ljava/lang/String;
    move-object v3, v7

    .line 164
    .restart local v3       #entry:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 165
    invoke-static {v5}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 166
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 165
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 167
    iget-object v11, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    const/4 v12, 0x2

    #calls: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->fireEvent(ILjava/lang/Object;)V
    invoke-static {v11, v12, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$1(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3
.end method
