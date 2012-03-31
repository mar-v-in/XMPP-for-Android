.class Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor$1;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 7
    .parameter "packet"

    .prologue
    .line 209
    const-string v0, "x"

    .line 210
    const-string v1, "http://jabber.org/protocol/muc#user"

    .line 209
    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 212
    .local v6, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 213
    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->error:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 218
    check-cast v5, Lorg/jivesoftware/smack/packet/Message;

    .line 215
    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->fireInvitationListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V
    invoke-static/range {v0 .. v5}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->access$0(Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V

    .line 220
    :cond_0
    return-void
.end method
