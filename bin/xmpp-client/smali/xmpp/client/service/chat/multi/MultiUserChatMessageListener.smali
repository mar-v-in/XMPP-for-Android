.class public Lxmpp/client/service/chat/multi/MultiUserChatMessageListener;
.super Ljava/lang/Object;
.source "MultiUserChatMessageListener.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# instance fields
.field mChat:Lxmpp/client/service/chat/multi/MultiUserChat;


# direct methods
.method public constructor <init>(Lxmpp/client/service/chat/multi/MultiUserChat;)V
    .locals 0
    .parameter "multiUserChat"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lxmpp/client/service/chat/multi/MultiUserChatMessageListener;->mChat:Lxmpp/client/service/chat/multi/MultiUserChat;

    .line 13
    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 17
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 18
    .local v0, msg:Lorg/jivesoftware/smack/packet/Message;
    iget-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChatMessageListener;->mChat:Lxmpp/client/service/chat/multi/MultiUserChat;

    iget-object v2, p0, Lxmpp/client/service/chat/multi/MultiUserChatMessageListener;->mChat:Lxmpp/client/service/chat/multi/MultiUserChat;

    invoke-virtual {v1, v2, v0}, Lxmpp/client/service/chat/multi/MultiUserChat;->processMessage(Lxmpp/client/service/chat/multi/MultiUserChat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 19
    return-void
.end method
