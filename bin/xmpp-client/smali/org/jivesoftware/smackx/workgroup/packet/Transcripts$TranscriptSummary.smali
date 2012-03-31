.class public Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;
.super Ljava/lang/Object;
.source "Transcripts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranscriptSummary"
.end annotation


# instance fields
.field private final agentDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$AgentDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final joinTime:Ljava/util/Date;

.field private final leftTime:Ljava/util/Date;

.field private final sessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;)V
    .locals 0
    .parameter "sessionID"
    .parameter "joinTime"
    .parameter "leftTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$AgentDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p4, agentDetails:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$AgentDetail;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->sessionID:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->joinTime:Ljava/util/Date;

    .line 123
    iput-object p3, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->leftTime:Ljava/util/Date;

    .line 124
    iput-object p4, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->agentDetails:Ljava/util/List;

    .line 125
    return-void
.end method


# virtual methods
.method public getAgentDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$AgentDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->agentDetails:Ljava/util/List;

    return-object v0
.end method

.method public getJoinTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->joinTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLeftTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->leftTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string v2, "<transcript sessionID=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->sessionID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->joinTime:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "<joinTime>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->access$0()Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->joinTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    const-string v3, "</joinTime>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->leftTime:Ljava/util/Date;

    if-eqz v2, :cond_1

    .line 180
    const-string v2, "<leftTime>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->access$0()Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->leftTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 181
    const-string v3, "</leftTime>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_1
    const-string v2, "<agents>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->agentDetails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 187
    const-string v2, "</agents></transcript>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 184
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$AgentDetail;

    .line 185
    .local v0, agentDetail:Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$AgentDetail;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$AgentDetail;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
