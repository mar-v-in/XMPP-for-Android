.class public abstract Lxmpp/client/service/chat/ChatSession;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lxmpp/client/service/chat/ChatCodes;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lxmpp/client/service/chat/ChatSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mIsClosed:Z

.field protected mMessageList:Lxmpp/client/service/chat/ChatMessageList;

.field protected mSessionID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/chat/ChatSession;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Lxmpp/client/service/chat/ChatSession$1;

    invoke-direct {v0}, Lxmpp/client/service/chat/ChatSession$1;-><init>()V

    sput-object v0, Lxmpp/client/service/chat/ChatSession;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "sessionID"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lxmpp/client/service/chat/ChatSession;->mSessionID:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxmpp/client/service/chat/ChatSession;->mIsClosed:Z

    .line 46
    new-instance v0, Lxmpp/client/service/chat/ChatMessageList;

    invoke-direct {v0}, Lxmpp/client/service/chat/ChatMessageList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/chat/ChatSession;->mMessageList:Lxmpp/client/service/chat/ChatMessageList;

    .line 47
    return-void
.end method

.method protected constructor <init>([ZLandroid/os/Parcel;)V
    .locals 1
    .parameter "bl"
    .parameter "in"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lxmpp/client/service/chat/ChatMessageList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/chat/ChatMessageList;

    .line 37
    iput-object v0, p0, Lxmpp/client/service/chat/ChatSession;->mMessageList:Lxmpp/client/service/chat/ChatMessageList;

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/chat/ChatSession;->mSessionID:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    aget-boolean v0, p1, v0

    iput-boolean v0, p0, Lxmpp/client/service/chat/ChatSession;->mIsClosed:Z

    .line 41
    return-void
.end method


# virtual methods
.method public addMessage(Lxmpp/client/service/chat/ChatMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 50
    iget-object v0, p0, Lxmpp/client/service/chat/ChatSession;->mMessageList:Lxmpp/client/service/chat/ChatMessageList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/chat/ChatMessageList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxmpp/client/service/chat/ChatSession;->mIsClosed:Z

    .line 56
    iget-object v0, p0, Lxmpp/client/service/chat/ChatSession;->mMessageList:Lxmpp/client/service/chat/ChatMessageList;

    invoke-virtual {v0}, Lxmpp/client/service/chat/ChatMessageList;->clear()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lxmpp/client/service/chat/ChatSession;->mMessageList:Lxmpp/client/service/chat/ChatMessageList;

    .line 58
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lxmpp/client/service/chat/ChatSession;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lxmpp/client/service/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lxmpp/client/service/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getMessageList()Lxmpp/client/service/chat/ChatMessageList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lxmpp/client/service/chat/ChatSession;->mMessageList:Lxmpp/client/service/chat/ChatMessageList;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lxmpp/client/service/chat/ChatSession;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 86
    iget-boolean v1, p0, Lxmpp/client/service/chat/ChatSession;->mIsClosed:Z

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    iget-object v1, p0, Lxmpp/client/service/chat/ChatSession;->mMessageList:Lxmpp/client/service/chat/ChatMessageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lxmpp/client/service/chat/ChatSession;->mSessionID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 93
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMUC()Z
    .locals 1

    .prologue
    .line 97
    instance-of v0, p0, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-virtual {p0}, Lxmpp/client/service/chat/ChatSession;->isMUC()Z

    move-result v2

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lxmpp/client/service/chat/ChatSession;->isClosed()Z

    move-result v2

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 103
    iget-object v0, p0, Lxmpp/client/service/chat/ChatSession;->mMessageList:Lxmpp/client/service/chat/ChatMessageList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Lxmpp/client/service/chat/ChatSession;->mSessionID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return-void
.end method
