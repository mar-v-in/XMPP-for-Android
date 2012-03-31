.class public abstract Lxmpp/client/service/chat/Chat;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lxmpp/client/service/chat/ChatCodes;


# instance fields
.field private mChatState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lxmpp/client/service/chat/Chat;->mChatState:I

    .line 9
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method getChatState()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lxmpp/client/service/chat/Chat;->mChatState:I

    return v0
.end method

.method public abstract getChatType()I
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getThreadID()Ljava/lang/String;
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 28
    invoke-virtual {p0}, Lxmpp/client/service/chat/Chat;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lxmpp/client/service/chat/Chat;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public updateChatState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 34
    iput p1, p0, Lxmpp/client/service/chat/Chat;->mChatState:I

    .line 35
    return-void
.end method
