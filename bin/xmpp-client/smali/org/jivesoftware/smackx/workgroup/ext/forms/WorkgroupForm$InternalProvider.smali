.class public Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm$InternalProvider;
.super Ljava/lang/Object;
.source "WorkgroupForm.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;-><init>()V

    .line 44
    .local v0, answer:Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;
    const/4 v1, 0x0

    .line 45
    .local v1, done:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 58
    return-object v0

    .line 46
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 47
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-static {v3, v4, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 51
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "workgroup-form"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const/4 v1, 0x1

    goto :goto_0
.end method
