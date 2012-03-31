.class public Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionProvider;
.super Ljava/lang/Object;
.source "SubscriptionProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
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

    const/4 v9, 0x2

    const/4 v4, 0x0

    .line 33
    const-string v0, "jid"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, jid:Ljava/lang/String;
    const-string v0, "node"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, nodeId:Ljava/lang/String;
    const-string v0, "subid"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, subId:Ljava/lang/String;
    const-string v0, "subscription"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, state:Ljava/lang/String;
    const/4 v5, 0x0

    .line 39
    .local v5, isRequired:Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 41
    .local v7, tag:I
    if-ne v7, v9, :cond_1

    .line 42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "subscribe-options"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 45
    if-ne v7, v9, :cond_0

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "required"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v5, 0x1

    .line 50
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v10, :cond_1

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "subscribe-options"

    if-ne v0, v8, :cond_0

    .line 55
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 58
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Subscription;

    if-nez v6, :cond_3

    :goto_1
    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/pubsub/Subscription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Subscription$State;Z)V

    return-object v0

    .line 56
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {v6}, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    move-result-object v4

    goto :goto_1
.end method
