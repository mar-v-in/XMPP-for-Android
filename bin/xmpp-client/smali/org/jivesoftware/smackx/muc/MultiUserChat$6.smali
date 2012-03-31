.class Lorg/jivesoftware/smackx/muc/MultiUserChat$6;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$6;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 2372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 2376
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$6;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->getMUCUserExtension(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;
    invoke-static {v1, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$6(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;

    move-result-object v0

    .line 2379
    .local v0, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDecline()Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2380
    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    .end local p1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->error:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v1, v2, :cond_0

    .line 2382
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$6;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDecline()Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    move-result-object v2

    .line 2383
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDecline()Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 2382
    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireInvitationRejectionListeners(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$11(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    :cond_0
    return-void
.end method
