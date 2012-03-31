.class public Lorg/jivesoftware/smackx/packet/RosterExchange;
.super Ljava/lang/Object;
.source "RosterExchange.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# instance fields
.field private final remoteRosterEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/RemoteRosterEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/RosterExchange;->remoteRosterEntries:Ljava/util/List;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Roster;)V
    .locals 3
    .parameter "roster"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smackx/packet/RosterExchange;->remoteRosterEntries:Ljava/util/List;

    .line 82
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Roster;->getEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    return-void

    .line 82
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    .line 83
    .local v0, rosterEntry:Lorg/jivesoftware/smack/RosterEntry;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/RosterExchange;->addRosterEntry(Lorg/jivesoftware/smack/RosterEntry;)V

    goto :goto_0
.end method


# virtual methods
.method public addRosterEntry(Lorg/jivesoftware/smack/RosterEntry;)V
    .locals 6
    .parameter "rosterEntry"

    .prologue
    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, groupNamesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getGroups()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 115
    .local v1, groupNames:[Ljava/lang/String;
    new-instance v3, Lorg/jivesoftware/smackx/RemoteRosterEntry;

    .line 116
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-direct {v3, v4, v5, v1}, Lorg/jivesoftware/smackx/RemoteRosterEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    .local v3, remoteRosterEntry:Lorg/jivesoftware/smackx/RemoteRosterEntry;
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/packet/RosterExchange;->addRosterEntry(Lorg/jivesoftware/smackx/RemoteRosterEntry;)V

    .line 119
    return-void

    .line 109
    .end local v1           #groupNames:[Ljava/lang/String;
    .end local v3           #remoteRosterEntry:Lorg/jivesoftware/smackx/RemoteRosterEntry;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterGroup;

    .line 110
    .local v0, group:Lorg/jivesoftware/smack/RosterGroup;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addRosterEntry(Lorg/jivesoftware/smackx/RemoteRosterEntry;)V
    .locals 2
    .parameter "remoteRosterEntry"

    .prologue
    .line 94
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/RosterExchange;->remoteRosterEntries:Ljava/util/List;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/RosterExchange;->remoteRosterEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    monitor-exit v1

    .line 97
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "x"

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/RosterExchange;->remoteRosterEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "jabber:x:roster"

    return-object v0
.end method

.method public getRosterEntries()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/RemoteRosterEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/RosterExchange;->remoteRosterEntries:Ljava/util/List;

    monitor-enter v2

    .line 160
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 161
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/RosterExchange;->remoteRosterEntries:Ljava/util/List;

    .line 160
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 162
    .local v0, entries:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/RemoteRosterEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 159
    .end local v0           #entries:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/RemoteRosterEntry;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/RosterExchange;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xmlns=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/RosterExchange;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/RosterExchange;->getRosterEntries()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/RemoteRosterEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/RosterExchange;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 193
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/RemoteRosterEntry;

    .line 194
    .local v2, remoteRosterEntry:Lorg/jivesoftware/smackx/RemoteRosterEntry;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/RemoteRosterEntry;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
