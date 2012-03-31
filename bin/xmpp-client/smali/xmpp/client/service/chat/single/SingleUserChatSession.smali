.class public Lxmpp/client/service/chat/single/SingleUserChatSession;
.super Lxmpp/client/service/chat/ChatSession;
.source "SingleUserChatSession.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lxmpp/client/service/chat/single/SingleUserChatSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mUser:Lxmpp/client/service/user/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lxmpp/client/service/chat/single/SingleUserChatSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/chat/single/SingleUserChatSession;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lxmpp/client/service/chat/single/SingleUserChatSession$1;

    invoke-direct {v0}, Lxmpp/client/service/chat/single/SingleUserChatSession$1;-><init>()V

    sput-object v0, Lxmpp/client/service/chat/single/SingleUserChatSession;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Lxmpp/client/service/user/User;Ljava/lang/String;)V
    .locals 0
    .parameter "user"
    .parameter "sessionID"

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lxmpp/client/service/chat/ChatSession;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lxmpp/client/service/chat/single/SingleUserChatSession;->mUser:Lxmpp/client/service/user/User;

    .line 35
    return-void
.end method

.method public constructor <init>([ZLandroid/os/Parcel;)V
    .locals 1
    .parameter "bl"
    .parameter "in"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lxmpp/client/service/chat/ChatSession;-><init>([ZLandroid/os/Parcel;)V

    .line 29
    const-class v0, Lxmpp/client/service/user/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;

    iput-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChatSession;->mUser:Lxmpp/client/service/user/User;

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lxmpp/client/service/chat/ChatSession;->close()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChatSession;->mUser:Lxmpp/client/service/user/User;

    .line 41
    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChatSession;->mUser:Lxmpp/client/service/user/User;

    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lxmpp/client/service/user/User;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChatSession;->mUser:Lxmpp/client/service/user/User;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lxmpp/client/service/chat/ChatSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    iget-object v0, p0, Lxmpp/client/service/chat/single/SingleUserChatSession;->mUser:Lxmpp/client/service/user/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    return-void
.end method
