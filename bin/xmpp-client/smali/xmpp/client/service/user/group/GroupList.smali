.class public Lxmpp/client/service/user/group/GroupList;
.super Ljava/util/ArrayList;
.source "GroupList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
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
            "Lxmpp/client/service/user/group/GroupList;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lxmpp/client/service/user/group/GroupList$1;

    invoke-direct {v0}, Lxmpp/client/service/user/group/GroupList$1;-><init>()V

    sput-object v0, Lxmpp/client/service/user/group/GroupList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 49
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 52
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lxmpp/client/service/user/group/GroupList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lxmpp/client/service/user/group/GroupList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lxmpp/client/service/user/group/GroupList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, groups:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterGroup;>;"
    invoke-direct {p0}, Lxmpp/client/service/user/group/GroupList;-><init>()V

    .line 40
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    return-void

    .line 40
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/RosterGroup;

    .line 41
    .local v1, rosterGroup2:Lorg/jivesoftware/smack/RosterGroup;
    move-object v0, v1

    .line 42
    .local v0, rosterGroup:Lorg/jivesoftware/smack/RosterGroup;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxmpp/client/service/user/group/GroupList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 62
    instance-of v0, p1, Lxmpp/client/service/user/group/GroupList;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 63
    check-cast v0, Lxmpp/client/service/user/group/GroupList;

    invoke-virtual {v0}, Lxmpp/client/service/user/group/GroupList;->size()I

    move-result v0

    invoke-virtual {p0}, Lxmpp/client/service/user/group/GroupList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 64
    check-cast p1, Lxmpp/client/service/user/group/GroupList;

    .end local p1
    invoke-virtual {p1, p0}, Lxmpp/client/service/user/group/GroupList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fillFromContactList(Lxmpp/client/service/user/contact/ContactList;)V
    .locals 5
    .parameter "contactList"

    .prologue
    .line 73
    invoke-virtual {p0}, Lxmpp/client/service/user/group/GroupList;->clear()V

    .line 74
    invoke-virtual {p1}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    invoke-virtual {p0}, Lxmpp/client/service/user/group/GroupList;->sort()V

    .line 82
    return-void

    .line 74
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 75
    .local v0, Contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getGroups()Lxmpp/client/service/user/group/GroupList;

    move-result-object v3

    invoke-virtual {v3}, Lxmpp/client/service/user/group/GroupList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, group:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lxmpp/client/service/user/group/GroupList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 77
    invoke-virtual {p0, v1}, Lxmpp/client/service/user/group/GroupList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sort()V
    .locals 0

    .prologue
    .line 85
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 90
    invoke-virtual {p0}, Lxmpp/client/service/user/group/GroupList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lxmpp/client/service/user/group/GroupList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 94
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, v0}, Lxmpp/client/service/user/group/GroupList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
