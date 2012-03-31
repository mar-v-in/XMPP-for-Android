.class public Lxmpp/client/service/user/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static synthetic $SWITCH_TABLE$org$jivesoftware$smack$packet$Presence$Mode:[I = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lxmpp/client/service/user/UserState;",
            ">;"
        }
    .end annotation
.end field

.field public static Invalid:Lxmpp/client/service/user/UserState; = null

.field public static final STATUS_AVAILABLE:I = 0x5

.field public static final STATUS_AWAY:I = 0x2

.field public static final STATUS_CONNECTING:I = -0x3

.field public static final STATUS_DO_NOT_DISTURB:I = 0x4

.field public static final STATUS_IDLE:I = 0x3

.field public static final STATUS_INITIALIZING:I = -0x4

.field public static final STATUS_INVALID:I = -0x80000000

.field public static final STATUS_LOADING_ROSTER:I = -0x1

.field public static final STATUS_LOGGING_IN:I = -0x2

.field public static final STATUS_OFFLINE:I


# instance fields
.field private final mOnline:Z

.field private mStatus:I

.field private mStatusText:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$org$jivesoftware$smack$packet$Presence$Mode()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lxmpp/client/service/user/UserState;->$SWITCH_TABLE$org$jivesoftware$smack$packet$Presence$Mode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/packet/Presence$Mode;->values()[Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->away:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->chat:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->dnd:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->xa:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lxmpp/client/service/user/UserState;->$SWITCH_TABLE$org$jivesoftware$smack$packet$Presence$Mode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lxmpp/client/service/user/UserState;

    const/high16 v1, -0x8000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxmpp/client/service/user/UserState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lxmpp/client/service/user/UserState;->Invalid:Lxmpp/client/service/user/UserState;

    .line 49
    new-instance v0, Lxmpp/client/service/user/UserState$1;

    invoke-direct {v0}, Lxmpp/client/service/user/UserState$1;-><init>()V

    sput-object v0, Lxmpp/client/service/user/UserState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "status"
    .parameter "statusText"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lxmpp/client/service/user/UserState;->mOnline:Z

    .line 105
    iget-boolean v0, p0, Lxmpp/client/service/user/UserState;->mOnline:Z

    if-eqz v0, :cond_0

    .line 106
    iput-object p2, p0, Lxmpp/client/service/user/UserState;->mStatusText:Ljava/lang/String;

    .line 107
    iput p1, p0, Lxmpp/client/service/user/UserState;->mStatus:I

    .line 109
    :cond_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lxmpp/client/service/user/UserState;->mOnline:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/UserState;->mStatusText:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lxmpp/client/service/user/UserState;->mStatus:I

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lxmpp/client/service/user/UserState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lxmpp/client/service/user/UserState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v1

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lxmpp/client/service/user/UserState;->mOnline:Z

    .line 119
    iget-boolean v1, p0, Lxmpp/client/service/user/UserState;->mOnline:Z

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lxmpp/client/service/user/UserState;->mStatusText:Ljava/lang/String;

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v1

    invoke-static {v1}, Lxmpp/client/service/user/UserState;->modeToStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;)I

    move-result v1

    iput v1, p0, Lxmpp/client/service/user/UserState;->mStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 118
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x5

    iput v1, p0, Lxmpp/client/service/user/UserState;->mStatus:I

    goto :goto_1

    .line 127
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :cond_1
    iput v2, p0, Lxmpp/client/service/user/UserState;->mStatus:I

    goto :goto_1
.end method

.method public static getStatusIconResourceID(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 62
    invoke-static {p0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    return v0
.end method

.method public static getStatusTextResourceID(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 66
    packed-switch p0, :pswitch_data_0

    .line 85
    :pswitch_0
    const v0, 0x7f06001b

    :goto_0
    return v0

    .line 68
    :pswitch_1
    const v0, 0x7f060015

    goto :goto_0

    .line 70
    :pswitch_2
    const v0, 0x7f060017

    goto :goto_0

    .line 72
    :pswitch_3
    const v0, 0x7f060018

    goto :goto_0

    .line 74
    :pswitch_4
    const v0, 0x7f060016

    goto :goto_0

    .line 76
    :pswitch_5
    const v0, 0x7f06001a

    goto :goto_0

    .line 78
    :pswitch_6
    const v0, 0x7f06001c

    goto :goto_0

    .line 80
    :pswitch_7
    const v0, 0x7f06001d

    goto :goto_0

    .line 82
    :pswitch_8
    const v0, 0x7f06001e

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static modeToStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 16
    invoke-static {}, Lxmpp/client/service/user/UserState;->$SWITCH_TABLE$org$jivesoftware$smack$packet$Presence$Mode()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 18
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 22
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static statusToMode(I)Lorg/jivesoftware/smack/packet/Presence$Mode;
    .locals 1
    .parameter "status"

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto :goto_0

    .line 94
    :pswitch_1
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->xa:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto :goto_0

    .line 96
    :pswitch_2
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->away:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto :goto_0

    .line 98
    :pswitch_3
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->dnd:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lxmpp/client/service/user/UserState;->mStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public getRealStatus()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lxmpp/client/service/user/UserState;->mStatus:I

    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lxmpp/client/service/user/UserState;->mStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 147
    const/4 v0, 0x5

    .line 152
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lxmpp/client/service/user/UserState;->isTemporaryStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lxmpp/client/service/user/UserState;->getRealStatus()I

    move-result v0

    goto :goto_0
.end method

.method public getStatusIconResourceID()I
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lxmpp/client/service/user/UserState;->getStatus()I

    move-result v0

    invoke-static {v0}, Lxmpp/client/service/user/UserState;->getStatusIconResourceID(I)I

    move-result v0

    return v0
.end method

.method public getStatusPrecedence()I
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lxmpp/client/service/user/UserState;->getStatus()I

    move-result v0

    invoke-static {v0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v0

    .line 160
    return v0
.end method

.method public getStatusText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"

    .prologue
    .line 165
    iget-object v0, p0, Lxmpp/client/service/user/UserState;->mStatusText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxmpp/client/service/user/UserState;->mStatusText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lxmpp/client/service/user/UserState;->isTemporaryStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lxmpp/client/service/user/UserState;->getStatusTextResourceID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lxmpp/client/service/user/UserState;->mStatusText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStatusTextResourceID()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lxmpp/client/service/user/UserState;->mStatus:I

    invoke-static {v0}, Lxmpp/client/service/user/UserState;->getStatusTextResourceID(I)I

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lxmpp/client/service/user/UserState;->mOnline:Z

    return v0
.end method

.method public isTemporaryStatus()Z
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lxmpp/client/service/user/UserState;->mStatus:I

    if-gez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toPresence()Lorg/jivesoftware/smack/packet/Presence;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 189
    .local v0, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {p0}, Lxmpp/client/service/user/UserState;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lxmpp/client/service/user/UserState;->isTemporaryStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget v1, p0, Lxmpp/client/service/user/UserState;->mStatus:I

    invoke-static {v1}, Lxmpp/client/service/user/UserState;->statusToMode(I)Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 192
    :cond_0
    iget-object v1, p0, Lxmpp/client/service/user/UserState;->mStatusText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lxmpp/client/service/user/UserState;->mStatusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 195
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    .line 196
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 201
    iget-boolean v0, p0, Lxmpp/client/service/user/UserState;->mOnline:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lxmpp/client/service/user/UserState;->mStatusText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget v0, p0, Lxmpp/client/service/user/UserState;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return-void
.end method
