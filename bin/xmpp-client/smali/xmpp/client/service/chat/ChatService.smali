.class public Lxmpp/client/service/chat/ChatService;
.super Ljava/lang/Object;
.source "ChatService.java"

# interfaces
.implements Lxmpp/client/service/chat/ChatListener;
.implements Lxmpp/client/service/chat/ChatCodes;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mChats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lxmpp/client/service/chat/Chat;",
            "Lxmpp/client/service/chat/ChatSession;",
            ">;"
        }
    .end annotation
.end field

.field mInternalChatManager:Lxmpp/client/service/chat/InternalChatManager;

.field mService:Lxmpp/client/service/Service;

.field mUserService:Lxmpp/client/service/user/UserService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lxmpp/client/service/chat/ChatService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/chat/ChatService;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Lxmpp/client/service/Service;Lxmpp/client/service/user/UserService;)V
    .locals 1
    .parameter "connection"
    .parameter "service"
    .parameter "userService"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lxmpp/client/service/chat/ChatService;->mService:Lxmpp/client/service/Service;

    .line 28
    new-instance v0, Lxmpp/client/service/chat/InternalChatManager;

    .line 29
    invoke-direct {v0, p1, p3, p0}, Lxmpp/client/service/chat/InternalChatManager;-><init>(Lorg/jivesoftware/smack/Connection;Lxmpp/client/service/user/UserService;Lxmpp/client/service/chat/ChatListener;)V

    .line 28
    iput-object v0, p0, Lxmpp/client/service/chat/ChatService;->mInternalChatManager:Lxmpp/client/service/chat/InternalChatManager;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    .line 31
    iput-object p3, p0, Lxmpp/client/service/chat/ChatService;->mUserService:Lxmpp/client/service/user/UserService;

    .line 32
    return-void
.end method

.method private putChatInMap(Lxmpp/client/service/chat/Chat;)Lxmpp/client/service/chat/ChatSession;
    .locals 1
    .parameter "chat"

    .prologue
    .line 122
    instance-of v0, p1, Lxmpp/client/service/chat/single/SingleUserChat;

    if-eqz v0, :cond_0

    .line 123
    check-cast p1, Lxmpp/client/service/chat/single/SingleUserChat;

    .end local p1
    invoke-direct {p0, p1}, Lxmpp/client/service/chat/ChatService;->putChatInMap(Lxmpp/client/service/chat/single/SingleUserChat;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 124
    .restart local p1
    :cond_0
    instance-of v0, p1, Lxmpp/client/service/chat/multi/MultiUserChat;

    if-eqz v0, :cond_1

    .line 125
    check-cast p1, Lxmpp/client/service/chat/multi/MultiUserChat;

    .end local p1
    invoke-direct {p0, p1}, Lxmpp/client/service/chat/ChatService;->putChatInMap(Lxmpp/client/service/chat/multi/MultiUserChat;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v0

    goto :goto_0

    .line 127
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putChatInMap(Lxmpp/client/service/chat/multi/MultiUserChat;)Lxmpp/client/service/chat/ChatSession;
    .locals 2
    .parameter "chat"

    .prologue
    .line 131
    new-instance v0, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    .line 132
    invoke-virtual {p1}, Lxmpp/client/service/chat/multi/MultiUserChat;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Lxmpp/client/service/chat/multi/MultiUserChatSession;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, session:Lxmpp/client/service/chat/ChatSession;
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-object v0
.end method

.method private putChatInMap(Lxmpp/client/service/chat/single/SingleUserChat;)Lxmpp/client/service/chat/ChatSession;
    .locals 4
    .parameter "chat"

    .prologue
    .line 138
    new-instance v0, Lxmpp/client/service/chat/single/SingleUserChatSession;

    .line 139
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {p1}, Lxmpp/client/service/chat/single/SingleUserChat;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lxmpp/client/service/chat/single/SingleUserChat;->getThreadID()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-direct {v0, v1, v2}, Lxmpp/client/service/chat/single/SingleUserChatSession;-><init>(Lxmpp/client/service/user/User;Ljava/lang/String;)V

    .line 141
    .local v0, session:Lxmpp/client/service/chat/ChatSession;
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object v0
.end method


# virtual methods
.method public chatCreated(Lxmpp/client/service/chat/Chat;Z)V
    .locals 0
    .parameter "chat"
    .parameter "createdLocally"

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 37
    invoke-direct {p0, p1}, Lxmpp/client/service/chat/ChatService;->putChatInMap(Lxmpp/client/service/chat/Chat;)Lxmpp/client/service/chat/ChatSession;

    .line 39
    :cond_0
    return-void
.end method

.method public chatStateChanged(Lxmpp/client/service/chat/Chat;)V
    .locals 0
    .parameter "chat"

    .prologue
    .line 45
    return-void
.end method

.method public chatUpdated(Lxmpp/client/service/chat/Chat;)V
    .locals 3
    .parameter "chat"

    .prologue
    .line 49
    .line 50
    invoke-virtual {p1}, Lxmpp/client/service/chat/Chat;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Lxmpp/client/service/chat/ChatService;->getChatSessionFromIdentifier(Ljava/lang/String;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v0

    .line 51
    .local v0, session:Lxmpp/client/service/chat/ChatSession;
    instance-of v1, p1, Lxmpp/client/service/chat/multi/MultiUserChat;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 52
    check-cast v1, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    invoke-virtual {p1}, Lxmpp/client/service/chat/Chat;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxmpp/client/service/chat/multi/MultiUserChatSession;->setSubject(Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mService:Lxmpp/client/service/Service;

    invoke-virtual {v1, v0}, Lxmpp/client/service/Service;->sendSessionUpdated(Lxmpp/client/service/chat/ChatSession;)V

    .line 55
    return-void
.end method

.method public closeChat(Lxmpp/client/service/chat/ChatSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lxmpp/client/service/chat/ChatService;->getChatFromSession(Lxmpp/client/service/chat/ChatSession;)Lxmpp/client/service/chat/Chat;

    move-result-object v0

    .line 59
    .local v0, chat:Lxmpp/client/service/chat/Chat;
    invoke-virtual {v0}, Lxmpp/client/service/chat/Chat;->close()V

    .line 60
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatSession;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatSession;->close()V

    .line 64
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    iput-object v1, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    .line 69
    iget-object v0, p0, Lxmpp/client/service/chat/ChatService;->mInternalChatManager:Lxmpp/client/service/chat/InternalChatManager;

    invoke-virtual {v0}, Lxmpp/client/service/chat/InternalChatManager;->destroy()V

    .line 70
    iput-object v1, p0, Lxmpp/client/service/chat/ChatService;->mUserService:Lxmpp/client/service/user/UserService;

    .line 71
    return-void
.end method

.method public getChatFromSession(Lxmpp/client/service/chat/ChatSession;)Lxmpp/client/service/chat/Chat;
    .locals 5
    .parameter "session"

    .prologue
    const/4 v2, 0x0

    .line 74
    if-nez p1, :cond_0

    .line 75
    sget-object v1, Lxmpp/client/service/chat/ChatService;->TAG:Ljava/lang/String;

    const-string v3, "getChatFromSession(null) returns null!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 88
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatSession;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 84
    sget-object v1, Lxmpp/client/service/chat/ChatService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Chat not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v2

    .line 88
    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/chat/Chat;

    .line 79
    .local v0, chat:Lxmpp/client/service/chat/Chat;
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v1, p1}, Lxmpp/client/service/chat/ChatSession;->equals(Lxmpp/client/service/chat/ChatSession;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 86
    .end local v0           #chat:Lxmpp/client/service/chat/Chat;
    :cond_3
    sget-object v1, Lxmpp/client/service/chat/ChatService;->TAG:Ljava/lang/String;

    const-string v3, "Could not found closed session!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getChatSessionFromIdentifier(Ljava/lang/String;)Lxmpp/client/service/chat/ChatSession;
    .locals 4
    .parameter "jid"

    .prologue
    .line 92
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    sget-object v1, Lxmpp/client/service/chat/ChatService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChatSession not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 93
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/chat/ChatSession;

    .line 94
    .local v0, session:Lxmpp/client/service/chat/ChatSession;
    invoke-virtual {v0}, Lxmpp/client/service/chat/ChatSession;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getRealChatSession(Lxmpp/client/service/chat/ChatSession;)Lxmpp/client/service/chat/ChatSession;
    .locals 4
    .parameter "session"

    .prologue
    .line 103
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    sget-object v1, Lxmpp/client/service/chat/ChatService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChatSession not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 103
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/chat/ChatSession;

    .line 104
    .local v0, session2:Lxmpp/client/service/chat/ChatSession;
    invoke-virtual {v0, p1}, Lxmpp/client/service/chat/ChatSession;->equals(Lxmpp/client/service/chat/ChatSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public processMessage(Lxmpp/client/service/chat/Chat;Lxmpp/client/service/chat/ChatMessage;)V
    .locals 2
    .parameter "chat"
    .parameter "message"

    .prologue
    .line 114
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mChats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/chat/ChatSession;

    .line 115
    .local v0, session:Lxmpp/client/service/chat/ChatSession;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p2}, Lxmpp/client/service/chat/ChatSession;->addMessage(Lxmpp/client/service/chat/ChatMessage;)V

    .line 117
    iget-object v1, p0, Lxmpp/client/service/chat/ChatService;->mService:Lxmpp/client/service/Service;

    invoke-virtual {v1, v0, p2}, Lxmpp/client/service/Service;->processMessage(Lxmpp/client/service/chat/ChatSession;Lxmpp/client/service/chat/ChatMessage;)V

    .line 119
    :cond_0
    return-void
.end method

.method public sendMessage(Lxmpp/client/service/chat/ChatSession;Ljava/lang/String;)V
    .locals 5
    .parameter "aSession"
    .parameter "text"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lxmpp/client/service/chat/ChatService;->getRealChatSession(Lxmpp/client/service/chat/ChatSession;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v2

    .line 147
    .local v2, session:Lxmpp/client/service/chat/ChatSession;
    invoke-virtual {p0, v2}, Lxmpp/client/service/chat/ChatService;->getChatFromSession(Lxmpp/client/service/chat/ChatSession;)Lxmpp/client/service/chat/Chat;

    move-result-object v0

    .line 149
    .local v0, chat:Lxmpp/client/service/chat/Chat;
    :try_start_0
    invoke-virtual {v0, p2}, Lxmpp/client/service/chat/Chat;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lxmpp/client/service/chat/ChatService;->TAG:Ljava/lang/String;

    const-string v4, "sendMessage"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startSession(Ljava/lang/String;)Lxmpp/client/service/chat/ChatSession;
    .locals 2
    .parameter "muc"

    .prologue
    .line 157
    iget-object v0, p0, Lxmpp/client/service/chat/ChatService;->mInternalChatManager:Lxmpp/client/service/chat/InternalChatManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lxmpp/client/service/chat/InternalChatManager;->createChat(Ljava/lang/String;I)Lxmpp/client/service/chat/Chat;

    move-result-object v0

    invoke-direct {p0, v0}, Lxmpp/client/service/chat/ChatService;->putChatInMap(Lxmpp/client/service/chat/Chat;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v0

    return-object v0
.end method

.method public startSession(Lxmpp/client/service/user/User;)Lxmpp/client/service/chat/ChatSession;
    .locals 3
    .parameter "user"

    .prologue
    .line 161
    iget-object v0, p0, Lxmpp/client/service/chat/ChatService;->mInternalChatManager:Lxmpp/client/service/chat/InternalChatManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getRessource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 161
    invoke-virtual {v0, v1, v2}, Lxmpp/client/service/chat/InternalChatManager;->createChat(Ljava/lang/String;I)Lxmpp/client/service/chat/Chat;

    move-result-object v0

    invoke-direct {p0, v0}, Lxmpp/client/service/chat/ChatService;->putChatInMap(Lxmpp/client/service/chat/Chat;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v0

    return-object v0
.end method

.method public updateMUCUser(Lxmpp/client/service/user/User;)V
    .locals 7
    .parameter "user"

    .prologue
    .line 166
    .line 167
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {p0, v3}, Lxmpp/client/service/chat/ChatService;->getChatSessionFromIdentifier(Ljava/lang/String;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v1

    .line 168
    .local v1, session:Lxmpp/client/service/chat/ChatSession;
    instance-of v3, v1, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 169
    check-cast v3, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    invoke-virtual {v3, p1}, Lxmpp/client/service/chat/multi/MultiUserChatSession;->updateUser(Lxmpp/client/service/user/User;)V

    .line 170
    invoke-virtual {p0, v1}, Lxmpp/client/service/chat/ChatService;->getChatFromSession(Lxmpp/client/service/chat/ChatSession;)Lxmpp/client/service/chat/Chat;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/chat/multi/MultiUserChat;

    .line 171
    .local v0, chat:Lxmpp/client/service/chat/multi/MultiUserChat;
    invoke-virtual {v0}, Lxmpp/client/service/chat/multi/MultiUserChat;->getUsers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    iget-object v3, p0, Lxmpp/client/service/chat/ChatService;->mService:Lxmpp/client/service/Service;

    invoke-virtual {v3, v1}, Lxmpp/client/service/Service;->sendSessionUpdated(Lxmpp/client/service/chat/ChatSession;)V

    .line 177
    .end local v0           #chat:Lxmpp/client/service/chat/multi/MultiUserChat;
    :cond_0
    return-void

    .line 171
    .restart local v0       #chat:Lxmpp/client/service/chat/multi/MultiUserChat;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, u:Ljava/lang/String;
    move-object v3, v1

    .line 172
    check-cast v3, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    iget-object v5, p0, Lxmpp/client/service/chat/ChatService;->mUserService:Lxmpp/client/service/user/UserService;

    .line 173
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    move-result-object v5

    .line 172
    invoke-virtual {v3, v5}, Lxmpp/client/service/chat/multi/MultiUserChatSession;->updateUser(Lxmpp/client/service/user/User;)V

    goto :goto_0
.end method
