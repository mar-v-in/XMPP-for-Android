.class public Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory$InternalProvider;
.super Ljava/lang/Object;
.source "AgentChatHistory.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseChatSetting(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;
    .locals 14
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v9, 0x0

    .line 45
    .local v9, done:Z
    const/4 v1, 0x0

    .line 46
    .local v1, date:Ljava/util/Date;
    const-wide/16 v2, 0x0

    .line 47
    .local v2, duration:J
    const/4 v4, 0x0

    .line 48
    .local v4, visitorsName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 49
    .local v5, visitorsEmail:Ljava/lang/String;
    const/4 v6, 0x0

    .line 50
    .local v6, sessionID:Ljava/lang/String;
    const/4 v7, 0x0

    .line 52
    .local v7, question:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 79
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;-><init>(Ljava/util/Date;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 53
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 54
    .local v10, eventType:I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_2

    .line 55
    const-string v0, "date"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, dateStr:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 58
    .local v11, l:J
    new-instance v1, Ljava/util/Date;

    .end local v1           #date:Ljava/util/Date;
    invoke-direct {v1, v11, v12}, Ljava/util/Date;-><init>(J)V

    .restart local v1       #date:Ljava/util/Date;
    goto :goto_0

    .line 59
    .end local v8           #dateStr:Ljava/lang/String;
    .end local v11           #l:J
    :cond_2
    const/4 v0, 0x2

    if-ne v10, v0, :cond_3

    .line 60
    const-string v0, "duration"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 62
    :cond_3
    const/4 v0, 0x2

    if-ne v10, v0, :cond_4

    .line 63
    const-string v0, "visitorsName"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 65
    :cond_4
    const/4 v0, 0x2

    if-ne v10, v0, :cond_5

    .line 66
    const-string v0, "visitorsEmail"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 68
    :cond_5
    const/4 v0, 0x2

    if-ne v10, v0, :cond_6

    .line 69
    const-string v0, "sessionID"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 71
    :cond_6
    const/4 v0, 0x2

    if-ne v10, v0, :cond_7

    .line 72
    const-string v0, "question"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 74
    :cond_7
    const/4 v0, 0x3

    if-ne v10, v0, :cond_0

    .line 75
    const-string v0, "chat-session"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v9, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 86
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 87
    const-string v4, "Parser not in proper position, or bad XML."

    .line 86
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;-><init>()V

    .line 92
    .local v0, agentChatHistory:Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
    const/4 v1, 0x0

    .line 93
    .local v1, done:Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 104
    return-object v0

    .line 94
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 95
    .local v2, eventType:I
    if-ne v2, v5, :cond_3

    .line 96
    const-string v3, "chat-session"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory$InternalProvider;->parseChatSetting(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->addChatSession(Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;)V

    goto :goto_0

    .line 99
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 100
    const-string v3, "chat-sessions"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    const/4 v1, 0x1

    goto :goto_0
.end method
