.class Lxmpp/client/service/chat/single/SingleUserChatSession$1;
.super Ljava/lang/Object;
.source "SingleUserChatSession.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxmpp/client/service/chat/single/SingleUserChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lxmpp/client/service/chat/single/SingleUserChatSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lxmpp/client/service/chat/single/SingleUserChatSession$1;->createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/chat/single/SingleUserChatSession;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/chat/single/SingleUserChatSession;
    .locals 2
    .parameter "in"

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 18
    .local v0, bl:[Z
    new-instance v1, Lxmpp/client/service/chat/single/SingleUserChatSession;

    invoke-direct {v1, v0, p1}, Lxmpp/client/service/chat/single/SingleUserChatSession;-><init>([ZLandroid/os/Parcel;)V

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lxmpp/client/service/chat/single/SingleUserChatSession$1;->newArray(I)[Lxmpp/client/service/chat/single/SingleUserChatSession;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lxmpp/client/service/chat/single/SingleUserChatSession;
    .locals 1
    .parameter "size"

    .prologue
    .line 23
    new-array v0, p1, [Lxmpp/client/service/chat/single/SingleUserChatSession;

    return-object v0
.end method
