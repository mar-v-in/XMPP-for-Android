.class Lxmpp/client/service/chat/ChatSession$1;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxmpp/client/service/chat/ChatSession;
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
        "Lxmpp/client/service/chat/ChatSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
    invoke-virtual {p0, p1}, Lxmpp/client/service/chat/ChatSession$1;->createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/chat/ChatSession;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/chat/ChatSession;
    .locals 2
    .parameter "in"

    .prologue
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 20
    .local v0, bl:[Z
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    .line 21
    new-instance v1, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    invoke-direct {v1, v0, p1}, Lxmpp/client/service/chat/multi/MultiUserChatSession;-><init>([ZLandroid/os/Parcel;)V

    .line 23
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lxmpp/client/service/chat/single/SingleUserChatSession;

    invoke-direct {v1, v0, p1}, Lxmpp/client/service/chat/single/SingleUserChatSession;-><init>([ZLandroid/os/Parcel;)V

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lxmpp/client/service/chat/ChatSession$1;->newArray(I)[Lxmpp/client/service/chat/ChatSession;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lxmpp/client/service/chat/ChatSession;
    .locals 1
    .parameter "size"

    .prologue
    .line 29
    new-array v0, p1, [Lxmpp/client/service/chat/ChatSession;

    return-object v0
.end method
