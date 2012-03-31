.class public Lorg/jivesoftware/smackx/packet/OfflineMessageInfo$Provider;
.super Ljava/lang/Object;
.source "OfflineMessageInfo.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/OfflineMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
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
    .line 60
    new-instance v2, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo;-><init>()V

    .line 61
    .local v2, info:Lorg/jivesoftware/smackx/packet/OfflineMessageInfo;
    const/4 v0, 0x0

    .line 62
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 75
    return-object v2

    .line 63
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 64
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 65
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const-string v3, ""

    const-string v4, "node"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo;->setNode(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "offline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const/4 v0, 0x1

    goto :goto_0
.end method
