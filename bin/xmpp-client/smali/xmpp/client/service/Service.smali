.class public Lxmpp/client/service/Service;
.super Landroid/app/Service;
.source "Service.java"

# interfaces
.implements Lxmpp/client/service/handlers/SimpleMessageHandlerClient;
.implements Lxmpp/client/service/Signals;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountInfo:Lxmpp/client/service/account/AccountInfo;

.field private mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

.field private mActiveClient:Landroid/os/Messenger;

.field private mChatService:Lxmpp/client/service/chat/ChatService;

.field private mConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field mConnectionListener:Lorg/jivesoftware/smack/ConnectionListener;

.field private mMessenger:Landroid/os/Messenger;

.field private mNM:Landroid/app/NotificationManager;

.field private mThread:Landroid/os/HandlerThread;

.field private mUserService:Lxmpp/client/service/user/UserService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lxmpp/client/service/Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/Service;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Lxmpp/client/service/Service$1;

    invoke-direct {v0, p0}, Lxmpp/client/service/Service$1;-><init>(Lxmpp/client/service/Service;)V

    iput-object v0, p0, Lxmpp/client/service/Service;->mConnectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    .line 44
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lxmpp/client/service/Service;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addUser(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "uid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, uid:Ljava/lang/String;
    iget-object v3, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v3, v1}, Lxmpp/client/service/user/UserService;->addUser(Ljava/lang/String;)Lxmpp/client/service/user/User;

    move-result-object v2

    .line 93
    .local v2, user:Lxmpp/client/service/user/User;
    if-eqz v2, :cond_0

    .line 94
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v3, "user"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v4, 0xd

    invoke-direct {p0, v3, v4, v0}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v4, -0xd

    invoke-direct {p0, v3, v4}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    goto :goto_0
.end method

.method private closeChatSession(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, b:Landroid/os/Bundle;
    const-class v2, Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 112
    const-string v2, "session"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/chat/ChatSession;

    .line 113
    .local v1, session:Lxmpp/client/service/chat/ChatSession;
    invoke-direct {p0, v1}, Lxmpp/client/service/Service;->closeChatSession(Lxmpp/client/service/chat/ChatSession;)V

    .line 114
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    .line 115
    return-void
.end method

.method private closeChatSession(Lxmpp/client/service/chat/ChatSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->disableChatSession(Lxmpp/client/service/chat/ChatSession;)V

    .line 105
    iget-object v0, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    invoke-virtual {v0, p1}, Lxmpp/client/service/chat/ChatService;->closeChat(Lxmpp/client/service/chat/ChatSession;)V

    .line 107
    :cond_0
    return-void
.end method

.method private connect(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 119
    invoke-direct {p0}, Lxmpp/client/service/Service;->connectXMPP()Z

    move-result v0

    .line 120
    .local v0, res:Z
    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v2, -0x5

    invoke-direct {p0, v1, v2}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    goto :goto_0
.end method

.method private connectXMPP()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    iget-object v3, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    :goto_0
    return v1

    .line 133
    :cond_0
    :try_start_0
    iget-object v3, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->connect()V

    .line 134
    iget-object v3, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v4, p0, Lxmpp/client/service/Service;->mConnectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    sget-object v1, Lxmpp/client/service/Service;->TAG:Ljava/lang/String;

    const-string v3, "connectedXMPP"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 139
    goto :goto_0

    .end local v0           #e:Lorg/jivesoftware/smack/XMPPException;
    :cond_1
    move v1, v2

    .line 142
    goto :goto_0
.end method

.method private createMeUser()Lxmpp/client/service/user/User;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Lxmpp/client/service/user/User;

    invoke-direct {v0}, Lxmpp/client/service/user/User;-><init>()V

    .line 147
    .local v0, user:Lxmpp/client/service/user/User;
    const-string v1, "LoopBack|mobile"

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/User;->setUserName(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/User;->setUserLogin(Ljava/lang/String;)V

    .line 149
    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lxmpp/client/service/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/User;->setRessource(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lxmpp/client/service/user/UserState;

    const/4 v2, -0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lxmpp/client/service/user/UserState;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/User;->setUserState(Lxmpp/client/service/user/UserState;)V

    .line 151
    return-object v0
.end method

.method private disableChatSession(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, b:Landroid/os/Bundle;
    const-class v4, Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 165
    const-string v4, "session"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lxmpp/client/service/chat/ChatSession;

    .line 166
    .local v3, session:Lxmpp/client/service/chat/ChatSession;
    invoke-direct {p0, v3}, Lxmpp/client/service/Service;->disableChatSession(Lxmpp/client/service/chat/ChatSession;)V

    .line 167
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v5, 0x20

    invoke-direct {p0, v4, v5}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    .line 169
    sget-object v4, Lxmpp/client/service/Service;->TAG:Ljava/lang/String;

    const-string v5, "conferenceMarks"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Lxmpp/client/service/bookmark/BookmarkService;

    iget-object v4, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v1, v4}, Lxmpp/client/service/bookmark/BookmarkService;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 171
    .local v1, bs:Lxmpp/client/service/bookmark/BookmarkService;
    invoke-virtual {v1}, Lxmpp/client/service/bookmark/BookmarkService;->getConferences()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 174
    return-void

    .line 171
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;

    .line 172
    .local v2, c:Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;
    sget-object v5, Lxmpp/client/service/Service;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->getJid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "//"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "//"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "//"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->isAutoJoin()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableChatSession(Lxmpp/client/service/chat/ChatSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {p1, v0}, Lxmpp/client/service/chat/ChatSession;->equals(Lxmpp/client/service/chat/ChatSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    .line 160
    :cond_0
    return-void
.end method

.method private getContacts(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 181
    iget-object v2, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v2}, Lxmpp/client/service/user/UserService;->getContactList()Lxmpp/client/service/user/contact/ContactList;

    move-result-object v1

    .line 182
    .local v1, contactList:Lxmpp/client/service/user/contact/ContactList;
    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "contacts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v3, 0xe

    invoke-direct {p0, v2, v3, v0}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 189
    .end local v0           #b:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v3, -0xe

    invoke-direct {p0, v2, v3}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    goto :goto_0
.end method

.method private init(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 249
    .local v0, b:Landroid/os/Bundle;
    const-class v2, Lxmpp/client/service/account/AccountInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 250
    const-string v2, "AccountInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/account/AccountInfo;

    invoke-direct {p0, v2}, Lxmpp/client/service/Service;->initXMPP(Lxmpp/client/service/account/AccountInfo;)Z

    move-result v1

    .line 251
    .local v1, res:Z
    if-eqz v1, :cond_0

    .line 252
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v3, -0x4

    invoke-direct {p0, v2, v3}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    goto :goto_0
.end method

.method private initXMPP(Lxmpp/client/service/account/AccountInfo;)Z
    .locals 4
    .parameter "accountInfo"

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-object v2, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    .line 262
    :cond_0
    iput-object p1, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    .line 263
    iget-object v2, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    if-nez v2, :cond_1

    .line 264
    const/4 v1, 0x0

    .line 287
    :goto_0
    return v1

    .line 267
    :cond_1
    iget-object v2, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    invoke-virtual {v2}, Lxmpp/client/service/account/AccountInfo;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 268
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v2, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    invoke-virtual {v2}, Lxmpp/client/service/account/AccountInfo;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, config:Lorg/jivesoftware/smack/ConnectionConfiguration;
    :goto_1
    iget-object v2, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    invoke-virtual {v2}, Lxmpp/client/service/account/AccountInfo;->getSecurity()I

    move-result v2

    if-nez v2, :cond_4

    .line 274
    sget-object v2, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSecurityMode(Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;)V

    .line 280
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setReconnectionAllowed(Z)V

    .line 281
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    .line 282
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSelfSignedCertificateEnabled(Z)V

    .line 283
    const-string v2, "BKS"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setTruststoreType(Ljava/lang/String;)V

    .line 284
    const v2, 0xea60

    invoke-static {v2}, Lorg/jivesoftware/smack/SmackConfiguration;->setKeepAliveInterval(I)V

    .line 285
    const/16 v2, 0x7530

    invoke-static {v2}, Lorg/jivesoftware/smack/SmackConfiguration;->setPacketReplyTimeout(I)V

    .line 286
    new-instance v2, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    iput-object v2, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    goto :goto_0

    .line 270
    .end local v0           #config:Lorg/jivesoftware/smack/ConnectionConfiguration;
    :cond_3
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v2, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    invoke-virtual {v2}, Lxmpp/client/service/account/AccountInfo;->getHostname()Ljava/lang/String;

    move-result-object v2

    .line 271
    iget-object v3, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    invoke-virtual {v3}, Lxmpp/client/service/account/AccountInfo;->getPort()I

    move-result v3

    .line 270
    invoke-direct {v0, v2, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;I)V

    .restart local v0       #config:Lorg/jivesoftware/smack/ConnectionConfiguration;
    goto :goto_1

    .line 275
    :cond_4
    iget-object v2, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    invoke-virtual {v2}, Lxmpp/client/service/account/AccountInfo;->getSecurity()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 276
    sget-object v2, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSecurityMode(Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;)V

    goto :goto_2

    .line 277
    :cond_5
    iget-object v2, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    invoke-virtual {v2}, Lxmpp/client/service/account/AccountInfo;->getSecurity()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 278
    sget-object v2, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->required:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSecurityMode(Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;)V

    goto :goto_2
.end method

.method private isOnline(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 303
    invoke-direct {p0}, Lxmpp/client/service/Service;->isOnline()Z

    move-result v1

    .line 304
    .local v1, res:Z
    if-eqz v1, :cond_0

    .line 305
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "user"

    iget-object v3, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v3}, Lxmpp/client/service/user/UserService;->getUserMe()Lxmpp/client/service/user/User;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 307
    const-string v2, "contact"

    new-instance v3, Lxmpp/client/service/user/contact/Contact;

    iget-object v4, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v4}, Lxmpp/client/service/user/UserService;->getUserMe()Lxmpp/client/service/user/User;

    move-result-object v4

    invoke-direct {v3, v4}, Lxmpp/client/service/user/contact/Contact;-><init>(Lxmpp/client/service/user/User;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3, v0}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 312
    .end local v0           #b:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v3, -0x8

    invoke-direct {p0, v2, v3}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    goto :goto_0
.end method

.method private isOnline()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private login(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 316
    invoke-direct {p0}, Lxmpp/client/service/Service;->loginXMPP()Z

    move-result v0

    .line 317
    .local v0, res:Z
    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v2, -0x6

    invoke-direct {p0, v1, v2}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    goto :goto_0
.end method

.method private loginXMPP()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 325
    iget-object v1, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 343
    :goto_0
    return v1

    .line 330
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/qpid/management/common/sasl/SaslProvider;

    invoke-direct {v1}, Lorg/apache/qpid/management/common/sasl/SaslProvider;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 331
    iget-object v4, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    invoke-virtual {v1}, Lxmpp/client/service/account/AccountInfo;->getUsername()Ljava/lang/String;

    move-result-object v5

    .line 332
    iget-object v1, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    invoke-virtual {v1}, Lxmpp/client/service/account/AccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 333
    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lxmpp/client/service/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    invoke-virtual {v4, v5, v6, v1}, Lorg/jivesoftware/smack/XMPPConnection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v1, Lxmpp/client/service/user/UserService;

    iget-object v4, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v4

    .line 335
    invoke-direct {p0}, Lxmpp/client/service/Service;->createMeUser()Lxmpp/client/service/user/User;

    move-result-object v5

    invoke-direct {v1, v4, p0, v5}, Lxmpp/client/service/user/UserService;-><init>(Lorg/jivesoftware/smack/Roster;Lxmpp/client/service/Service;Lxmpp/client/service/user/User;)V

    .line 334
    iput-object v1, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    .line 336
    new-instance v1, Lxmpp/client/service/chat/ChatService;

    iget-object v4, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v5, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-direct {v1, v4, p0, v5}, Lxmpp/client/service/chat/ChatService;-><init>(Lorg/jivesoftware/smack/Connection;Lxmpp/client/service/Service;Lxmpp/client/service/user/UserService;)V

    iput-object v1, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 337
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    sget-object v1, Lxmpp/client/service/Service;->TAG:Ljava/lang/String;

    const-string v2, "loginXMPP"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 340
    goto :goto_0

    .end local v0           #e:Lorg/jivesoftware/smack/XMPPException;
    :cond_1
    move v1, v3

    .line 343
    goto :goto_0
.end method

.method private openChatSession(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 406
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 407
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "uid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, uid:Ljava/lang/String;
    iget-object v5, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v5, v3, v6}, Lxmpp/client/service/user/UserService;->getContact(Ljava/lang/String;Z)Lxmpp/client/service/user/contact/Contact;

    move-result-object v1

    .line 409
    .local v1, contact:Lxmpp/client/service/user/contact/Contact;
    iget-object v5, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v5, v3, v6}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    move-result-object v4

    .line 410
    .local v4, user:Lxmpp/client/service/user/User;
    invoke-virtual {v1}, Lxmpp/client/service/user/contact/Contact;->clearUnreadMessages()V

    .line 411
    iget-object v5, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    invoke-virtual {v5, v3}, Lxmpp/client/service/chat/ChatService;->getChatSessionFromIdentifier(Ljava/lang/String;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v2

    .line 412
    .local v2, session:Lxmpp/client/service/chat/ChatSession;
    if-nez v2, :cond_0

    .line 413
    iget-object v5, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    invoke-virtual {v5, v4}, Lxmpp/client/service/chat/ChatService;->startSession(Lxmpp/client/service/user/User;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v2

    .line 415
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v5, "session"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 417
    const-string v5, "user"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 418
    const-string v5, "contact"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 419
    iput-object v2, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    .line 420
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v6, 0x1e

    invoke-direct {p0, v5, v6, v0}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 421
    return-void
.end method

.method private openMucSession(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 425
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "muc"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, muc:Ljava/lang/String;
    iget-object v4, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    invoke-virtual {v4, v2}, Lxmpp/client/service/chat/ChatService;->getChatSessionFromIdentifier(Ljava/lang/String;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v3

    .line 427
    .local v3, session:Lxmpp/client/service/chat/ChatSession;
    if-nez v3, :cond_0

    .line 428
    iget-object v4, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    invoke-virtual {v4, v2}, Lxmpp/client/service/chat/ChatService;->startSession(Ljava/lang/String;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v3

    .line 430
    :cond_0
    iget-object v4, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    invoke-virtual {v4, v3}, Lxmpp/client/service/chat/ChatService;->getChatFromSession(Lxmpp/client/service/chat/ChatSession;)Lxmpp/client/service/chat/Chat;

    move-result-object v1

    .line 431
    .local v1, chat:Lxmpp/client/service/chat/Chat;
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 432
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v4, "session"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 433
    const-string v4, "subject"

    invoke-virtual {v1}, Lxmpp/client/service/chat/Chat;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iput-object v3, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    .line 435
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v5, 0x21

    invoke-direct {p0, v4, v5, v0}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 436
    return-void
.end method

.method private sendChatMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 471
    .local v0, b:Landroid/os/Bundle;
    const-class v3, Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 472
    const-string v3, "text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, text:Ljava/lang/String;
    const-string v3, "session"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/chat/ChatSession;

    .line 474
    .local v1, session:Lxmpp/client/service/chat/ChatSession;
    if-nez v1, :cond_0

    .line 475
    sget-object v3, Lxmpp/client/service/Service;->TAG:Ljava/lang/String;

    const-string v4, "session is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v3, -0x14

    invoke-direct {p0, v3}, Lxmpp/client/service/Service;->sendToActive(I)V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v3, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    invoke-virtual {v3, v1, v2}, Lxmpp/client/service/chat/ChatService;->sendMessage(Lxmpp/client/service/chat/ChatSession;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMsg(Landroid/os/Messenger;I)V
    .locals 1
    .parameter "m"
    .parameter "msg"

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;Landroid/os/Message;)V

    .line 484
    return-void
.end method

.method private sendMsg(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "m"
    .parameter "msg"
    .parameter "b"

    .prologue
    .line 487
    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 488
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 489
    invoke-direct {p0, p1, v0}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;Landroid/os/Message;)V

    .line 490
    return-void
.end method

.method private sendMsg(Landroid/os/Messenger;Landroid/os/Message;)V
    .locals 2
    .parameter "m"
    .parameter "msg"

    .prologue
    .line 494
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lxmpp/client/service/Service;->mActiveClient:Landroid/os/Messenger;

    if-ne p1, v1, :cond_0

    .line 497
    const/4 v1, 0x0

    iput-object v1, p0, Lxmpp/client/service/Service;->mActiveClient:Landroid/os/Messenger;

    .line 498
    iget-object v1, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    invoke-direct {p0, v1}, Lxmpp/client/service/Service;->disableChatSession(Lxmpp/client/service/chat/ChatSession;)V

    goto :goto_0
.end method

.method private sendToActive(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lxmpp/client/service/Service;->sendToActive(Landroid/os/Message;)V

    .line 538
    return-void
.end method

.method private sendToActive(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "msg"
    .parameter "b"

    .prologue
    .line 541
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 542
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 543
    invoke-direct {p0, v0}, Lxmpp/client/service/Service;->sendToActive(Landroid/os/Message;)V

    .line 544
    return-void
.end method

.method private sendToActive(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 547
    iget-object v0, p0, Lxmpp/client/service/Service;->mActiveClient:Landroid/os/Messenger;

    invoke-direct {p0, v0, p1}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;Landroid/os/Message;)V

    .line 548
    return-void
.end method

.method private shortenCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "cs"
    .parameter "chars"

    .prologue
    .line 551
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 554
    .end local p1
    :cond_0
    return-object p1
.end method

.method private showChatNotification(Lxmpp/client/service/chat/ChatMessage;)V
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    .line 560
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 562
    .local v0, builder:Landroid/app/Notification$Builder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v4

    invoke-virtual {v4}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 563
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xfa

    invoke-direct {p0, v4, v5}, Lxmpp/client/service/Service;->shortenCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 564
    const v3, 0x7f02002a

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 565
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v3

    invoke-virtual {v3, p0}, Lxmpp/client/service/user/User;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 567
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 568
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 569
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->isMUC()Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    iget-object v3, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lxmpp/client/service/user/UserService;->getContact(Lxmpp/client/service/user/User;Z)Lxmpp/client/service/user/contact/Contact;

    move-result-object v3

    .line 573
    invoke-virtual {v3}, Lxmpp/client/service/user/contact/Contact;->getUnreadMessages()I

    move-result v3

    .line 572
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 576
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lxmpp/client/ui/activities/AppActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->isMUC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imto://jabbermuc/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v4

    invoke-virtual {v4}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 582
    :goto_0
    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 585
    .local v1, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 586
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 587
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 589
    iget-object v3, p0, Lxmpp/client/service/Service;->mNM:Landroid/app/NotificationManager;

    const v4, 0x7f060008

    .line 590
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v5

    invoke-virtual {v5}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    .line 591
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 589
    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 593
    return-void

    .line 580
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imto://jabber/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v4

    invoke-virtual {v4}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "text"

    .prologue
    const v5, 0x7f060008

    const/4 v4, 0x0

    .line 596
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 598
    .local v0, builder:Landroid/app/Notification$Builder;
    const v3, 0x7f020029

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 600
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lxmpp/client/ui/activities/AppActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 602
    .local v2, i:Landroid/content/Intent;
    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 605
    .local v1, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 606
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 607
    if-nez p1, :cond_1

    .line 608
    iget-object v3, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    if-nez v3, :cond_0

    .line 609
    invoke-virtual {p0, v5}, Lxmpp/client/service/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 617
    :goto_0
    if-nez p2, :cond_3

    .line 618
    iget-object v3, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    if-nez v3, :cond_2

    .line 619
    const v3, 0x7f060015

    invoke-virtual {p0, v3}, Lxmpp/client/service/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 628
    :goto_1
    iget-object v3, p0, Lxmpp/client/service/Service;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 629
    return-void

    .line 611
    :cond_0
    iget-object v3, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v3}, Lxmpp/client/service/user/UserService;->getUserMe()Lxmpp/client/service/user/User;

    move-result-object v3

    .line 612
    invoke-virtual {v3}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 611
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 621
    :cond_2
    iget-object v3, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v3}, Lxmpp/client/service/user/UserService;->getUserMe()Lxmpp/client/service/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v3

    .line 622
    invoke-virtual {v3, p0}, Lxmpp/client/service/user/UserState;->getStatusText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 621
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 625
    :cond_3
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private unregister(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lxmpp/client/service/Service;->mActiveClient:Landroid/os/Messenger;

    .line 633
    iget-object v0, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    invoke-direct {p0, v0}, Lxmpp/client/service/Service;->disableChatSession(Lxmpp/client/service/chat/ChatSession;)V

    .line 634
    return-void
.end method

.method private updateContact(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 637
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 638
    .local v0, b:Landroid/os/Bundle;
    const-class v4, Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 639
    const-string v4, "contact"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/contact/Contact;

    .line 640
    .local v2, contact:Lxmpp/client/service/user/contact/Contact;
    iget-object v4, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v4}, Lxmpp/client/service/user/UserService;->getContactList()Lxmpp/client/service/user/contact/ContactList;

    move-result-object v3

    .line 641
    .local v3, contacts:Lxmpp/client/service/user/contact/ContactList;
    invoke-virtual {v3}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 647
    :goto_0
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v5, 0x29

    invoke-direct {p0, v4, v5}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    .line 648
    return-void

    .line 641
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/user/contact/Contact;

    .line 642
    .local v1, c:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v1, v2}, Lxmpp/client/service/user/contact/Contact;->equals(Lxmpp/client/service/user/contact/Contact;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 643
    invoke-virtual {v2}, Lxmpp/client/service/user/contact/Contact;->getUserContact()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lxmpp/client/service/user/contact/Contact;->setUserContact(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMeStatus(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 651
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 652
    .local v0, b:Landroid/os/Bundle;
    const-class v4, Lxmpp/client/service/user/UserState;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 653
    const-string v4, "state"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/UserState;

    .line 654
    .local v2, state:Lxmpp/client/service/user/UserState;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lxmpp/client/service/user/UserState;->isTemporaryStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 655
    :cond_0
    invoke-virtual {v2, p0}, Lxmpp/client/service/user/UserState;->getStatusText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lxmpp/client/service/Service;->showNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v4, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v4}, Lxmpp/client/service/user/UserService;->getUserMe()Lxmpp/client/service/user/User;

    move-result-object v3

    .line 659
    .local v3, user:Lxmpp/client/service/user/User;
    invoke-virtual {v3, v2}, Lxmpp/client/service/user/User;->setUserState(Lxmpp/client/service/user/UserState;)V

    .line 660
    iget-object v4, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v4, v3}, Lxmpp/client/service/user/UserService;->setUserMe(Lxmpp/client/service/user/User;)V

    .line 661
    invoke-direct {p0, v5, v5}, Lxmpp/client/service/Service;->showNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v2}, Lxmpp/client/service/user/UserState;->toPresence()Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v1

    .line 663
    .local v1, presence:Lorg/jivesoftware/smack/packet/Presence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 664
    const/high16 v5, 0x7f06

    invoke-virtual {p0, v5}, Lxmpp/client/service/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 665
    iget-object v4, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method private updateUser(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 670
    .local v0, b:Landroid/os/Bundle;
    const-class v2, Lxmpp/client/service/user/User;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 671
    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/user/User;

    .line 672
    .local v1, user:Lxmpp/client/service/user/User;
    iget-object v2, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v2, v1}, Lxmpp/client/service/user/UserService;->updateUser(Lxmpp/client/service/user/User;)V

    .line 673
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/16 v3, 0x28

    invoke-direct {p0, v2, v3}, Lxmpp/client/service/Service;->sendMsg(Landroid/os/Messenger;I)V

    .line 674
    return-void
.end method


# virtual methods
.method public getConnection()Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 241
    sget-object v0, Lxmpp/client/service/Service;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 195
    :sswitch_0
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->openChatSession(Landroid/os/Message;)V

    goto :goto_0

    .line 198
    :sswitch_1
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->openMucSession(Landroid/os/Message;)V

    goto :goto_0

    .line 201
    :sswitch_2
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->closeChatSession(Landroid/os/Message;)V

    goto :goto_0

    .line 204
    :sswitch_3
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->sendChatMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 207
    :sswitch_4
    invoke-virtual {p0, p1}, Lxmpp/client/service/Service;->register(Landroid/os/Message;)V

    goto :goto_0

    .line 210
    :sswitch_5
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->unregister(Landroid/os/Message;)V

    goto :goto_0

    .line 213
    :sswitch_6
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->init(Landroid/os/Message;)V

    .line 215
    :sswitch_7
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->connect(Landroid/os/Message;)V

    .line 217
    :sswitch_8
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->login(Landroid/os/Message;)V

    goto :goto_0

    .line 220
    :sswitch_9
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->isOnline(Landroid/os/Message;)V

    goto :goto_0

    .line 223
    :sswitch_a
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->disableChatSession(Landroid/os/Message;)V

    goto :goto_0

    .line 226
    :sswitch_b
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->updateMeStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 229
    :sswitch_c
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->updateContact(Landroid/os/Message;)V

    goto :goto_0

    .line 232
    :sswitch_d
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->updateUser(Landroid/os/Message;)V

    goto :goto_0

    .line 235
    :sswitch_e
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->getContacts(Landroid/os/Message;)V

    goto :goto_0

    .line 238
    :sswitch_f
    invoke-direct {p0, p1}, Lxmpp/client/service/Service;->addUser(Landroid/os/Message;)V

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x8 -> :sswitch_9
        0xd -> :sswitch_f
        0xe -> :sswitch_e
        0x14 -> :sswitch_3
        0x15 -> :sswitch_b
        0x1e -> :sswitch_0
        0x1f -> :sswitch_2
        0x20 -> :sswitch_a
        0x21 -> :sswitch_1
        0x28 -> :sswitch_d
        0x29 -> :sswitch_c
    .end sparse-switch
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 348
    iget-object v0, p0, Lxmpp/client/service/Service;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 353
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    .line 354
    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 353
    iput-object v0, p0, Lxmpp/client/service/Service;->mThread:Landroid/os/HandlerThread;

    .line 355
    iget-object v0, p0, Lxmpp/client/service/Service;->mThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 356
    iget-object v0, p0, Lxmpp/client/service/Service;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 357
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lxmpp/client/service/handlers/SimpleMessageHandler;

    .line 358
    iget-object v2, p0, Lxmpp/client/service/Service;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lxmpp/client/service/handlers/SimpleMessageHandler;-><init>(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 357
    iput-object v0, p0, Lxmpp/client/service/Service;->mMessenger:Landroid/os/Messenger;

    .line 360
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lxmpp/client/service/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lxmpp/client/service/Service;->mNM:Landroid/app/NotificationManager;

    .line 362
    invoke-direct {p0, v3, v3}, Lxmpp/client/service/Service;->showNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lxmpp/client/service/Service;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lxmpp/client/service/Service;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 369
    iput-object v2, p0, Lxmpp/client/service/Service;->mThread:Landroid/os/HandlerThread;

    .line 372
    :cond_0
    iget-object v0, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    if-eqz v0, :cond_1

    .line 373
    iput-object v2, p0, Lxmpp/client/service/Service;->mAccountInfo:Lxmpp/client/service/account/AccountInfo;

    .line 375
    :cond_1
    iget-object v0, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v0}, Lxmpp/client/service/chat/ChatSession;->close()V

    .line 377
    iput-object v2, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    .line 379
    :cond_2
    iget-object v0, p0, Lxmpp/client/service/Service;->mActiveClient:Landroid/os/Messenger;

    if-eqz v0, :cond_3

    .line 380
    iput-object v2, p0, Lxmpp/client/service/Service;->mActiveClient:Landroid/os/Messenger;

    .line 382
    :cond_3
    iget-object v0, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    if-eqz v0, :cond_4

    .line 383
    iget-object v0, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    invoke-virtual {v0}, Lxmpp/client/service/chat/ChatService;->destroy()V

    .line 384
    iput-object v2, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    .line 386
    :cond_4
    iget-object v0, p0, Lxmpp/client/service/Service;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_5

    .line 387
    iput-object v2, p0, Lxmpp/client/service/Service;->mMessenger:Landroid/os/Messenger;

    .line 389
    :cond_5
    iget-object v0, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    if-eqz v0, :cond_6

    .line 390
    iget-object v0, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v0}, Lxmpp/client/service/user/UserService;->destroy()V

    .line 391
    iput-object v2, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    .line 394
    :cond_6
    iget-object v0, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v0, :cond_7

    .line 395
    iget-object v0, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    .line 396
    iput-object v2, p0, Lxmpp/client/service/Service;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 399
    :cond_7
    iget-object v0, p0, Lxmpp/client/service/Service;->mNM:Landroid/app/NotificationManager;

    if-eqz v0, :cond_8

    .line 400
    iget-object v0, p0, Lxmpp/client/service/Service;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 401
    iput-object v2, p0, Lxmpp/client/service/Service;->mNM:Landroid/app/NotificationManager;

    .line 403
    :cond_8
    return-void
.end method

.method public processMessage(Lxmpp/client/service/chat/ChatSession;Lxmpp/client/service/chat/ChatMessage;)V
    .locals 6
    .parameter "session"
    .parameter "message"

    .prologue
    .line 439
    iget-object v3, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {p1, v3}, Lxmpp/client/service/chat/ChatSession;->equals(Lxmpp/client/service/chat/ChatSession;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "session"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 442
    const-string v3, "message"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 443
    const/16 v3, 0x32

    invoke-direct {p0, v3, v0}, Lxmpp/client/service/Service;->sendToActive(ILandroid/os/Bundle;)V

    .line 457
    .end local v0           #b:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatSession;->isMUC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 446
    invoke-direct {p0, p2}, Lxmpp/client/service/Service;->showChatNotification(Lxmpp/client/service/chat/ChatMessage;)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v3, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    .line 449
    invoke-virtual {p2}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v4

    const/4 v5, 0x1

    .line 448
    invoke-virtual {v3, v4, v5}, Lxmpp/client/service/user/UserService;->getContact(Lxmpp/client/service/user/User;Z)Lxmpp/client/service/user/contact/Contact;

    move-result-object v1

    .line 450
    .local v1, contact:Lxmpp/client/service/user/contact/Contact;
    iget-object v3, p0, Lxmpp/client/service/Service;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {p2}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v4

    .line 451
    invoke-virtual {v4}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 450
    invoke-virtual {v3, v4, v5}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    move-result-object v2

    .line 452
    .local v2, user:Lxmpp/client/service/user/User;
    invoke-virtual {v1}, Lxmpp/client/service/user/contact/Contact;->increaseUnreadMessages()V

    .line 453
    invoke-virtual {p0, v2}, Lxmpp/client/service/Service;->sendRosterUpdated(Lxmpp/client/service/user/User;)V

    .line 454
    invoke-direct {p0, p2}, Lxmpp/client/service/Service;->showChatNotification(Lxmpp/client/service/chat/ChatMessage;)V

    goto :goto_0
.end method

.method public register(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 460
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lxmpp/client/service/Service;->mActiveClient:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lxmpp/client/service/Service;->sendToActive(I)V

    .line 463
    iget-object v0, p0, Lxmpp/client/service/Service;->mActiveChatSession:Lxmpp/client/service/chat/ChatSession;

    invoke-direct {p0, v0}, Lxmpp/client/service/Service;->disableChatSession(Lxmpp/client/service/chat/ChatSession;)V

    .line 465
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lxmpp/client/service/Service;->mActiveClient:Landroid/os/Messenger;

    .line 467
    :cond_1
    return-void
.end method

.method public sendRosterAdded(Lxmpp/client/service/user/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 504
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 505
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    const-string v1, "address"

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 508
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lxmpp/client/service/Service;->sendToActive(ILandroid/os/Bundle;)V

    .line 509
    return-void
.end method

.method public sendRosterDeleted(Ljava/lang/String;)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 512
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 513
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lxmpp/client/service/Service;->sendToActive(ILandroid/os/Bundle;)V

    .line 516
    return-void
.end method

.method public sendRosterUpdated(Lxmpp/client/service/user/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 519
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->isMUCUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lxmpp/client/service/Service;->mChatService:Lxmpp/client/service/chat/ChatService;

    invoke-virtual {v1, p1}, Lxmpp/client/service/chat/ChatService;->updateMUCUser(Lxmpp/client/service/user/User;)V

    .line 522
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 523
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    const-string v1, "address"

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 526
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lxmpp/client/service/Service;->sendToActive(ILandroid/os/Bundle;)V

    .line 527
    return-void
.end method

.method public sendSessionUpdated(Lxmpp/client/service/chat/ChatSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "session"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 533
    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lxmpp/client/service/Service;->sendToActive(ILandroid/os/Bundle;)V

    .line 534
    return-void
.end method
