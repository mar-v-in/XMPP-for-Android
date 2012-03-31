.class public Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails$Provider;
.super Ljava/lang/Object;
.source "QueueDetails.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 11
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 48
    const-string v8, "yyyyMMdd\'T\'HH:mm:ss"

    .line 47
    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;-><init>(Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;)V

    .line 51
    .local v4, queueDetails:Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 52
    .local v1, eventType:I
    :cond_0
    if-eq v1, v10, :cond_1

    .line 53
    const-string v8, "notify-queue-details"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 52
    if-nez v8, :cond_2

    .line 96
    :cond_1
    return-object v4

    .line 54
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 55
    :goto_0
    const/4 v8, 0x2

    if-ne v1, v8, :cond_0

    .line 56
    const-string v8, "user"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 55
    if-eqz v8, :cond_0

    .line 57
    const/4 v6, 0x0

    .line 58
    .local v6, uid:Ljava/lang/String;
    const/4 v3, -0x1

    .line 59
    .local v3, position:I
    const/4 v5, -0x1

    .line 60
    .local v5, time:I
    const/4 v2, 0x0

    .line 62
    .local v2, joinTime:Ljava/util/Date;
    const-string v8, ""

    const-string v9, "jid"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 69
    :goto_1
    if-ne v1, v10, :cond_3

    .line 70
    const-string v8, "user"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 69
    if-eqz v8, :cond_3

    .line 90
    new-instance v8, Lorg/jivesoftware/smackx/workgroup/QueueUser;

    .line 91
    invoke-direct {v8, v6, v3, v5, v2}, Lorg/jivesoftware/smackx/workgroup/QueueUser;-><init>(Ljava/lang/String;IILjava/util/Date;)V

    .line 90
    #calls: Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->addUser(Lorg/jivesoftware/smackx/workgroup/QueueUser;)V
    invoke-static {v4, v8}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->access$1(Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;Lorg/jivesoftware/smackx/workgroup/QueueUser;)V

    .line 93
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 71
    :cond_3
    const-string v8, "position"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 83
    :cond_4
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 73
    :cond_5
    const-string v8, "time"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 75
    :cond_6
    const-string v8, "join-time"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    goto :goto_2

    .line 77
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "waitTime"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 78
    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 80
    .local v7, wait:Ljava/util/Date;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2
.end method
