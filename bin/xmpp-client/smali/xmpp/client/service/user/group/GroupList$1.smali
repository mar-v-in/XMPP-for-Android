.class Lxmpp/client/service/user/group/GroupList$1;
.super Ljava/lang/Object;
.source "GroupList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxmpp/client/service/user/group/GroupList;
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
        "Lxmpp/client/service/user/group/GroupList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
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
    invoke-virtual {p0, p1}, Lxmpp/client/service/user/group/GroupList$1;->createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/user/group/GroupList;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/user/group/GroupList;
    .locals 2
    .parameter "in"

    .prologue
    .line 25
    new-instance v0, Lxmpp/client/service/user/group/GroupList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lxmpp/client/service/user/group/GroupList;-><init>(Landroid/os/Parcel;Lxmpp/client/service/user/group/GroupList;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lxmpp/client/service/user/group/GroupList$1;->newArray(I)[Lxmpp/client/service/user/group/GroupList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lxmpp/client/service/user/group/GroupList;
    .locals 1
    .parameter "size"

    .prologue
    .line 30
    new-array v0, p1, [Lxmpp/client/service/user/group/GroupList;

    return-object v0
.end method
