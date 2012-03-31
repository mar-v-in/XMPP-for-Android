.class public Lxmpp/client/service/chat/multi/MultiUserChatParticipantStatusListener;
.super Ljava/lang/Object;
.source "MultiUserChatParticipantStatusListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;


# instance fields
.field private final mChat:Lxmpp/client/service/chat/multi/MultiUserChat;


# direct methods
.method public constructor <init>(Lxmpp/client/service/chat/multi/MultiUserChat;)V
    .locals 0
    .parameter "multiUserChat"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lxmpp/client/service/chat/multi/MultiUserChatParticipantStatusListener;->mChat:Lxmpp/client/service/chat/multi/MultiUserChat;

    .line 12
    return-void
.end method


# virtual methods
.method public adminGranted(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 17
    return-void
.end method

.method public adminRevoked(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 22
    return-void
.end method

.method public banned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "participant"
    .parameter "actor"
    .parameter "reason"

    .prologue
    .line 26
    return-void
.end method

.method public joined(Ljava/lang/String;)V
    .locals 1
    .parameter "participant"

    .prologue
    .line 30
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatParticipantStatusListener;->mChat:Lxmpp/client/service/chat/multi/MultiUserChat;

    invoke-virtual {v0, p1}, Lxmpp/client/service/chat/multi/MultiUserChat;->processParticipantJoined(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public kicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "participant"
    .parameter "actor"
    .parameter "reason"

    .prologue
    .line 36
    return-void
.end method

.method public left(Ljava/lang/String;)V
    .locals 1
    .parameter "participant"

    .prologue
    .line 40
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatParticipantStatusListener;->mChat:Lxmpp/client/service/chat/multi/MultiUserChat;

    invoke-virtual {v0, p1}, Lxmpp/client/service/chat/multi/MultiUserChat;->processParticipantLeft(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public membershipGranted(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 47
    return-void
.end method

.method public membershipRevoked(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 52
    return-void
.end method

.method public moderatorGranted(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 57
    return-void
.end method

.method public moderatorRevoked(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 62
    return-void
.end method

.method public nicknameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "participant"
    .parameter "newNickname"

    .prologue
    .line 67
    return-void
.end method

.method public ownershipGranted(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 72
    return-void
.end method

.method public ownershipRevoked(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 77
    return-void
.end method

.method public voiceGranted(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 81
    return-void
.end method

.method public voiceRevoked(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 86
    return-void
.end method
