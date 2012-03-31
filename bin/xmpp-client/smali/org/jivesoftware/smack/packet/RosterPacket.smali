.class public Lorg/jivesoftware/smack/packet/RosterPacket;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/RosterPacket$Item;,
        Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;,
        Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    }
.end annotation


# instance fields
.field private final rosterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/RosterPacket$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 278
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/List;

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    monitor-exit v1

    .line 281
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<query xmlns=\"jabber:iq:roster\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/List;

    monitor-enter v3

    .line 288
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    const-string v2, "</query>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 288
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 289
    .local v1, entry:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 287
    .end local v1           #entry:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getRosterItemCount()I
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/List;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRosterItems()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/packet/RosterPacket$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/List;

    monitor-enter v1

    .line 315
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket;->rosterItems:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 314
    monitor-exit v1

    return-object v0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
