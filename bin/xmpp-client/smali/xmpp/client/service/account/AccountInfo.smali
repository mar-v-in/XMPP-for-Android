.class public Lxmpp/client/service/account/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCOUNT_SECURITY_DISABLED:I = 0x0

.field public static final ACCOUNT_SECURITY_ENABLED:I = 0x1

.field public static final ACCOUNT_SECURITY_REQUIRED:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lxmpp/client/service/account/AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHostname:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private final mPort:I

.field private final mSecurity:I

.field private final mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lxmpp/client/service/account/AccountInfo$1;

    invoke-direct {v0}, Lxmpp/client/service/account/AccountInfo$1;-><init>()V

    sput-object v0, Lxmpp/client/service/account/AccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/account/AccountInfo;->mHostname:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/account/AccountInfo;->mUsername:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/account/AccountInfo;->mPassword:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lxmpp/client/service/account/AccountInfo;->mPort:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lxmpp/client/service/account/AccountInfo;->mSecurity:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "login"
    .parameter "password"

    .prologue
    .line 38
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v0, p2, v1}, Lxmpp/client/service/account/AccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .parameter "hostname"

    .prologue
    .line 42
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lxmpp/client/service/account/AccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "username"
    .parameter "password"
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 47
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lxmpp/client/service/account/AccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "username"
    .parameter "password"
    .parameter "hostname"
    .parameter "port"
    .parameter "security"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lxmpp/client/service/account/AccountInfo;->mUsername:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lxmpp/client/service/account/AccountInfo;->mPassword:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lxmpp/client/service/account/AccountInfo;->mHostname:Ljava/lang/String;

    .line 55
    iput p4, p0, Lxmpp/client/service/account/AccountInfo;->mPort:I

    .line 56
    iput p5, p0, Lxmpp/client/service/account/AccountInfo;->mSecurity:I

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lxmpp/client/service/account/AccountInfo;->mHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lxmpp/client/service/account/AccountInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lxmpp/client/service/account/AccountInfo;->mPort:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lxmpp/client/service/account/AccountInfo;->mSecurity:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lxmpp/client/service/account/AccountInfo;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 87
    iget-object v0, p0, Lxmpp/client/service/account/AccountInfo;->mHostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lxmpp/client/service/account/AccountInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lxmpp/client/service/account/AccountInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lxmpp/client/service/account/AccountInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lxmpp/client/service/account/AccountInfo;->mSecurity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return-void
.end method
