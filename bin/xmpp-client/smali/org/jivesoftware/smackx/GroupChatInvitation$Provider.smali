.class public Lorg/jivesoftware/smackx/GroupChatInvitation$Provider;
.super Ljava/lang/Object;
.source "GroupChatInvitation.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/GroupChatInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    const-string v1, ""

    const-string v2, "jid"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, roomAddress:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 65
    new-instance v1, Lorg/jivesoftware/smackx/GroupChatInvitation;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/GroupChatInvitation;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
