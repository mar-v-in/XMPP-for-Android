.class public Lxmpp/client/service/chat/ChatMessageList;
.super Ljava/util/ArrayList;
.source "ChatMessageList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lxmpp/client/service/chat/ChatMessage;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lxmpp/client/service/chat/ChatMessageList;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lxmpp/client/service/chat/ChatMessageList$1;

    invoke-direct {v0}, Lxmpp/client/service/chat/ChatMessageList$1;-><init>()V

    sput-object v0, Lxmpp/client/service/chat/ChatMessageList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 33
    invoke-direct {p0}, Lxmpp/client/service/chat/ChatMessageList;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 35
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 39
    return-void

    .line 36
    :cond_0
    const-class v2, Lxmpp/client/service/chat/ChatMessage;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 36
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/chat/ChatMessage;

    invoke-virtual {p0, v2}, Lxmpp/client/service/chat/ChatMessageList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 49
    invoke-virtual {p0}, Lxmpp/client/service/chat/ChatMessageList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lxmpp/client/service/chat/ChatMessageList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 53
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, v0}, Lxmpp/client/service/chat/ChatMessageList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
