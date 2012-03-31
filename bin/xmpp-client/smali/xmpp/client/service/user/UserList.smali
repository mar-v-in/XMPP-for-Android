.class public Lxmpp/client/service/user/UserList;
.super Ljava/util/ArrayList;
.source "UserList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lxmpp/client/service/user/User;",
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
            "Lxmpp/client/service/user/UserList;",
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
    new-instance v0, Lxmpp/client/service/user/UserList$1;

    invoke-direct {v0}, Lxmpp/client/service/user/UserList$1;-><init>()V

    sput-object v0, Lxmpp/client/service/user/UserList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
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

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 35
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 38
    return-void

    .line 36
    :cond_0
    const-class v2, Lxmpp/client/service/user/User;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/User;

    invoke-virtual {p0, v2}, Lxmpp/client/service/user/UserList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lxmpp/client/service/user/UserList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lxmpp/client/service/user/UserList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private declared-synchronized getGroup(Ljava/lang/CharSequence;)Lxmpp/client/service/user/UserList;
    .locals 4
    .parameter "activeGroup"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    new-instance v1, Lxmpp/client/service/user/UserList;

    invoke-direct {v1}, Lxmpp/client/service/user/UserList;-><init>()V

    .line 48
    .local v1, rel:Lxmpp/client/service/user/UserList;
    invoke-virtual {p0}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 53
    monitor-exit p0

    return-object v1

    .line 48
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;

    .line 49
    .local v0, re:Lxmpp/client/service/user/User;
    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getGroups()Lxmpp/client/service/user/group/GroupList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lxmpp/client/service/user/group/GroupList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v1, v0}, Lxmpp/client/service/user/UserList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    .end local v0           #re:Lxmpp/client/service/user/User;
    .end local v1           #rel:Lxmpp/client/service/user/UserList;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getInGroup(Ljava/lang/CharSequence;I)Lxmpp/client/service/user/User;
    .locals 1
    .parameter "activeGroup"
    .parameter "position"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lxmpp/client/service/user/UserList;->getGroup(Ljava/lang/CharSequence;)Lxmpp/client/service/user/UserList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOnline(I)Lxmpp/client/service/user/User;
    .locals 3
    .parameter "i"

    .prologue
    .line 61
    monitor-enter p0

    const/4 v0, 0x0

    .line 62
    .local v0, c:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/UserList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lt v1, v2, :cond_0

    .line 71
    const/4 v2, 0x0

    :goto_1
    monitor-exit p0

    return-object v2

    .line 63
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/User;

    invoke-virtual {v2}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v2

    invoke-virtual {v2}, Lxmpp/client/service/user/UserState;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    if-ne v0, p1, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/User;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 62
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized groupSize(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "activeGroup"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lxmpp/client/service/user/UserList;->getGroup(Ljava/lang/CharSequence;)Lxmpp/client/service/user/UserList;

    move-result-object v0

    invoke-virtual {v0}, Lxmpp/client/service/user/UserList;->sizeVisible()I
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

.method public declared-synchronized sizeOffline()I
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/UserList;->sizeVisible()I

    move-result v0

    invoke-virtual {p0}, Lxmpp/client/service/user/UserList;->sizeOnline()I
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
    .line 83
    monitor-enter p0

    const/4 v0, 0x0

    .line 84
    .local v0, num:I
    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 89
    monitor-exit p0

    return v0

    .line 84
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/user/User;

    .line 85
    .local v1, user:Lxmpp/client/service/user/User;
    invoke-virtual {v1}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v3

    invoke-virtual {v3}, Lxmpp/client/service/user/UserState;->isOnline()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lxmpp/client/service/user/User;->isInvisible()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v1           #user:Lxmpp/client/service/user/User;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized sizeVisible()I
    .locals 4

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x0

    .line 94
    .local v0, num:I
    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 99
    monitor-exit p0

    return v0

    .line 94
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/user/User;

    .line 95
    .local v1, user:Lxmpp/client/service/user/User;
    invoke-virtual {v1}, Lxmpp/client/service/user/User;->isInvisible()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v1           #user:Lxmpp/client/service/user/User;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized sort()V
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 103
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
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/user/UserList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lxmpp/client/service/user/UserList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_0

    .line 112
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
