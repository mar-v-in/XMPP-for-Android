.class public Lxmpp/client/service/chat/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lxmpp/client/service/chat/ChatMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDate:Ljava/util/Date;

.field mIsMUC:Z

.field mMessage:Ljava/lang/String;

.field mUser:Lxmpp/client/service/user/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lxmpp/client/service/chat/ChatMessage$1;

    invoke-direct {v0}, Lxmpp/client/service/chat/ChatMessage$1;-><init>()V

    sput-object v0, Lxmpp/client/service/chat/ChatMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lxmpp/client/service/chat/ChatMessage;->mDate:Ljava/util/Date;

    .line 37
    const-class v1, Lxmpp/client/service/user/User;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/user/User;

    iput-object v1, p0, Lxmpp/client/service/chat/ChatMessage;->mUser:Lxmpp/client/service/user/User;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lxmpp/client/service/chat/ChatMessage;->mMessage:Ljava/lang/String;

    .line 39
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 40
    .local v0, bl:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 41
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lxmpp/client/service/chat/ChatMessage;->mIsMUC:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lxmpp/client/service/user/User;Ljava/lang/String;Z)V
    .locals 0
    .parameter "d"
    .parameter "by"
    .parameter "msg"
    .parameter "isMUC"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lxmpp/client/service/chat/ChatMessage;->mDate:Ljava/util/Date;

    .line 30
    iput-object p2, p0, Lxmpp/client/service/chat/ChatMessage;->mUser:Lxmpp/client/service/user/User;

    .line 31
    iput-object p3, p0, Lxmpp/client/service/chat/ChatMessage;->mMessage:Ljava/lang/String;

    .line 32
    iput-boolean p4, p0, Lxmpp/client/service/chat/ChatMessage;->mIsMUC:Z

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lxmpp/client/service/chat/ChatMessage;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lxmpp/client/service/chat/ChatMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lxmpp/client/service/user/User;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lxmpp/client/service/chat/ChatMessage;->mUser:Lxmpp/client/service/user/User;

    return-object v0
.end method

.method public isMUC()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lxmpp/client/service/chat/ChatMessage;->mIsMUC:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget-object v0, p0, Lxmpp/client/service/chat/ChatMessage;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-object v0, p0, Lxmpp/client/service/chat/ChatMessage;->mUser:Lxmpp/client/service/user/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    iget-object v0, p0, Lxmpp/client/service/chat/ChatMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lxmpp/client/service/chat/ChatMessage;->mIsMUC:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 71
    return-void
.end method
