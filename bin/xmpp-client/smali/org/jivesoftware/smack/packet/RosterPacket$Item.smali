.class public Lorg/jivesoftware/smack/packet/RosterPacket$Item;
.super Ljava/lang/Object;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final groupNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

.field private itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field private name:Ljava/lang/String;

.field private final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "user"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 63
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    .line 65
    return-void
.end method


# virtual methods
.method public addGroupName(Ljava/lang/String;)V
    .locals 1
    .parameter "groupName"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public getGroupNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getItemStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    return-object v0
.end method

.method public getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    return-object v0
.end method

.method public removeGroupName(Ljava/lang/String;)V
    .locals 1
    .parameter "groupName"

    .prologue
    .line 130
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V
    .locals 0
    .parameter "itemStatus"

    .prologue
    .line 140
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 141
    return-void
.end method

.method public setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V
    .locals 0
    .parameter "itemType"

    .prologue
    .line 150
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 151
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 160
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<item jid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 167
    const-string v2, " name=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 168
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eqz v2, :cond_1

    .line 171
    const-string v2, " subscription=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    if-eqz v2, :cond_2

    .line 174
    const-string v2, " ask=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_2
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 182
    const-string v2, "</item>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 177
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, groupName:Ljava/lang/String;
    const-string v3, "<group>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    const-string v4, "</group>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
