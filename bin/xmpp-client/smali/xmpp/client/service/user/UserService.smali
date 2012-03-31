.class public Lxmpp/client/service/user/UserService;
.super Ljava/lang/Object;
.source "UserService.java"

# interfaces
.implements Lorg/jivesoftware/smack/RosterListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactList:Lxmpp/client/service/user/contact/ContactList;

.field private mRoster:Lorg/jivesoftware/smack/Roster;

.field private final mService:Lxmpp/client/service/Service;

.field private mUserList:Lxmpp/client/service/user/UserList;

.field private mUserMe:Lxmpp/client/service/user/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lxmpp/client/service/user/UserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/user/UserService;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Roster;Lxmpp/client/service/Service;Lxmpp/client/service/user/User;)V
    .locals 1
    .parameter "roster"
    .parameter "service"
    .parameter "userMe"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lxmpp/client/service/user/UserService;->mService:Lxmpp/client/service/Service;

    .line 27
    iput-object p3, p0, Lxmpp/client/service/user/UserService;->mUserMe:Lxmpp/client/service/user/User;

    .line 28
    iput-object p1, p0, Lxmpp/client/service/user/UserService;->mRoster:Lorg/jivesoftware/smack/Roster;

    .line 29
    iget-object v0, p0, Lxmpp/client/service/user/UserService;->mRoster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Roster;->addRosterListener(Lorg/jivesoftware/smack/RosterListener;)V

    .line 30
    new-instance v0, Lxmpp/client/service/user/UserList;

    invoke-direct {v0}, Lxmpp/client/service/user/UserList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    .line 31
    new-instance v0, Lxmpp/client/service/user/contact/ContactList;

    invoke-direct {v0}, Lxmpp/client/service/user/contact/ContactList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/user/UserService;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    .line 32
    invoke-virtual {p0}, Lxmpp/client/service/user/UserService;->buildUserList()V

    .line 33
    return-void
.end method


# virtual methods
.method public addUser(Ljava/lang/String;)Lxmpp/client/service/user/User;
    .locals 1
    .parameter "uid"

    .prologue
    .line 36
    invoke-virtual {p0, p1, p1}, Lxmpp/client/service/user/UserService;->addUser(Ljava/lang/String;Ljava/lang/String;)Lxmpp/client/service/user/User;

    move-result-object v0

    return-object v0
.end method

.method public addUser(Ljava/lang/String;Ljava/lang/String;)Lxmpp/client/service/user/User;
    .locals 3
    .parameter "uid"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 40
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lxmpp/client/service/user/UserService;->getGroups()Lxmpp/client/service/user/group/GroupList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lxmpp/client/service/user/group/GroupList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, p2, v1}, Lxmpp/client/service/user/UserService;->addUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lxmpp/client/service/user/User;

    move-result-object v0

    return-object v0
.end method

.method public addUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lxmpp/client/service/user/User;
    .locals 2
    .parameter "uid"
    .parameter "name"
    .parameter "group"

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lxmpp/client/service/user/UserService;->addUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lxmpp/client/service/user/User;

    move-result-object v0

    return-object v0
.end method

.method public addUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lxmpp/client/service/user/User;
    .locals 3
    .parameter "uid"
    .parameter "name"
    .parameter "groups"

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mRoster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smack/Roster;->createEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    move-result-object v1

    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lxmpp/client/service/user/UserService;->TAG:Ljava/lang/String;

    const-string v2, "addUser"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addUser(Ljava/lang/String;[Ljava/lang/String;)Lxmpp/client/service/user/User;
    .locals 1
    .parameter "uid"
    .parameter "groups"

    .prologue
    .line 58
    invoke-virtual {p0, p1, p1, p2}, Lxmpp/client/service/user/UserService;->addUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lxmpp/client/service/user/User;

    move-result-object v0

    return-object v0
.end method

.method public buildUserList()V
    .locals 5

    .prologue
    .line 62
    iget-object v2, p0, Lxmpp/client/service/user/UserService;->mRoster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Roster;->getEntries()Ljava/util/Collection;

    move-result-object v0

    .line 63
    .local v0, roster:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    invoke-virtual {p0}, Lxmpp/client/service/user/UserService;->transportCheck()V

    .line 67
    return-void

    .line 63
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/RosterEntry;

    .line 64
    .local v1, rosterEntry:Lorg/jivesoftware/smack/RosterEntry;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v0}, Lxmpp/client/service/user/UserList;->clear()V

    .line 71
    iput-object v1, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    .line 72
    iget-object v0, p0, Lxmpp/client/service/user/UserService;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0}, Lxmpp/client/service/user/contact/ContactList;->clear()V

    .line 73
    iput-object v1, p0, Lxmpp/client/service/user/UserService;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    .line 74
    iget-object v0, p0, Lxmpp/client/service/user/UserService;->mRoster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Roster;->removeRosterListener(Lorg/jivesoftware/smack/RosterListener;)V

    .line 75
    iput-object v1, p0, Lxmpp/client/service/user/UserService;->mRoster:Lorg/jivesoftware/smack/Roster;

    .line 76
    iput-object v1, p0, Lxmpp/client/service/user/UserService;->mUserMe:Lxmpp/client/service/user/User;

    .line 77
    return-void
.end method

.method public entriesAdded(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    return-void

    .line 81
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, uid:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    goto :goto_0
.end method

.method public entriesDeleted(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    return-void

    .line 88
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, uid:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    move-result-object v1

    .line 90
    .local v1, user:Lxmpp/client/service/user/User;
    iget-object v3, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v3, v1}, Lxmpp/client/service/user/UserList;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v3, p0, Lxmpp/client/service/user/UserService;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v3, v0}, Lxmpp/client/service/user/contact/ContactList;->removeUser(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lxmpp/client/service/user/UserService;->mService:Lxmpp/client/service/Service;

    invoke-virtual {v3, v0}, Lxmpp/client/service/Service;->sendRosterDeleted(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public entriesUpdated(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    return-void

    .line 98
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, uid:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    move-result-object v2

    .line 100
    .local v2, user:Lxmpp/client/service/user/User;
    iget-object v4, p0, Lxmpp/client/service/user/UserService;->mRoster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Roster;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v0

    .line 101
    .local v0, re:Lorg/jivesoftware/smack/RosterEntry;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lxmpp/client/service/user/User;->setUserName(Ljava/lang/String;)V

    .line 102
    new-instance v4, Lxmpp/client/service/user/group/GroupList;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getGroups()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Lxmpp/client/service/user/group/GroupList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v4}, Lxmpp/client/service/user/User;->setGroups(Lxmpp/client/service/user/group/GroupList;)V

    .line 103
    iget-object v4, p0, Lxmpp/client/service/user/UserService;->mService:Lxmpp/client/service/Service;

    invoke-virtual {v4, v2}, Lxmpp/client/service/Service;->sendRosterUpdated(Lxmpp/client/service/user/User;)V

    goto :goto_0
.end method

.method public getContact(Ljava/lang/String;Z)Lxmpp/client/service/user/contact/Contact;
    .locals 2
    .parameter "uid"
    .parameter "addIfNotExists"

    .prologue
    .line 108
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lxmpp/client/service/user/UserService;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/ContactList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    if-eqz p2, :cond_1

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    .line 116
    :cond_0
    iget-object v0, p0, Lxmpp/client/service/user/UserService;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/ContactList;->get(Ljava/lang/String;)Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    :goto_0
    return-object v0

    .line 113
    :cond_1
    new-instance v0, Lxmpp/client/service/user/contact/Contact;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    move-result-object v1

    invoke-direct {v0, v1}, Lxmpp/client/service/user/contact/Contact;-><init>(Lxmpp/client/service/user/User;)V

    goto :goto_0
.end method

.method public getContact(Lxmpp/client/service/user/User;Z)Lxmpp/client/service/user/contact/Contact;
    .locals 1
    .parameter "user"
    .parameter "addIfNotExists"

    .prologue
    .line 120
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lxmpp/client/service/user/UserService;->getContact(Ljava/lang/String;Z)Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getContactList()Lxmpp/client/service/user/contact/ContactList;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lxmpp/client/service/user/contact/ContactList;

    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-direct {v0, v1}, Lxmpp/client/service/user/contact/ContactList;-><init>(Lxmpp/client/service/user/UserList;)V

    return-object v0
.end method

.method getGroups()Lxmpp/client/service/user/group/GroupList;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lxmpp/client/service/user/group/GroupList;

    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mRoster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Roster;->getGroups()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lxmpp/client/service/user/group/GroupList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;
    .locals 1
    .parameter "uid"
    .parameter "addIfNotExists"

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;ZZ)Lxmpp/client/service/user/User;

    move-result-object v0

    return-object v0
.end method

.method public getUser(Ljava/lang/String;ZZ)Lxmpp/client/service/user/User;
    .locals 4
    .parameter "uid"
    .parameter "addIfNotExists"
    .parameter "setupIfNotExists"

    .prologue
    .line 137
    iget-object v2, p0, Lxmpp/client/service/user/UserService;->mUserMe:Lxmpp/client/service/user/User;

    invoke-virtual {v2}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mUserMe:Lxmpp/client/service/user/User;

    .line 158
    :cond_0
    :goto_0
    return-object v1

    .line 141
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v2}, Lxmpp/client/service/user/UserList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 147
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v2}, Lxmpp/client/service/user/UserList;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 155
    if-eqz p3, :cond_6

    .line 156
    invoke-virtual {p0, p1, p2}, Lxmpp/client/service/user/UserService;->setupUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    move-result-object v1

    goto :goto_0

    .line 142
    :cond_2
    iget-object v2, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v2, v0}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/user/User;

    .line 143
    .local v1, user:Lxmpp/client/service/user/User;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lxmpp/client/service/user/User;->getFullUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    .end local v1           #user:Lxmpp/client/service/user/User;
    :cond_4
    iget-object v2, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v2, v0}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/user/User;

    .line 149
    .restart local v1       #user:Lxmpp/client/service/user/User;
    if-eqz v1, :cond_5

    .line 150
    invoke-virtual {v1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    .end local v1           #user:Lxmpp/client/service/user/User;
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getUserList()Lxmpp/client/service/user/UserList;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    return-object v0
.end method

.method public getUserMe()Lxmpp/client/service/user/User;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lxmpp/client/service/user/UserService;->mUserMe:Lxmpp/client/service/user/User;

    return-object v0
.end method

.method public presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 4
    .parameter "presence"

    .prologue
    .line 172
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;ZZ)Lxmpp/client/service/user/User;

    move-result-object v0

    .line 173
    .local v0, user:Lxmpp/client/service/user/User;
    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v1, Lxmpp/client/service/user/UserState;

    invoke-direct {v1, p1}, Lxmpp/client/service/user/UserState;-><init>(Lorg/jivesoftware/smack/packet/Presence;)V

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/User;->setUserState(Lxmpp/client/service/user/UserState;)V

    .line 177
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/User;->setRessource(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mService:Lxmpp/client/service/Service;

    invoke-virtual {v1, v0}, Lxmpp/client/service/Service;->sendRosterUpdated(Lxmpp/client/service/user/User;)V

    goto :goto_0
.end method

.method public setUserMe(Lxmpp/client/service/user/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 215
    iput-object p1, p0, Lxmpp/client/service/user/UserService;->mUserMe:Lxmpp/client/service/user/User;

    .line 216
    return-void
.end method

.method public setupUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;
    .locals 6
    .parameter "uid"
    .parameter "addIfNotExists"

    .prologue
    .line 182
    iget-object v3, p0, Lxmpp/client/service/user/UserService;->mRoster:Lorg/jivesoftware/smack/Roster;

    .line 183
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Roster;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v0

    .line 184
    .local v0, re:Lorg/jivesoftware/smack/RosterEntry;
    if-eqz v0, :cond_1

    .line 185
    new-instance v2, Lxmpp/client/service/user/User;

    iget-object v3, p0, Lxmpp/client/service/user/UserService;->mRoster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Roster;->getPresence(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lxmpp/client/service/user/User;-><init>(Lorg/jivesoftware/smack/RosterEntry;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 186
    .local v2, user:Lxmpp/client/service/user/User;
    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {p0, v2}, Lxmpp/client/service/user/UserService;->setupUser(Lxmpp/client/service/user/User;)Lxmpp/client/service/user/User;

    .line 195
    .end local v2           #user:Lxmpp/client/service/user/User;
    :cond_0
    :goto_0
    return-object v2

    .line 191
    :cond_1
    sget-object v3, Lxmpp/client/service/user/UserService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "creating Invalid user for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v1, Lxmpp/client/service/user/User;

    invoke-direct {v1}, Lxmpp/client/service/user/User;-><init>()V

    .line 193
    .local v1, u:Lxmpp/client/service/user/User;
    invoke-virtual {v1, p1}, Lxmpp/client/service/user/User;->setUserLogin(Ljava/lang/String;)V

    .line 194
    sget-object v3, Lxmpp/client/service/user/UserState;->Invalid:Lxmpp/client/service/user/UserState;

    invoke-virtual {v1, v3}, Lxmpp/client/service/user/User;->setUserState(Lxmpp/client/service/user/UserState;)V

    move-object v2, v1

    .line 195
    goto :goto_0
.end method

.method public setupUser(Lxmpp/client/service/user/User;)Lxmpp/client/service/user/User;
    .locals 3
    .parameter "user"

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getFullUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v2}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;ZZ)Lxmpp/client/service/user/User;

    move-result-object v0

    .line 201
    .local v0, user2:Lxmpp/client/service/user/User;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v1

    sget-object v2, Lxmpp/client/service/user/UserState;->Invalid:Lxmpp/client/service/user/UserState;

    if-ne v1, v2, :cond_1

    .line 202
    :cond_0
    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v1, v0}, Lxmpp/client/service/user/UserList;->remove(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getFullUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxmpp/client/service/user/contact/ContactList;->removeUser(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mService:Lxmpp/client/service/Service;

    invoke-virtual {v0}, Lxmpp/client/service/user/User;->getFullUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxmpp/client/service/Service;->sendRosterDeleted(Ljava/lang/String;)V

    .line 208
    :cond_1
    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v1, p1}, Lxmpp/client/service/user/UserList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v1, p1}, Lxmpp/client/service/user/contact/ContactList;->add(Lxmpp/client/service/user/User;)V

    .line 210
    iget-object v1, p0, Lxmpp/client/service/user/UserService;->mService:Lxmpp/client/service/Service;

    invoke-virtual {v1, p1}, Lxmpp/client/service/Service;->sendRosterAdded(Lxmpp/client/service/user/User;)V

    .line 211
    return-object v0
.end method

.method transportCheck()V
    .locals 6

    .prologue
    .line 219
    new-instance v1, Lxmpp/client/service/user/UserList;

    invoke-direct {v1}, Lxmpp/client/service/user/UserList;-><init>()V

    .line 220
    .local v1, transportList:Lxmpp/client/service/user/UserList;
    iget-object v3, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v3}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 226
    iget-object v3, p0, Lxmpp/client/service/user/UserService;->mUserList:Lxmpp/client/service/user/UserList;

    invoke-virtual {v3}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 233
    return-void

    .line 220
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/User;

    .line 221
    .local v2, user:Lxmpp/client/service/user/User;
    invoke-virtual {v2}, Lxmpp/client/service/user/User;->getTransportState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 222
    invoke-virtual {v1, v2}, Lxmpp/client/service/user/UserList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    .end local v2           #user:Lxmpp/client/service/user/User;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/user/User;

    .line 227
    .restart local v2       #user:Lxmpp/client/service/user/User;
    invoke-virtual {v1, v2}, Lxmpp/client/service/user/UserList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 228
    invoke-virtual {v1}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;

    .line 229
    .local v0, transport:Lxmpp/client/service/user/User;
    invoke-virtual {v2, v0}, Lxmpp/client/service/user/User;->transportCheck(Lxmpp/client/service/user/User;)Z

    goto :goto_1
.end method

.method public updateUser(Lxmpp/client/service/user/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 236
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lxmpp/client/service/user/UserService;->getUser(Ljava/lang/String;Z)Lxmpp/client/service/user/User;

    move-result-object v0

    .line 237
    .local v0, u:Lxmpp/client/service/user/User;
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/User;->setUserContact(Ljava/lang/String;)V

    .line 238
    return-void
.end method
