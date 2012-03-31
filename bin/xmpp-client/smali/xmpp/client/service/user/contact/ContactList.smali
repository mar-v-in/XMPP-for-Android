.class public Lxmpp/client/service/user/contact/ContactList;
.super Ljava/util/ArrayList;
.source "ContactList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lxmpp/client/service/user/contact/Contact;",
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
            "Lxmpp/client/service/user/contact/ContactList;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mHideTransports:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lxmpp/client/service/user/contact/ContactList$1;

    invoke-direct {v0}, Lxmpp/client/service/user/contact/ContactList$1;-><init>()V

    sput-object v0, Lxmpp/client/service/user/contact/ContactList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxmpp/client/service/user/contact/ContactList;->mHideTransports:Z

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    const/4 v2, 0x1

    iput-boolean v2, p0, Lxmpp/client/service/user/contact/ContactList;->mHideTransports:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 39
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    const-class v2, Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {p0, v2}, Lxmpp/client/service/user/contact/ContactList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lxmpp/client/service/user/contact/ContactList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lxmpp/client/service/user/contact/ContactList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lxmpp/client/service/user/UserList;)V
    .locals 3
    .parameter "userList"

    .prologue
    .line 45
    invoke-direct {p0}, Lxmpp/client/service/user/contact/ContactList;-><init>()V

    .line 46
    invoke-virtual {p1}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    return-void

    .line 46
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;

    .line 47
    .local v0, user:Lxmpp/client/service/user/User;
    invoke-virtual {p0, v0}, Lxmpp/client/service/user/contact/ContactList;->add(Lxmpp/client/service/user/User;)V

    goto :goto_0
.end method

.method private declared-synchronized getGroup(Ljava/lang/CharSequence;)Lxmpp/client/service/user/contact/ContactList;
    .locals 6
    .parameter "activeGroup"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    new-instance v1, Lxmpp/client/service/user/contact/ContactList;

    invoke-direct {v1}, Lxmpp/client/service/user/contact/ContactList;-><init>()V

    .line 94
    .local v1, list:Lxmpp/client/service/user/contact/ContactList;
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 103
    monitor-exit p0

    return-object v1

    .line 94
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 95
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v4

    invoke-virtual {v4}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/User;

    .line 96
    .local v2, user:Lxmpp/client/service/user/User;
    invoke-virtual {v2}, Lxmpp/client/service/user/User;->getGroups()Lxmpp/client/service/user/group/GroupList;

    move-result-object v5

    invoke-virtual {v5, p1}, Lxmpp/client/service/user/group/GroupList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    invoke-virtual {v1, v0}, Lxmpp/client/service/user/contact/ContactList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v0           #contact:Lxmpp/client/service/user/contact/Contact;
    .end local v1           #list:Lxmpp/client/service/user/contact/ContactList;
    .end local v2           #user:Lxmpp/client/service/user/User;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized add(Lxmpp/client/service/user/User;)V
    .locals 5
    .parameter "user"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    new-instance v2, Lxmpp/client/service/user/contact/Contact;

    invoke-direct {v2, p1}, Lxmpp/client/service/user/contact/Contact;-><init>(Lxmpp/client/service/user/User;)V

    invoke-virtual {p0, v2}, Lxmpp/client/service/user/contact/ContactList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 53
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/Contact;->add(Lxmpp/client/service/user/User;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    .end local v0           #contact:Lxmpp/client/service/user/contact/Contact;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 57
    .restart local v0       #contact:Lxmpp/client/service/user/contact/Contact;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->isMUCUser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lxmpp/client/service/user/User;->getAdditionalInformation(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, jid:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/contact/Contact;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/Contact;->add(Lxmpp/client/service/user/User;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 3
    .parameter "uid"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 74
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 69
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 70
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/Contact;->contains(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 69
    .end local v0           #contact:Lxmpp/client/service/user/contact/Contact;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lxmpp/client/service/user/contact/Contact;
    .locals 3
    .parameter "uid"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 89
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 84
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 85
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/Contact;->contains(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 84
    .end local v0           #contact:Lxmpp/client/service/user/contact/Contact;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getInGroup(Ljava/lang/CharSequence;I)Lxmpp/client/service/user/contact/Contact;
    .locals 1
    .parameter "activeGroup"
    .parameter "position"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lxmpp/client/service/user/contact/ContactList;->getGroup(Ljava/lang/CharSequence;)Lxmpp/client/service/user/contact/ContactList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lxmpp/client/service/user/contact/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOnline(I)Lxmpp/client/service/user/contact/Contact;
    .locals 3
    .parameter "i"

    .prologue
    .line 112
    monitor-enter p0

    const/4 v0, 0x0

    .line 113
    .local v0, c:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lt v1, v2, :cond_0

    .line 122
    const/4 v2, 0x0

    :goto_1
    monitor-exit p0

    return-object v2

    .line 114
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lxmpp/client/service/user/contact/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v2}, Lxmpp/client/service/user/contact/Contact;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v2

    invoke-virtual {v2}, Lxmpp/client/service/user/UserState;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    if-ne v0, p1, :cond_1

    .line 116
    invoke-virtual {p0, v1}, Lxmpp/client/service/user/contact/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/contact/Contact;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 113
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized groupSize(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "activeGroup"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lxmpp/client/service/user/contact/ContactList;->getGroup(Ljava/lang/CharSequence;)Lxmpp/client/service/user/contact/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lxmpp/client/service/user/contact/ContactList;->sizeVisible()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeUser(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 136
    :goto_0
    monitor-exit p0

    return-void

    .line 130
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 131
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/Contact;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/Contact;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    .end local v0           #contact:Lxmpp/client/service/user/contact/Contact;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sizeOffline()I
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->sizeVisible()I

    move-result v0

    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->sizeOnline()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sizeOnline()I
    .locals 4

    .prologue
    .line 143
    monitor-enter p0

    const/4 v1, 0x0

    .line 144
    .local v1, num:I
    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 152
    monitor-exit p0

    return v1

    .line 144
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 145
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUser()Lxmpp/client/service/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lxmpp/client/service/user/User;->isInvisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v3

    invoke-virtual {v3}, Lxmpp/client/service/user/UserState;->isOnline()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0           #contact:Lxmpp/client/service/user/contact/Contact;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized sizeVisible()I
    .locals 4

    .prologue
    .line 157
    monitor-enter p0

    const/4 v1, 0x0

    .line 158
    .local v1, i:I
    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 163
    monitor-exit p0

    return v1

    .line 158
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 159
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUser()Lxmpp/client/service/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lxmpp/client/service/user/User;->isInvisible()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0           #contact:Lxmpp/client/service/user/contact/Contact;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized sort()V
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lxmpp/client/service/user/contact/ContactList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_0

    .line 179
    monitor-exit p0

    return-void

    .line 177
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lxmpp/client/service/user/contact/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
