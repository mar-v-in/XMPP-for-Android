.class public Lxmpp/client/service/user/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lxmpp/client/service/user/User;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lxmpp/client/service/user/User;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = null

.field public static final TRANSPORT_AIM:I = 0x4

.field public static final TRANSPORT_ICQ:I = 0x2

.field public static final TRANSPORT_IRC:I = 0x6

.field public static final TRANSPORT_MSN:I = 0x3

.field public static final TRANSPORT_NONE:I = 0x0

.field public static final TRANSPORT_UNKNOWN:I = -0x1

.field public static final TRANSPORT_XMPP:I = 0x1

.field public static final TRANSPORT_YAHOO:I = 0x5

.field public static final TSTATE_DEFAULT:I = 0x0

.field public static final TSTATE_IS_MUC:I = 0x3

.field public static final TSTATE_IS_TRANSPORT:I = 0x1

.field public static final TSTATE_IS_TRANSPORTED:I = 0x2


# instance fields
.field private mAdditionalInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroups:Lxmpp/client/service/user/group/GroupList;

.field private mRessource:Ljava/lang/String;

.field private mTransportState:I

.field private mTransportType:I

.field private mUserContact:Ljava/lang/String;

.field private mUserLogin:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mUserState:Lxmpp/client/service/user/UserState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lxmpp/client/service/user/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/user/User;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Lxmpp/client/service/user/User$1;

    invoke-direct {v0}, Lxmpp/client/service/user/User$1;-><init>()V

    sput-object v0, Lxmpp/client/service/user/User;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/User;->mRessource:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/User;->mUserName:Ljava/lang/String;

    .line 95
    const-class v0, Lxmpp/client/service/user/UserState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/UserState;

    iput-object v0, p0, Lxmpp/client/service/user/User;->mUserState:Lxmpp/client/service/user/UserState;

    .line 96
    const-class v0, Lxmpp/client/service/user/group/GroupList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/group/GroupList;

    iput-object v0, p0, Lxmpp/client/service/user/User;->mGroups:Lxmpp/client/service/user/group/GroupList;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportState:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/user/User;->mAdditionalInfo:Ljava/util/ArrayList;

    .line 100
    iget-object v0, p0, Lxmpp/client/service/user/User;->mAdditionalInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lxmpp/client/service/user/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lxmpp/client/service/user/User;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .parameter "login"
    .parameter "name"
    .parameter
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lxmpp/client/service/user/User;->mRessource:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lxmpp/client/service/user/User;->mUserName:Ljava/lang/String;

    .line 107
    new-instance v0, Lxmpp/client/service/user/UserState;

    invoke-direct {v0, p4}, Lxmpp/client/service/user/UserState;-><init>(Lorg/jivesoftware/smack/packet/Presence;)V

    iput-object v0, p0, Lxmpp/client/service/user/User;->mUserState:Lxmpp/client/service/user/UserState;

    .line 108
    new-instance v0, Lxmpp/client/service/user/group/GroupList;

    invoke-direct {v0}, Lxmpp/client/service/user/group/GroupList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/user/User;->mGroups:Lxmpp/client/service/user/group/GroupList;

    .line 109
    const/4 v0, 0x3

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportState:I

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/user/User;->mAdditionalInfo:Ljava/util/ArrayList;

    .line 112
    if-eqz p3, :cond_0

    .line 113
    iget-object v0, p0, Lxmpp/client/service/user/User;->mAdditionalInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/RosterEntry;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 3
    .parameter "re"
    .parameter "p"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/User;->mUserName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    .line 66
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/User;->mRessource:Ljava/lang/String;

    .line 67
    iput v1, p0, Lxmpp/client/service/user/User;->mTransportState:I

    .line 68
    iput v1, p0, Lxmpp/client/service/user/User;->mTransportType:I

    .line 69
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    iput v2, p0, Lxmpp/client/service/user/User;->mTransportState:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    .line 72
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    const-string v1, "icq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    .line 86
    :cond_2
    :goto_0
    new-instance v0, Lxmpp/client/service/user/group/GroupList;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getGroups()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lxmpp/client/service/user/group/GroupList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lxmpp/client/service/user/User;->mGroups:Lxmpp/client/service/user/group/GroupList;

    .line 87
    new-instance v0, Lxmpp/client/service/user/UserState;

    invoke-direct {v0, p2}, Lxmpp/client/service/user/UserState;-><init>(Lorg/jivesoftware/smack/packet/Presence;)V

    iput-object v0, p0, Lxmpp/client/service/user/User;->mUserState:Lxmpp/client/service/user/UserState;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/user/User;->mAdditionalInfo:Ljava/util/ArrayList;

    .line 89
    return-void

    .line 74
    :cond_3
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    const-string v1, "msn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    goto :goto_0

    .line 76
    :cond_4
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    const-string v1, "irc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    const/4 v0, 0x6

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    goto :goto_0

    .line 78
    :cond_5
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    const-string v1, "aim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    const/4 v0, 0x4

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    goto :goto_0

    .line 80
    :cond_6
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    const-string v1, "yahoo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    goto :goto_0

    .line 82
    :cond_7
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    const-string v1, "xmpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iput v2, p0, Lxmpp/client/service/user/User;->mTransportType:I

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lxmpp/client/service/user/User;

    invoke-virtual {p0, p1}, Lxmpp/client/service/user/User;->compareTo(Lxmpp/client/service/user/User;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lxmpp/client/service/user/User;)I
    .locals 5
    .parameter "another"

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 119
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->isInvisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->isInvisible()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->isInvisible()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->isInvisible()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v3

    invoke-virtual {v3}, Lxmpp/client/service/user/UserState;->getStatusPrecedence()I

    move-result v3

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Lxmpp/client/service/user/UserState;->getStatusPrecedence()I

    move-result v4

    if-ge v3, v4, :cond_3

    move v0, v1

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v3

    invoke-virtual {v3}, Lxmpp/client/service/user/UserState;->getStatusPrecedence()I

    move-result v3

    .line 128
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v4

    invoke-virtual {v4}, Lxmpp/client/service/user/UserState;->getStatusPrecedence()I

    move-result v4

    if-le v3, v4, :cond_4

    move v0, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, i:I
    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->isTransported()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->isTransported()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_5
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->isTransported()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->isTransported()Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    .line 138
    goto :goto_0

    .line 140
    :cond_6
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->supportsAudio()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->supportsAudio()Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v1

    .line 141
    goto :goto_0

    .line 143
    :cond_7
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->supportsAudio()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->supportsAudio()Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v2

    .line 144
    goto/16 :goto_0

    .line 146
    :cond_8
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->supportsVideo()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->supportsVideo()Z

    move-result v3

    if-nez v3, :cond_9

    move v0, v1

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_9
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->supportsVideo()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->supportsVideo()Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v2

    .line 150
    goto/16 :goto_0

    .line 152
    :cond_a
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lxmpp/client/service/user/User;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 165
    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getRessource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getRessource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAdditionalInformation(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 177
    iget-object v0, p0, Lxmpp/client/service/user/User;->mAdditionalInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 178
    iget-object v0, p0, Lxmpp/client/service/user/User;->mAdditionalInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    const v1, 0x7f020018

    .line 185
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getNiceUserLogin()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFullUserLogin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getRessource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroups()Lxmpp/client/service/user/group/GroupList;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lxmpp/client/service/user/User;->mGroups:Lxmpp/client/service/user/group/GroupList;

    return-object v0
.end method

.method public getNiceUserLogin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->isTransported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "\\40"

    const-string v2, "@"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRessource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lxmpp/client/service/user/User;->mRessource:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportState()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lxmpp/client/service/user/User;->mTransportState:I

    return v0
.end method

.method public getTransportType()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    return v0
.end method

.method public getUserContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserContact:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserState()Lxmpp/client/service/user/UserState;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserState:Lxmpp/client/service/user/UserState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lxmpp/client/service/user/User;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isInvisible()Z
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->isTransport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lxmpp/client/service/user/User;->isMUCUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMUCUser()Z
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Lxmpp/client/service/user/User;->mTransportState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransport()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 258
    iget v1, p0, Lxmpp/client/service/user/User;->mTransportState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransported()Z
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lxmpp/client/service/user/User;->mTransportState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroups(Lxmpp/client/service/user/group/GroupList;)V
    .locals 0
    .parameter "groups"

    .prologue
    .line 266
    iput-object p1, p0, Lxmpp/client/service/user/User;->mGroups:Lxmpp/client/service/user/group/GroupList;

    .line 267
    return-void
.end method

.method public setRessource(Ljava/lang/String;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 270
    iput-object p1, p0, Lxmpp/client/service/user/User;->mRessource:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setUserContact(Ljava/lang/String;)V
    .locals 0
    .parameter "userContact"

    .prologue
    .line 274
    iput-object p1, p0, Lxmpp/client/service/user/User;->mUserContact:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setUserLogin(Ljava/lang/String;)V
    .locals 1
    .parameter "userLogin"

    .prologue
    .line 278
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 282
    iput-object p1, p0, Lxmpp/client/service/user/User;->mUserName:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setUserState(Lxmpp/client/service/user/UserState;)V
    .locals 0
    .parameter "userState"

    .prologue
    .line 286
    iput-object p1, p0, Lxmpp/client/service/user/User;->mUserState:Lxmpp/client/service/user/UserState;

    .line 287
    return-void
.end method

.method public supportsAudio()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public supportsVideo()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public transportCheck(Lxmpp/client/service/user/User;)Z
    .locals 2
    .parameter "transport"

    .prologue
    .line 298
    invoke-virtual {p0}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x2

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportState:I

    .line 300
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getTransportType()I

    move-result v0

    iput v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 308
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lxmpp/client/service/user/User;->mRessource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lxmpp/client/service/user/User;->mUserState:Lxmpp/client/service/user/UserState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 312
    iget-object v0, p0, Lxmpp/client/service/user/User;->mGroups:Lxmpp/client/service/user/group/GroupList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 313
    iget v0, p0, Lxmpp/client/service/user/User;->mTransportState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Lxmpp/client/service/user/User;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-object v0, p0, Lxmpp/client/service/user/User;->mAdditionalInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 316
    return-void
.end method
