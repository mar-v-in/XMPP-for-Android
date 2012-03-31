.class public Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;
.super Ljava/lang/Object;
.source "AgentStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatInfo"
.end annotation


# instance fields
.field private final date:Ljava/util/Date;

.field private final email:Ljava/lang/String;

.field private final question:Ljava/lang/String;

.field private final sessionID:Ljava/lang/String;

.field private final userID:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "sessionID"
    .parameter "userID"
    .parameter "date"
    .parameter "email"
    .parameter "username"
    .parameter "question"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->sessionID:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->userID:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->date:Ljava/util/Date;

    .line 59
    iput-object p4, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->email:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->username:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->question:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<chat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->sessionID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 130
    const-string v1, " sessionID=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->sessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->userID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 133
    const-string v1, " userID=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->userID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->date:Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 136
    const-string v1, " startTime=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->access$0()Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->email:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 140
    const-string v1, " email=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->username:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 143
    const-string v1, " username=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_4
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->question:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 146
    const-string v1, " question=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->question:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_5
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
