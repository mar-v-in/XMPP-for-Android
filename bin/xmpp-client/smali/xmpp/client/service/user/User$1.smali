.class Lxmpp/client/service/user/User$1;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxmpp/client/service/user/User;
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
        "Lxmpp/client/service/user/User;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
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
    invoke-virtual {p0, p1}, Lxmpp/client/service/user/User$1;->createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/user/User;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/user/User;
    .locals 2
    .parameter "in"

    .prologue
    .line 47
    new-instance v0, Lxmpp/client/service/user/User;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lxmpp/client/service/user/User;-><init>(Landroid/os/Parcel;Lxmpp/client/service/user/User;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lxmpp/client/service/user/User$1;->newArray(I)[Lxmpp/client/service/user/User;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lxmpp/client/service/user/User;
    .locals 1
    .parameter "size"

    .prologue
    .line 52
    new-array v0, p1, [Lxmpp/client/service/user/User;

    return-object v0
.end method
