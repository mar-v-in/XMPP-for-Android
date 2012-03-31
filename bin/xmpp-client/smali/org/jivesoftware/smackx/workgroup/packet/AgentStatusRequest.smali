.class public Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "AgentStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;,
        Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Provider;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "agent-status-request"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/workgroup"


# instance fields
.field private final agents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->agents:Ljava/util/Set;

    .line 126
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->agents:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public getAgentCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->agents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getAgents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->agents:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 7

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "agent-status-request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xmlns=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    const-string v4, "http://jabber.org/protocol/workgroup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->agents:Ljava/util/Set;

    monitor-enter v4

    .line 142
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->agents:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 142
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;

    .line 143
    .local v2, item2:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;
    move-object v1, v2

    .line 144
    .local v1, item:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;
    const-string v5, "<agent jid=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->getJID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 146
    const-string v5, "<name xmlns=\"http://jivesoftware.com/protocol/workgroup\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v5, "</name>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_1
    const-string v5, "</agent>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    .end local v1           #item:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;
    .end local v2           #item2:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "agent-status-request"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "http://jabber.org/protocol/workgroup"

    return-object v0
.end method
