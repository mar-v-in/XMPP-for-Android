.class public Lorg/jivesoftware/smackx/packet/LastActivity$Provider;
.super Ljava/lang/Object;
.source "LastActivity.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/LastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 58
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 59
    const-string v7, "Parser not in proper position, or bad XML."

    .line 58
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 62
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/packet/LastActivity;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/LastActivity;-><init>()V

    .line 64
    .local v1, lastActivity:Lorg/jivesoftware/smackx/packet/LastActivity;
    :try_start_0
    const-string v6, ""

    const-string v7, "seconds"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, seconds:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, message:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 67
    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    .line 68
    .local v4, xmlSeconds:J
    long-to-int v6, v4

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lorg/jivesoftware/smackx/packet/LastActivity;->setLastActivity(J)V

    .line 71
    .end local v4           #xmlSeconds:J
    :cond_1
    if-eqz v2, :cond_2

    .line 72
    #calls: Lorg/jivesoftware/smackx/packet/LastActivity;->setMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/jivesoftware/smackx/packet/LastActivity;->access$0(Lorg/jivesoftware/smackx/packet/LastActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #seconds:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
