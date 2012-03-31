.class Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;
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
    name = "AgentStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 9
    .parameter "packet"

    .prologue
    const/4 v8, 0x1

    .line 56
    instance-of v5, p1, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    if-eqz v5, :cond_0

    move-object v4, p1

    .line 57
    check-cast v4, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    .line 58
    .local v4, statusRequest:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->getAgents()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 81
    iget-object v5, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    iput-boolean v8, v5, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->rosterInitialized:Z

    .line 83
    .end local v4           #statusRequest:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
    :cond_0
    return-void

    .line 58
    .restart local v4       #statusRequest:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, element:Ljava/lang/Object;
    move-object v2, v1

    .line 59
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;

    .line 60
    .local v2, item:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->getJID()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, agentJID:Ljava/lang/String;
    const-string v6, "remove"

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 67
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 69
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, key:Ljava/lang/String;
    iget-object v6, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v6}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$0(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v6, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #calls: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->fireEvent(ILjava/lang/Object;)V
    invoke-static {v6, v8, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$1(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;ILjava/lang/Object;)V

    goto :goto_0

    .line 74
    .end local v3           #key:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;
    invoke-static {v6}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$2(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v6, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    const/4 v7, 0x0

    #calls: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->fireEvent(ILjava/lang/Object;)V
    invoke-static {v6, v7, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$1(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;ILjava/lang/Object;)V

    goto :goto_0
.end method
