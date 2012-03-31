.class public Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "AgentChatHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory$InternalProvider;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "chat-sessions"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jivesoftware.com/protocol/workgroup"


# instance fields
.field private final agentChatSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;",
            ">;"
        }
    .end annotation
.end field

.field private agentJID:Ljava/lang/String;

.field private maxSessions:I

.field private startDate:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->agentChatSessions:Ljava/util/List;

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "agentJID"
    .parameter "maxSessions"

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->agentChatSessions:Ljava/util/List;

    .line 129
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->agentJID:Ljava/lang/String;

    .line 130
    iput p2, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->maxSessions:I

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->startDate:J

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Date;)V
    .locals 2
    .parameter "agentJID"
    .parameter "maxSessions"
    .parameter "startDate"

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->agentChatSessions:Ljava/util/List;

    .line 135
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->agentJID:Ljava/lang/String;

    .line 136
    iput p2, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->maxSessions:I

    .line 137
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->startDate:J

    .line 138
    return-void
.end method


# virtual methods
.method public addChatSession(Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;)V
    .locals 1
    .parameter "chatSession"

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->agentChatSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public getAgentChatSessions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->agentChatSessions:Ljava/util/List;

    return-object v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chat-sessions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " agentJID=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->agentJID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " maxSessions=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->maxSessions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " startDate=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->startDate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "></"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chat-sessions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
