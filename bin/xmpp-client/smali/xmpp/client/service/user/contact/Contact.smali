.class public Lxmpp/client/service/user/contact/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

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
        "Lxmpp/client/service/user/contact/Contact;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lxmpp/client/service/user/contact/Contact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUnreadMessageCount:I

.field private mUserContact:Ljava/lang/String;

.field private final mUserList:Lxmpp/client/service/user/UserList;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lxmpp/client/service/user/contact/Contact$1;

    invoke-direct {v0}, Lxmpp/client/service/user/contact/Contact$1;-><init>()V

    sput-object v0, Lxmpp/client/service/user/contact/Contact;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lxmpp/client/service/user/UserList;

    invoke-direct {v0}, Lxmpp/client/service/user/UserList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lxmpp/client/service/user/contact/Contact;->mUnreadMessageCount:I

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lxmpp/client/service/user/UserList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/UserList;

    iput-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserContact:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lxmpp/client/service/user/contact/Contact;->mUnreadMessageCount:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lxmpp/client/service/user/contact/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lxmpp/client/service/user/contact/Contact;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lxmpp/client/service/user/User;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 44
    invoke-direct {p0}, Lxmpp/client/service/user/contact/Contact;-><init>()V

    .line 45
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/UserList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserName:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public add(Lxmpp/client/service/user/User;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 50
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/UserList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v0}, Lxmpp/client/service/user/UserList;->sort()V

    .line 52
    return-void
.end method

.method public clearUnreadMessages()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lxmpp/client/service/user/contact/Contact;->mUnreadMessageCount:I

    .line 56
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {p0, p1}, Lxmpp/client/service/user/contact/Contact;->compareTo(Lxmpp/client/service/user/contact/Contact;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lxmpp/client/service/user/contact/Contact;)I
    .locals 3
    .parameter "another"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/Contact;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;

    invoke-virtual {p1}, Lxmpp/client/service/user/contact/Contact;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/user/User;

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/User;->compareTo(Lxmpp/client/service/user/User;)I

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 64
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/Contact;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v1

    invoke-virtual {v1}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 64
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;

    .line 65
    .local v0, user:Lxmpp/client/service/user/User;
    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 66
    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getFullUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public contains(Lxmpp/client/service/user/User;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 74
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxmpp/client/service/user/contact/Contact;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lxmpp/client/service/user/User;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 91
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxmpp/client/service/user/contact/Contact;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lxmpp/client/service/user/contact/Contact;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 84
    invoke-virtual {p1}, Lxmpp/client/service/user/contact/Contact;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lxmpp/client/service/user/contact/Contact;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "mContext"

    .prologue
    .line 98
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/Contact;->getUser()Lxmpp/client/service/user/User;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/User;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getGroups()Lxmpp/client/service/user/group/GroupList;
    .locals 6

    .prologue
    .line 102
    new-instance v1, Lxmpp/client/service/user/group/GroupList;

    invoke-direct {v1}, Lxmpp/client/service/user/group/GroupList;-><init>()V

    .line 103
    .local v1, groupList:Lxmpp/client/service/user/group/GroupList;
    iget-object v3, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v3}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    return-object v1

    .line 103
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/User;

    .line 104
    .local v2, user:Lxmpp/client/service/user/User;
    invoke-virtual {v2}, Lxmpp/client/service/user/User;->getGroups()Lxmpp/client/service/user/group/GroupList;

    move-result-object v4

    invoke-virtual {v4}, Lxmpp/client/service/user/group/GroupList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, group:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lxmpp/client/service/user/group/GroupList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 106
    invoke-virtual {v1, v0}, Lxmpp/client/service/user/group/GroupList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getUnreadMessages()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lxmpp/client/service/user/contact/Contact;->mUnreadMessageCount:I

    return v0
.end method

.method public getUser()Lxmpp/client/service/user/User;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;

    return-object v0
.end method

.method public getUserContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserContact:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLogin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;

    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserLogins()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 130
    iget-object v3, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v3}, Lxmpp/client/service/user/UserList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 131
    .local v1, logins:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 132
    .local v0, i:I
    iget-object v3, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v3}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    return-object v1

    .line 132
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/User;

    .line 133
    .local v2, user:Lxmpp/client/service/user/User;
    invoke-virtual {v2}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserState()Lxmpp/client/service/user/UserState;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/Contact;->getUser()Lxmpp/client/service/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v0

    return-object v0
.end method

.method public getUsers()Lxmpp/client/service/user/UserList;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    return-object v0
.end method

.method public increaseUnreadMessages()V
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lxmpp/client/service/user/contact/Contact;->mUnreadMessageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lxmpp/client/service/user/contact/Contact;->mUnreadMessageCount:I

    .line 153
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 156
    iget-object v1, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v1}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;

    .line 157
    .local v0, user:Lxmpp/client/service/user/User;
    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getFullUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :cond_2
    iget-object v1, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v1, v0}, Lxmpp/client/service/user/UserList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setUserContact(Ljava/lang/String;)V
    .locals 0
    .parameter "userContact"

    .prologue
    .line 166
    iput-object p1, p0, Lxmpp/client/service/user/contact/Contact;->mUserContact:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 170
    iput-object p1, p0, Lxmpp/client/service/user/contact/Contact;->mUserName:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 175
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 176
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lxmpp/client/service/user/contact/Contact;->mUserContact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lxmpp/client/service/user/contact/Contact;->mUnreadMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return-void
.end method
