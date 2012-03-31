.class Lxmpp/client/service/account/AccountInfo$1;
.super Ljava/lang/Object;
.source "AccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxmpp/client/service/account/AccountInfo;
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
        "Lxmpp/client/service/account/AccountInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
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
    invoke-virtual {p0, p1}, Lxmpp/client/service/account/AccountInfo$1;->createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/account/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/account/AccountInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 20
    new-instance v0, Lxmpp/client/service/account/AccountInfo;

    invoke-direct {v0, p1}, Lxmpp/client/service/account/AccountInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lxmpp/client/service/account/AccountInfo$1;->newArray(I)[Lxmpp/client/service/account/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lxmpp/client/service/account/AccountInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 25
    new-array v0, p1, [Lxmpp/client/service/account/AccountInfo;

    return-object v0
.end method
