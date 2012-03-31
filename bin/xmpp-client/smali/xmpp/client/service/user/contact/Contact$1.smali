.class Lxmpp/client/service/user/contact/Contact$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxmpp/client/service/user/contact/Contact;
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
        "Lxmpp/client/service/user/contact/Contact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
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
    invoke-virtual {p0, p1}, Lxmpp/client/service/user/contact/Contact$1;->createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lxmpp/client/service/user/contact/Contact;
    .locals 2
    .parameter "in"

    .prologue
    .line 22
    new-instance v0, Lxmpp/client/service/user/contact/Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lxmpp/client/service/user/contact/Contact;-><init>(Landroid/os/Parcel;Lxmpp/client/service/user/contact/Contact;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lxmpp/client/service/user/contact/Contact$1;->newArray(I)[Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lxmpp/client/service/user/contact/Contact;
    .locals 1
    .parameter "size"

    .prologue
    .line 27
    new-array v0, p1, [Lxmpp/client/service/user/contact/Contact;

    return-object v0
.end method
