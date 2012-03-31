.class public Lorg/jivesoftware/smack/Chat;
.super Ljava/lang/Object;
.source "Chat.java"


# instance fields
.field private final chatManager:Lorg/jivesoftware/smack/ChatManager;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smack/MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final participant:Ljava/lang/String;

.field private final threadID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/ChatManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "chatManager"
    .parameter "participant"
    .parameter "threadID"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Chat;->listeners:Ljava/util/Set;

    .line 58
    iput-object p1, p0, Lorg/jivesoftware/smack/Chat;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    .line 59
    iput-object p2, p0, Lorg/jivesoftware/smack/Chat;->participant:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public addMessageListener(Lorg/jivesoftware/smack/MessageListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createCollector()Lorg/jivesoftware/smack/PacketCollector;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/ChatManager;->createPacketCollector(Lorg/jivesoftware/smack/Chat;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    return-object v0
.end method

.method deliver(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 102
    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    return-void

    .line 104
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/MessageListener;

    .line 105
    .local v0, listener:Lorg/jivesoftware/smack/MessageListener;
    invoke-interface {v0, p0, p1}, Lorg/jivesoftware/smack/MessageListener;->processMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 111
    instance-of v0, p1, Lorg/jivesoftware/smack/Chat;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Chat;->getThreadID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->participant:Ljava/lang/String;

    check-cast p1, Lorg/jivesoftware/smack/Chat;

    .end local p1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Chat;->getParticipant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 111
    goto :goto_0
.end method

.method public getListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/MessageListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->listeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->participant:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    return-object v0
.end method

.method public removeMessageListener(Lorg/jivesoftware/smack/MessageListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->participant:Ljava/lang/String;

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 188
    .local v0, message:Lorg/jivesoftware/smack/packet/Message;
    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v1, p0, v0}, Lorg/jivesoftware/smack/ChatManager;->sendMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 191
    return-void
.end method

.method public sendMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->participant:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 167
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v0, p0, p1}, Lorg/jivesoftware/smack/ChatManager;->sendMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 169
    return-void
.end method
