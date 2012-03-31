.class public Lxmpp/client/ui/provider/ChatProvider;
.super Ljava/lang/Object;
.source "ChatProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mChatSession:Lxmpp/client/service/chat/ChatSession;

.field mMeContact:Lxmpp/client/service/user/contact/Contact;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/ui/provider/ChatProvider;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Lxmpp/client/service/user/contact/Contact;Lxmpp/client/service/chat/ChatSession;)V
    .locals 0
    .parameter "meContact"
    .parameter "chatSession"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lxmpp/client/ui/provider/ChatProvider;->mChatSession:Lxmpp/client/service/chat/ChatSession;

    .line 18
    iput-object p1, p0, Lxmpp/client/ui/provider/ChatProvider;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    .line 19
    return-void
.end method


# virtual methods
.method public addMessage(Lxmpp/client/service/chat/ChatMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 22
    iget-object v0, p0, Lxmpp/client/ui/provider/ChatProvider;->mChatSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v0, p1}, Lxmpp/client/service/chat/ChatSession;->addMessage(Lxmpp/client/service/chat/ChatMessage;)V

    .line 24
    return-void
.end method

.method public getMeContact()Lxmpp/client/service/user/contact/Contact;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lxmpp/client/ui/provider/ChatProvider;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    return-object v0
.end method

.method public getMessage(I)Lxmpp/client/service/chat/ChatMessage;
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    iget-object v0, p0, Lxmpp/client/ui/provider/ChatProvider;->mChatSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v0}, Lxmpp/client/service/chat/ChatSession;->getMessageList()Lxmpp/client/service/chat/ChatMessageList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxmpp/client/service/chat/ChatMessageList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/chat/ChatMessage;

    return-object v0
.end method

.method public getUsers()Lxmpp/client/service/user/UserList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lxmpp/client/ui/provider/ChatProvider;->mChatSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v0}, Lxmpp/client/service/chat/ChatSession;->isMUC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lxmpp/client/ui/provider/ChatProvider;->mChatSession:Lxmpp/client/service/chat/ChatSession;

    instance-of v0, v0, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lxmpp/client/ui/provider/ChatProvider;->mChatSession:Lxmpp/client/service/chat/ChatSession;

    check-cast v0, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    invoke-virtual {v0}, Lxmpp/client/service/chat/multi/MultiUserChatSession;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMeContact(Lxmpp/client/service/user/contact/Contact;)V
    .locals 0
    .parameter "contact"

    .prologue
    .line 43
    iput-object p1, p0, Lxmpp/client/ui/provider/ChatProvider;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    .line 44
    return-void
.end method

.method public setSession(Lxmpp/client/service/chat/ChatSession;)V
    .locals 0
    .parameter "mSession"

    .prologue
    .line 47
    iput-object p1, p0, Lxmpp/client/ui/provider/ChatProvider;->mChatSession:Lxmpp/client/service/chat/ChatSession;

    .line 48
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lxmpp/client/ui/provider/ChatProvider;->mChatSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v0}, Lxmpp/client/service/chat/ChatSession;->getMessageList()Lxmpp/client/service/chat/ChatMessageList;

    move-result-object v0

    invoke-virtual {v0}, Lxmpp/client/service/chat/ChatMessageList;->size()I

    move-result v0

    return v0
.end method
