.class Lorg/jivesoftware/smack/ChatManager$2;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/ChatManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/ChatManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/ChatManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/ChatManager$2;->this$0:Lorg/jivesoftware/smack/ChatManager;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 117
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/Message;

    .line 119
    .local v1, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 120
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager$2;->this$0:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    #calls: Lorg/jivesoftware/smack/ChatManager;->getUserChat(Ljava/lang/String;)Lorg/jivesoftware/smack/Chat;
    invoke-static {v2, v3}, Lorg/jivesoftware/smack/ChatManager;->access$0(Lorg/jivesoftware/smack/ChatManager;Ljava/lang/String;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    .line 130
    .local v0, chat:Lorg/jivesoftware/smack/Chat;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 131
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager$2;->this$0:Lorg/jivesoftware/smack/ChatManager;

    #calls: Lorg/jivesoftware/smack/ChatManager;->createChat(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/Chat;
    invoke-static {v2, v1}, Lorg/jivesoftware/smack/ChatManager;->access$1(Lorg/jivesoftware/smack/ChatManager;Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    .line 133
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager$2;->this$0:Lorg/jivesoftware/smack/ChatManager;

    #calls: Lorg/jivesoftware/smack/ChatManager;->deliverMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    invoke-static {v2, v0, v1}, Lorg/jivesoftware/smack/ChatManager;->access$2(Lorg/jivesoftware/smack/ChatManager;Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 134
    return-void

    .line 122
    .end local v0           #chat:Lorg/jivesoftware/smack/Chat;
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager$2;->this$0:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/ChatManager;->getThreadChat(Ljava/lang/String;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    .line 123
    .restart local v0       #chat:Lorg/jivesoftware/smack/Chat;
    if-nez v0, :cond_0

    .line 126
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager$2;->this$0:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    #calls: Lorg/jivesoftware/smack/ChatManager;->getUserChat(Ljava/lang/String;)Lorg/jivesoftware/smack/Chat;
    invoke-static {v2, v3}, Lorg/jivesoftware/smack/ChatManager;->access$0(Lorg/jivesoftware/smack/ChatManager;Ljava/lang/String;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    goto :goto_0
.end method
