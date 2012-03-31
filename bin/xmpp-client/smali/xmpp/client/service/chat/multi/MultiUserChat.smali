.class public Lxmpp/client/service/chat/multi/MultiUserChat;
.super Lxmpp/client/service/chat/Chat;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mInternalChatManager:Lxmpp/client/service/chat/InternalChatManager;

.field private mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

.field private final mMessageListener:Lxmpp/client/service/chat/multi/MultiUserChatMessageListener;

.field private final mParticipantListener:Lxmpp/client/service/chat/multi/MultiUserChatParticipantListener;

.field private final mParticipantStatusListener:Lxmpp/client/service/chat/multi/MultiUserChatParticipantStatusListener;

.field private final mUserService:Lxmpp/client/service/user/UserService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lxmpp/client/service/chat/multi/MultiUserChat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/chat/multi/MultiUserChat;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lxmpp/client/service/chat/InternalChatManager;Lxmpp/client/service/user/UserService;)V
    .locals 3
    .parameter "mConnection"
    .parameter "id"
    .parameter "internalChatManager"
    .parameter "userService"

    .prologue
    .line 29
    invoke-direct {p0}, Lxmpp/client/service/chat/Chat;-><init>()V

    .line 31
    iput-object p4, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mUserService:Lxmpp/client/service/user/UserService;

    .line 32
    new-instance v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    iput-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 33
    iput-object p3, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mInternalChatManager:Lxmpp/client/service/chat/InternalChatManager;

    .line 34
    new-instance v1, Lxmpp/client/service/chat/multi/MultiUserChatMessageListener;

    invoke-direct {v1, p0}, Lxmpp/client/service/chat/multi/MultiUserChatMessageListener;-><init>(Lxmpp/client/service/chat/multi/MultiUserChat;)V

    iput-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMessageListener:Lxmpp/client/service/chat/multi/MultiUserChatMessageListener;

    .line 35
    iget-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v2, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMessageListener:Lxmpp/client/service/chat/multi/MultiUserChatMessageListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->addMessageListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 36
    new-instance v1, Lxmpp/client/service/chat/multi/MultiUserChatParticipantListener;

    invoke-direct {v1, p0}, Lxmpp/client/service/chat/multi/MultiUserChatParticipantListener;-><init>(Lxmpp/client/service/chat/multi/MultiUserChat;)V

    iput-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mParticipantListener:Lxmpp/client/service/chat/multi/MultiUserChatParticipantListener;

    .line 37
    iget-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v2, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mParticipantListener:Lxmpp/client/service/chat/multi/MultiUserChatParticipantListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->addParticipantListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 38
    new-instance v1, Lxmpp/client/service/chat/multi/MultiUserChatParticipantStatusListener;

    .line 39
    invoke-direct {v1, p0}, Lxmpp/client/service/chat/multi/MultiUserChatParticipantStatusListener;-><init>(Lxmpp/client/service/chat/multi/MultiUserChat;)V

    .line 38
    iput-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mParticipantStatusListener:Lxmpp/client/service/chat/multi/MultiUserChatParticipantStatusListener;

    .line 40
    iget-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v2, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mParticipantStatusListener:Lxmpp/client/service/chat/multi/MultiUserChatParticipantStatusListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->addParticipantStatusListener(Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;)V

    .line 41
    iget-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v1, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->addSubjectUpdatedListener(Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;)V

    .line 43
    :try_start_0
    iget-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v2, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v2}, Lxmpp/client/service/user/UserService;->getUserMe()Lxmpp/client/service/user/User;

    move-result-object v2

    invoke-virtual {v2}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->leave()V

    .line 52
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMessageListener:Lxmpp/client/service/chat/multi/MultiUserChatMessageListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->removeMessageListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 54
    return-void
.end method

.method public getChatType()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lxmpp/client/service/chat/multi/MultiUserChat;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsers()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOccupants()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 78
    if-nez v2, :cond_0

    .line 82
    return-object v1

    .line 80
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public processMessage(Lxmpp/client/service/chat/multi/MultiUserChat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .parameter "mChat"
    .parameter "msg"

    .prologue
    .line 86
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mInternalChatManager:Lxmpp/client/service/chat/InternalChatManager;

    invoke-virtual {v0, p1, p2}, Lxmpp/client/service/chat/InternalChatManager;->processMessage(Lxmpp/client/service/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 87
    return-void
.end method

.method public processParticipantJoined(Ljava/lang/String;)V
    .locals 7
    .parameter "participant"

    .prologue
    .line 90
    iget-object v3, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v3, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOccupantPresence(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v2

    .line 91
    .local v2, presence:Lorg/jivesoftware/smack/packet/Presence;
    iget-object v3, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v3, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOccupant(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/Occupant;

    move-result-object v1

    .line 92
    .local v1, occupant:Lorg/jivesoftware/smackx/muc/Occupant;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/Occupant;->getJid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    const/4 v3, 0x1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/Occupant;->getAffiliation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 95
    const/4 v3, 0x2

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/Occupant;->getRole()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    iget-object v3, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mUserService:Lxmpp/client/service/user/UserService;

    new-instance v4, Lxmpp/client/service/user/User;

    invoke-virtual {p0}, Lxmpp/client/service/chat/multi/MultiUserChat;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/Occupant;->getNick()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-direct {v4, v5, v6, v0, v2}, Lxmpp/client/service/user/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 96
    invoke-virtual {v3, v4}, Lxmpp/client/service/user/UserService;->setupUser(Lxmpp/client/service/user/User;)Lxmpp/client/service/user/User;

    .line 98
    iget-object v3, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v3, v2}, Lxmpp/client/service/user/UserService;->presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 99
    return-void
.end method

.method public processParticipantLeft(Ljava/lang/String;)V
    .locals 4
    .parameter "participant"

    .prologue
    const/4 v3, 0x0

    .line 102
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 103
    const/4 v2, 0x0

    .line 102
    invoke-direct {v0, v1, v3, v2, v3}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;Ljava/lang/String;ILorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 104
    .local v0, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v1, v0}, Lxmpp/client/service/user/UserService;->presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 106
    return-void
.end method

.method public processParticipantPresence(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .parameter "presence"

    .prologue
    .line 109
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mUserService:Lxmpp/client/service/user/UserService;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/UserService;->presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 110
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "participant"
    .parameter "text"

    .prologue
    .line 114
    invoke-virtual {p0}, Lxmpp/client/service/chat/multi/MultiUserChat;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    iget-object v1, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mMUC:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public subjectUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "subject"
    .parameter "from"

    .prologue
    .line 125
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChat;->mInternalChatManager:Lxmpp/client/service/chat/InternalChatManager;

    invoke-virtual {v0, p0}, Lxmpp/client/service/chat/InternalChatManager;->chatUpdated(Lxmpp/client/service/chat/Chat;)V

    .line 126
    return-void
.end method
