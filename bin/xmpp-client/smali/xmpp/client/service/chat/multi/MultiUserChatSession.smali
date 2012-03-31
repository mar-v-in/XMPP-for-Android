.class public Lxmpp/client/service/chat/multi/MultiUserChatSession;
.super Lxmpp/client/service/chat/ChatSession;
.source "MultiUserChatSession.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lxmpp/client/service/chat/multi/MultiUserChatSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mSubject:Ljava/lang/String;

.field mUserList:Lxmpp/client/service/user/UserList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lxmpp/client/service/chat/multi/MultiUserChatSession$1;

    invoke-direct {v0}, Lxmpp/client/service/chat/multi/MultiUserChatSession$1;-><init>()V

    sput-object v0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "muc"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lxmpp/client/service/chat/ChatSession;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lxmpp/client/service/user/UserList;

    invoke-direct {v0}, Lxmpp/client/service/user/UserList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mUserList:Lxmpp/client/service/user/UserList;

    .line 45
    return-void
.end method

.method public constructor <init>([ZLandroid/os/Parcel;)V
    .locals 1
    .parameter "bl"
    .parameter "in"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lxmpp/client/service/chat/ChatSession;-><init>([ZLandroid/os/Parcel;)V

    .line 38
    const-class v0, Lxmpp/client/service/user/UserList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/UserList;

    iput-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mUserList:Lxmpp/client/service/user/UserList;

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mSubject:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lxmpp/client/service/chat/multi/MultiUserChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()Lxmpp/client/service/user/UserList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mUserList:Lxmpp/client/service/user/UserList;

    return-object v0
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 16
    iput-object p1, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mSubject:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public updateUser(Lxmpp/client/service/user/User;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 57
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lxmpp/client/service/user/UserState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/UserList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/UserList;->remove(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v0}, Lxmpp/client/service/user/UserList;->sort()V

    .line 63
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/UserList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/UserList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lxmpp/client/service/chat/ChatSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    iget-object v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
