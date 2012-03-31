.class public Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;
.super Ljava/lang/Object;
.source "AgentChatSession.java"


# instance fields
.field public duration:J

.field public question:Ljava/lang/String;

.field public sessionID:Ljava/lang/String;

.field public startDate:Ljava/util/Date;

.field public visitorsEmail:Ljava/lang/String;

.field public visitorsName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "date"
    .parameter "duration"
    .parameter "visitorsName"
    .parameter "visitorsEmail"
    .parameter "sessionID"
    .parameter "question"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->startDate:Ljava/util/Date;

    .line 38
    iput-wide p2, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->duration:J

    .line 39
    iput-object p4, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->visitorsName:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->visitorsEmail:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->sessionID:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->question:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->duration:J

    return-wide v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public getVisitorsEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->visitorsEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitorsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->visitorsName:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 70
    iput-wide p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->duration:J

    .line 71
    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0
    .parameter "question"

    .prologue
    .line 74
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->question:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionID"

    .prologue
    .line 78
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->sessionID:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0
    .parameter "startDate"

    .prologue
    .line 82
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->startDate:Ljava/util/Date;

    .line 83
    return-void
.end method

.method public setVisitorsEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "visitorsEmail"

    .prologue
    .line 86
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->visitorsEmail:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setVisitorsName(Ljava/lang/String;)V
    .locals 0
    .parameter "visitorsName"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;->visitorsName:Ljava/lang/String;

    .line 91
    return-void
.end method
