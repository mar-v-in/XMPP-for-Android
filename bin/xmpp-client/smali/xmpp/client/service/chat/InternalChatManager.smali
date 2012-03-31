.class public Lxmpp/client/service/chat/InternalChatManager;
.super Ljava/lang/Object;
.source "InternalChatManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ChatManagerListener;
.implements Lxmpp/client/service/chat/ChatCodes;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lxmpp/client/service/chat/Chat;",
            ">;"
        }
    .end annotation
.end field

.field private final mChatListener:Lxmpp/client/service/chat/ChatListener;

.field private mChatManager:Lorg/jivesoftware/smack/ChatManager;

.field private final mConnection:Lorg/jivesoftware/smack/Connection;

.field private mUserService:Lxmpp/client/service/user/UserService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lxmpp/client/service/chat/InternalChatManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/chat/InternalChatManager;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Lxmpp/client/service/user/UserService;Lxmpp/client/service/chat/ChatListener;)V
    .locals 1
    .parameter "connection"
    .parameter "userService"
    .parameter "listener"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatListener:Lxmpp/client/service/chat/ChatListener;

    .line 32
    iput-object p2, p0, Lxmpp/client/service/chat/InternalChatManager;->mUserService:Lxmpp/client/service/user/UserService;

    .line 33
    iput-object p1, p0, Lxmpp/client/service/chat/InternalChatManager;->mConnection:Lorg/jivesoftware/smack/Connection;

    .line 34
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatManager:Lorg/jivesoftware/smack/ChatManager;

    .line 35
    iget-object v0, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatManager:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/ChatManager;->addChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatList:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public chatCreated(Lorg/jivesoftware/smack/Chat;Z)V
    .locals 2
    .parameter "smackChat"
    .parameter "createdLocally"

    .prologue
    .line 43
    if-eqz p2, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lxmpp/client/service/chat/InternalChatManager;->getChat(Lorg/jivesoftware/smack/Chat;)Lxmpp/client/service/chat/Chat;

    move-result-object v0

    .line 47
    .local v0, chat:Lxmpp/client/service/chat/Chat;
    iget-object v1, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatListener:Lxmpp/client/service/chat/ChatListener;

    invoke-interface {v1, v0, p2}, Lxmpp/client/service/chat/ChatListener;->chatCreated(Lxmpp/client/service/chat/Chat;Z)V

    goto :goto_0
.end method

.method public chatStateChanged(Lxmpp/client/service/chat/Chat;)V
    .locals 1
    .parameter "chat"

    .prologue
    .line 51
    iget-object v0, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatListener:Lxmpp/client/service/chat/ChatListener;

    invoke-interface {v0, p1}, Lxmpp/client/service/chat/ChatListener;->chatStateChanged(Lxmpp/client/service/chat/Chat;)V

    .line 52
    return-void
.end method

.method public chatUpdated(Lxmpp/client/service/chat/Chat;)V
    .locals 1
    .parameter "chat"

    .prologue
    .line 55
    iget-object v0, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatListener:Lxmpp/client/service/chat/ChatListener;

    invoke-interface {v0, p1}, Lxmpp/client/service/chat/ChatListener;->chatUpdated(Lxmpp/client/service/chat/Chat;)V

    .line 56
    return-void
.end method

.method public createChat(Ljava/lang/String;I)Lxmpp/client/service/chat/Chat;
    .locals 4
    .parameter "id"
    .parameter "chatType"

    .prologue
    .line 59
    packed-switch p2, :pswitch_data_0

    .line 71
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 61
    :pswitch_0
    new-instance v1, Lxmpp/client/service/chat/single/SingleUserChat;

    .line 62
    iget-object v2, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatManager:Lorg/jivesoftware/smack/ChatManager;

    iget-object v3, p0, Lxmpp/client/service/chat/InternalChatManager;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v3}, Lxmpp/client/service/user/UserService;->getUserMe()Lxmpp/client/service/user/User;

    move-result-object v3

    .line 61
    invoke-direct {v1, v2, p1, p0, v3}, Lxmpp/client/service/chat/single/SingleUserChat;-><init>(Lorg/jivesoftware/smack/ChatManager;Ljava/lang/String;Lxmpp/client/service/chat/InternalChatManager;Lxmpp/client/service/user/User;)V

    .line 63
    .local v1, singleUserChat:Lxmpp/client/service/chat/single/SingleUserChat;
    invoke-virtual {p0, v1}, Lxmpp/client/service/chat/InternalChatManager;->insertEntry(Lxmpp/client/service/chat/Chat;)Lxmpp/client/service/chat/Chat;

    goto :goto_0

    .line 66
    .end local v1           #singleUserChat:Lxmpp/client/service/chat/single/SingleUserChat;
    :pswitch_1
    new-instance v0, Lxmpp/client/service/chat/multi/MultiUserChat;

    iget-object v2, p0, Lxmpp/client/service/chat/InternalChatManager;->mConnection:Lorg/jivesoftware/smack/Connection;

    .line 67
    iget-object v3, p0, Lxmpp/client/service/chat/InternalChatManager;->mUserService:Lxmpp/client/service/user/UserService;

    .line 66
    invoke-direct {v0, v2, p1, p0, v3}, Lxmpp/client/service/chat/multi/MultiUserChat;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lxmpp/client/service/chat/InternalChatManager;Lxmpp/client/service/user/UserService;)V

    .line 68
    .local v0, multiUserChat:Lxmpp/client/service/chat/multi/MultiUserChat;
    invoke-virtual {p0, v0}, Lxmpp/client/service/chat/InternalChatManager;->insertEntry(Lxmpp/client/service/chat/Chat;)Lxmpp/client/service/chat/Chat;

    move-object v1, v0

    .line 69
    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v1, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatManager:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v1, p0}, Lorg/jivesoftware/smack/ChatManager;->removeChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V

    .line 76
    iput-object v3, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatManager:Lorg/jivesoftware/smack/ChatManager;

    .line 77
    iget-object v1, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v1, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    iput-object v3, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatList:Ljava/util/ArrayList;

    .line 82
    iput-object v3, p0, Lxmpp/client/service/chat/InternalChatManager;->mUserService:Lxmpp/client/service/user/UserService;

    .line 83
    return-void

    .line 77
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/chat/Chat;

    .line 78
    .local v0, chat:Lxmpp/client/service/chat/Chat;
    invoke-virtual {v0}, Lxmpp/client/service/chat/Chat;->close()V

    goto :goto_0
.end method

.method public getChat(Lorg/jivesoftware/smack/Chat;)Lxmpp/client/service/chat/Chat;
    .locals 5
    .parameter "smackChat"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, c:Lxmpp/client/service/chat/Chat;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, chats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lxmpp/client/service/chat/Chat;>;"
    iget-object v3, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 100
    if-eqz v0, :cond_4

    .line 103
    .end local v0           #c:Lxmpp/client/service/chat/Chat;
    :goto_2
    return-object v0

    .line 88
    .restart local v0       #c:Lxmpp/client/service/chat/Chat;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/chat/Chat;

    .line 89
    .local v1, chat:Lxmpp/client/service/chat/Chat;
    instance-of v3, v1, Lxmpp/client/service/chat/single/SingleUserChat;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 90
    check-cast v3, Lxmpp/client/service/chat/single/SingleUserChat;

    invoke-virtual {v3, p1}, Lxmpp/client/service/chat/single/SingleUserChat;->contains(Lorg/jivesoftware/smack/Chat;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 92
    check-cast v3, Lxmpp/client/service/chat/single/SingleUserChat;

    invoke-virtual {v3, p1}, Lxmpp/client/service/chat/single/SingleUserChat;->nearly(Lorg/jivesoftware/smack/Chat;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    .end local v1           #chat:Lxmpp/client/service/chat/Chat;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/chat/Chat;

    .line 98
    .restart local v1       #chat:Lxmpp/client/service/chat/Chat;
    iget-object v4, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    .end local v1           #chat:Lxmpp/client/service/chat/Chat;
    :cond_4
    invoke-virtual {p0, p1}, Lxmpp/client/service/chat/InternalChatManager;->insertEntry(Lorg/jivesoftware/smack/Chat;)Lxmpp/client/service/chat/Chat;

    move-result-object v0

    goto :goto_2
.end method

.method public insertEntry(Lorg/jivesoftware/smack/Chat;)Lxmpp/client/service/chat/Chat;
    .locals 2
    .parameter "smackChat"

    .prologue
    .line 112
    new-instance v0, Lxmpp/client/service/chat/single/SingleUserChat;

    .line 113
    iget-object v1, p0, Lxmpp/client/service/chat/InternalChatManager;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v1}, Lxmpp/client/service/user/UserService;->getUserMe()Lxmpp/client/service/user/User;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lxmpp/client/service/chat/single/SingleUserChat;-><init>(Lorg/jivesoftware/smack/Chat;Lxmpp/client/service/chat/InternalChatManager;Lxmpp/client/service/user/User;)V

    .line 112
    invoke-virtual {p0, v0}, Lxmpp/client/service/chat/InternalChatManager;->insertEntry(Lxmpp/client/service/chat/Chat;)Lxmpp/client/service/chat/Chat;

    move-result-object v0

    return-object v0
.end method

.method public insertEntry(Lxmpp/client/service/chat/Chat;)Lxmpp/client/service/chat/Chat;
    .locals 1
    .parameter "chat"

    .prologue
    .line 107
    iget-object v0, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-object p1
.end method

.method public processMessage(Lxmpp/client/service/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 8
    .parameter "chat"
    .parameter "smackMessage"

    .prologue
    const/4 v3, 0x0

    .line 118
    :try_start_0
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, user:Lxmpp/client/service/user/User;
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v4, v5, :cond_3

    .line 121
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    iget-object v5, p0, Lxmpp/client/service/chat/InternalChatManager;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v5}, Lxmpp/client/service/user/UserService;->getUserMe()Lxmpp/client/service/user/User;

    move-result-object v5

    invoke-virtual {v5}, Lxmpp/client/service/user/User;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lxmpp/client/service/chat/InternalChatManager;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v4}, Lxmpp/client/service/user/UserService;->getUserMe()Lxmpp/client/service/user/User;

    move-result-object v2

    .line 139
    :goto_0
    new-instance v1, Lxmpp/client/service/chat/ChatMessage;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 140
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v6, v7, :cond_0

    const/4 v3, 0x1

    .line 139
    :cond_0
    invoke-direct {v1, v4, v2, v5, v3}, Lxmpp/client/service/chat/ChatMessage;-><init>(Ljava/util/Date;Lxmpp/client/service/user/User;Ljava/lang/String;Z)V

    .line 142
    .local v1, message:Lxmpp/client/service/chat/ChatMessage;
    iget-object v3, p0, Lxmpp/client/service/chat/InternalChatManager;->mChatListener:Lxmpp/client/service/chat/ChatListener;

    invoke-interface {v3, p1, v1}, Lxmpp/client/service/chat/ChatListener;->processMessage(Lxmpp/client/service/chat/Chat;Lxmpp/client/service/chat/ChatMessage;)V

    .line 148
    .end local v1           #message:Lxmpp/client/service/chat/ChatMessage;
    .end local v2           #user:Lxmpp/client/service/user/User;
    :cond_1
    :goto_1
    return-void

    .line 126
    .restart local v2       #user:Lxmpp/client/service/user/User;
    :cond_2
    new-instance v2, Lxmpp/client/service/user/User;

    .end local v2           #user:Lxmpp/client/service/user/User;
    invoke-direct {v2}, Lxmpp/client/service/user/User;-><init>()V

    .line 128
    .restart local v2       #user:Lxmpp/client/service/user/User;
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lxmpp/client/service/user/User;->setUserName(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v2, v4}, Lxmpp/client/service/user/User;->setUserLogin(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v2, v4}, Lxmpp/client/service/user/User;->setRessource(Ljava/lang/String;)V

    .line 133
    new-instance v4, Lxmpp/client/service/user/UserState;

    .line 134
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lxmpp/client/service/user/UserState;-><init>(ILjava/lang/String;)V

    .line 133
    invoke-virtual {v2, v4}, Lxmpp/client/service/user/User;->setUserState(Lxmpp/client/service/user/UserState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v2           #user:Lxmpp/client/service/user/User;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lxmpp/client/service/chat/InternalChatManager;->TAG:Ljava/lang/String;

    const-string v4, "processMessage"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 137
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #user:Lxmpp/client/service/user/User;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lxmpp/client/service/chat/InternalChatManager;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method
