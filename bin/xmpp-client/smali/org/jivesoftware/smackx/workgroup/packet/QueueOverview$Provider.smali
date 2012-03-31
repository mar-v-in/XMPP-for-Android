.class public Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview$Provider;
.super Ljava/lang/Object;
.source "QueueOverview.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 38
    .local v1, eventType:I
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;-><init>()V

    .line 39
    .local v2, queueOverview:Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 40
    const-string v3, "yyyyMMdd\'T\'HH:mm:ss"

    .line 39
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 47
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 48
    sget-object v3, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->ELEMENT_NAME:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 74
    return-object v2

    .line 49
    :cond_0
    const-string v3, "count"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->setUserCount(I)V

    .line 63
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 52
    :cond_2
    const-string v3, "time"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->setAverageWaitTime(I)V

    goto :goto_1

    .line 55
    :cond_3
    const-string v3, "oldest"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->setOldestEntry(Ljava/util/Date;)V

    goto :goto_1

    .line 58
    :cond_4
    const-string v3, "status"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->setStatus(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V

    goto :goto_1
.end method
