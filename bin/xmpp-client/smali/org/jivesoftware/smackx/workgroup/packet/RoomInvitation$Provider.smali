.class public Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Provider;
.super Ljava/lang/Object;
.source "RoomInvitation.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
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
    .line 39
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;-><init>(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;)V

    .line 41
    .local v2, invitation:Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;
    const-string v3, ""

    const-string v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;

    move-result-object v3

    .line 40
    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->type:Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;
    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$1(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;)V

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 65
    return-object v2

    .line 45
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, elementName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 48
    const-string v3, "session"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    const-string v3, ""

    .line 50
    const-string v4, "id"

    .line 49
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->sessionID:Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$2(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v3, "invitee"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->invitee:Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$3(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v3, "inviter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->inviter:Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$4(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_4
    const-string v3, "reason"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->reason:Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$5(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_5
    const-string v3, "room"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->room:Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$6(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 61
    const-string v3, "invite"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    const/4 v0, 0x1

    goto :goto_0
.end method
