.class public Lxmpp/client/service/chat/single/SingleUserChat;
.super Lxmpp/client/service/chat/Chat;
.source "SingleUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/MessageListener;
.implements Lorg/jivesoftware/smackx/ChatStateListener;


# static fields
.field private static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$ChatState:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mChat:Lorg/jivesoftware/smack/Chat;

.field mInternalManager:Lxmpp/client/service/chat/InternalChatManager;

.field mUser:Lxmpp/client/service/user/User;


# direct methods
.method static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$ChatState()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lxmpp/client/service/chat/single/SingleUserChat;->$SWITCH_TABLE$org$jivesoftware$smackx$ChatState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/ChatState;->values()[Lorg/jivesoftware/smackx/ChatState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/ChatState;->active:Lorg/jivesoftware/smackx/ChatState;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/ChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lorg/jivesoftware/smackx/ChatState;->composing:Lorg/jivesoftware/smackx/ChatState;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/ChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lorg/jivesoftware/smackx/ChatState;->gone:Lorg/jivesoftware/smackx/ChatState;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/ChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lorg/jivesoftware/smackx/ChatState;->inactive:Lorg/jivesoftware/smackx/ChatState;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/ChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lorg/jivesoftware/smackx/ChatState;->paused:Lorg/jivesoftware/smackx/ChatState;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/ChatState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lxmpp/client/service/chat/single/SingleUserChat;->$SWITCH_TABLE$org$jivesoftware$smackx$ChatState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lxmpp/client/service/chat/single/SingleUserChat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/chat/single/SingleUserChat;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Chat;Lxmpp/client/service/chat/InternalChatManager;Lxmpp/client/service/user/User;)V
    .locals 1
    .parameter "smackChat"
    .parameter "internalManager"
    .parameter "user"

    .prologue
    .line 28
    invoke-direct {p0}, Lxmpp/client/service/chat/Chat;-><init>()V

    .line 30
    iput-object p1, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    .line 31
    iput-object p2, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mInternalManager:Lxmpp/client/service/chat/InternalChatManager;

    .line 32
    iput-object p3, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mUser:Lxmpp/client/service/user/User;

    .line 33
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Chat;->addMessageListener(Lorg/jivesoftware/smack/MessageListener;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/ChatManager;Ljava/lang/String;Lxmpp/client/service/chat/InternalChatManager;Lxmpp/client/service/user/User;)V
    .locals 1
    .parameter "chatManager"
    .parameter "jid"
    .parameter "internalManager"
    .parameter "user"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lxmpp/client/service/chat/single/SingleUserChat;-><init>(Lorg/jivesoftware/smack/Chat;Lxmpp/client/service/chat/InternalChatManager;Lxmpp/client/service/user/User;)V

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Chat;->removeMessageListener(Lorg/jivesoftware/smack/MessageListener;)V

    .line 39
    return-void
.end method

.method public contains(Lorg/jivesoftware/smack/Chat;)Z
    .locals 1
    .parameter "chat"

    .prologue
    .line 42
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Chat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lxmpp/client/service/chat/single/SingleUserChat;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 49
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {p1, v0}, Lxmpp/client/service/chat/single/SingleUserChat;->contains(Lorg/jivesoftware/smack/Chat;)Z

    move-result v0

    return v0
.end method

.method public getChatType()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Chat;->getParticipant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalChat()Lorg/jivesoftware/smack/Chat;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    return-object v0
.end method

.method public getThreadID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Chat;->getThreadID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nearly(Lorg/jivesoftware/smack/Chat;)Z
    .locals 2
    .parameter "chat"

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Chat;->getParticipant()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Chat;->getParticipant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nearly(Lxmpp/client/service/chat/single/SingleUserChat;)Z
    .locals 1
    .parameter "chat"

    .prologue
    .line 79
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {p1, v0}, Lxmpp/client/service/chat/single/SingleUserChat;->nearly(Lorg/jivesoftware/smack/Chat;)Z

    move-result v0

    return v0
.end method

.method public processMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .parameter "smackChat"
    .parameter "smackMessage"

    .prologue
    .line 85
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mInternalManager:Lxmpp/client/service/chat/InternalChatManager;

    invoke-virtual {v0, p0, p2}, Lxmpp/client/service/chat/InternalChatManager;->processMessage(Lxmpp/client/service/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 86
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "participant"
    .parameter "text"

    .prologue
    .line 90
    invoke-virtual {p0}, Lxmpp/client/service/chat/single/SingleUserChat;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    :try_start_0
    iget-object v2, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mChat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v2, p2}, Lorg/jivesoftware/smack/Chat;->sendMessage(Ljava/lang/String;)V

    .line 93
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, msg:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mUser:Lxmpp/client/service/user/User;

    invoke-virtual {v2}, Lxmpp/client/service/user/User;->getFullUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mInternalManager:Lxmpp/client/service/chat/InternalChatManager;

    invoke-virtual {v2, p0, v1}, Lxmpp/client/service/chat/InternalChatManager;->processMessage(Lxmpp/client/service/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1           #msg:Lorg/jivesoftware/smack/packet/Message;
    :cond_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public stateChanged(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)V
    .locals 3
    .parameter "smackChat"
    .parameter "state"

    .prologue
    .line 106
    const/4 v0, -0x1

    .line 107
    .local v0, s:I
    invoke-static {}, Lxmpp/client/service/chat/single/SingleUserChat;->$SWITCH_TABLE$org$jivesoftware$smackx$ChatState()[I

    move-result-object v1

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/ChatState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 124
    :goto_0
    invoke-virtual {p0, v0}, Lxmpp/client/service/chat/single/SingleUserChat;->updateChatState(I)V

    .line 125
    iget-object v1, p0, Lxmpp/client/service/chat/single/SingleUserChat;->mInternalManager:Lxmpp/client/service/chat/InternalChatManager;

    invoke-virtual {v1, p0}, Lxmpp/client/service/chat/InternalChatManager;->chatStateChanged(Lxmpp/client/service/chat/Chat;)V

    .line 126
    return-void

    .line 109
    :pswitch_0
    const/4 v0, 0x2

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    const/4 v0, 0x4

    .line 113
    goto :goto_0

    .line 115
    :pswitch_2
    const/4 v0, 0x1

    .line 116
    goto :goto_0

    .line 118
    :pswitch_3
    const/4 v0, 0x0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
