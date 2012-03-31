.class public Lorg/jivesoftware/smack/RosterEntry;
.super Ljava/lang/Object;
.source "RosterEntry.java"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private name:Ljava/lang/String;

.field private final roster:Lorg/jivesoftware/smack/Roster;

.field private status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

.field private type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field private final user:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter "user"
    .parameter "name"
    .parameter "type"
    .parameter "status"
    .parameter "roster"
    .parameter "connection"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 80
    iput-object p4, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 81
    iput-object p5, p0, Lorg/jivesoftware/smack/RosterEntry;->roster:Lorg/jivesoftware/smack/Roster;

    .line 82
    iput-object p6, p0, Lorg/jivesoftware/smack/RosterEntry;->connection:Lorg/jivesoftware/smack/Connection;

    .line 83
    return-void
.end method

.method static toRosterItem(Lorg/jivesoftware/smack/RosterEntry;)Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .locals 4
    .parameter "entry"

    .prologue
    .line 41
    new-instance v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    .line 44
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V

    .line 46
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getGroups()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    return-object v1

    .line 46
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterGroup;

    .line 47
    .local v0, group:Lorg/jivesoftware/smack/RosterGroup;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 87
    if-ne p0, p1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 93
    .end local p1
    :goto_0
    return v0

    .line 90
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/jivesoftware/smack/RosterEntry;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    check-cast p1, Lorg/jivesoftware/smack/RosterEntry;

    .end local p1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 93
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsDeep(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-ne p0, p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 117
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 119
    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    .line 120
    .local v0, other:Lorg/jivesoftware/smack/RosterEntry;
    iget-object v3, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 121
    iget-object v3, v0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_4
    iget-object v3, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 125
    goto :goto_0

    .line 127
    :cond_5
    iget-object v3, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    if-nez v3, :cond_6

    .line 128
    iget-object v3, v0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    if-eqz v3, :cond_7

    move v1, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_6
    iget-object v3, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    iget-object v4, v0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 132
    goto :goto_0

    .line 134
    :cond_7
    iget-object v3, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-nez v3, :cond_8

    .line 135
    iget-object v3, v0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eqz v3, :cond_9

    move v1, v2

    .line 136
    goto :goto_0

    .line 138
    :cond_8
    iget-object v3, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    iget-object v4, v0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 139
    goto :goto_0

    .line 141
    :cond_9
    iget-object v3, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 142
    iget-object v3, v0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 143
    goto :goto_0

    .line 145
    :cond_a
    iget-object v3, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 146
    goto :goto_0
.end method

.method public getGroups()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, results:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/RosterGroup;>;"
    iget-object v2, p0, Lorg/jivesoftware/smack/RosterEntry;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Roster;->getGroups()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2

    .line 161
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterGroup;

    .line 162
    .local v0, group:Lorg/jivesoftware/smack/RosterGroup;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/RosterGroup;->contains(Lorg/jivesoftware/smack/RosterEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    .line 222
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 223
    .local v0, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 224
    invoke-static {p0}, Lorg/jivesoftware/smack/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/RosterEntry;)Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 225
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterEntry;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 232
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    iget-object v4, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getGroups()Ljava/util/Collection;

    move-result-object v2

    .line 236
    .local v2, groups:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterGroup;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    const-string v4, " ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 239
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smack/RosterGroup;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/RosterGroup;

    .line 240
    .local v1, group:Lorg/jivesoftware/smack/RosterGroup;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 246
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .end local v1           #group:Lorg/jivesoftware/smack/RosterGroup;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smack/RosterGroup;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 242
    .restart local v1       #group:Lorg/jivesoftware/smack/RosterGroup;
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smack/RosterGroup;>;"
    :cond_2
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #group:Lorg/jivesoftware/smack/RosterGroup;
    check-cast v1, Lorg/jivesoftware/smack/RosterGroup;

    .line 244
    .restart local v1       #group:Lorg/jivesoftware/smack/RosterGroup;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method updateState(Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "status"

    .prologue
    .line 264
    iput-object p1, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    .line 265
    iput-object p2, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 266
    iput-object p3, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 267
    return-void
.end method
