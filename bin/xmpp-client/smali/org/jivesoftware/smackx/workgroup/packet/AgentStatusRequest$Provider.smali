.class public Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Provider;
.super Ljava/lang/Object;
.source "AgentStatusRequest.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseAgent(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, done:Z
    const-string v5, ""

    const-string v6, "jid"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, jid:Ljava/lang/String;
    const-string v5, ""

    const-string v6, "type"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, type:Ljava/lang/String;
    const/4 v3, 0x0

    .line 75
    .local v3, name:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 85
    new-instance v5, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;

    invoke-direct {v5, v2, v4, v3}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 76
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 77
    .local v1, eventType:I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 78
    const-string v5, "name"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 80
    :cond_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 81
    const-string v5, "agent"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const/4 v0, 0x1

    goto :goto_0
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

    .line 90
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;-><init>()V

    .line 92
    .local v2, statusRequest:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 93
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 94
    const-string v4, "Parser not in proper position, or bad XML."

    .line 93
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 98
    .local v0, done:Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 108
    return-object v2

    .line 99
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 100
    .local v1, eventType:I
    if-ne v1, v5, :cond_3

    .line 101
    const-string v3, "agent"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    #getter for: Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->agents:Ljava/util/Set;
    invoke-static {v2}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->access$0(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Provider;->parseAgent(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 104
    const-string v3, "agent-status-request"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    const/4 v0, 0x1

    goto :goto_0
.end method
