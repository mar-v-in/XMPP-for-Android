.class public Lorg/jivesoftware/smackx/workgroup/user/Workgroup;
.super Ljava/lang/Object;
.source "Workgroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;
    }
.end annotation


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private inQueue:Z

.field private final invitationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final queueListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/user/QueueListener;",
            ">;"
        }
    .end annotation
.end field

.field private queuePosition:I

.field private queueRemainingTime:I

.field private final workgroupJID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .parameter "workgroupJID"
    .parameter "connection"

    .prologue
    const/4 v1, -0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queuePosition:I

    .line 121
    iput v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueRemainingTime:I

    .line 137
    invoke-virtual {p2}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 139
    const-string v2, "Must login to server before creating workgroup."

    .line 138
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    .line 149
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$1;-><init>(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;)V

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->addQueueListener(Lorg/jivesoftware/smackx/workgroup/user/QueueListener;)V

    .line 178
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$2;-><init>(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;)V

    .line 177
    invoke-static {p2, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->addInvitationListener(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/muc/InvitationListener;)V

    .line 190
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 192
    .local v0, typeFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$3;-><init>(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;)V

    invoke-virtual {p2, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 198
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queuePosition:I

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueRemainingTime:I

    return-void
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method private fireInvitationEvent(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;)V
    .locals 4
    .parameter "invitation"

    .prologue
    .line 273
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    monitor-enter v2

    .line 274
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    monitor-exit v2

    .line 278
    return-void

    .line 274
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;

    .line 275
    .local v0, listener:Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;
    invoke-interface {v0, p1}, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;->invitationReceived(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;)V

    goto :goto_0

    .line 273
    .end local v0           #listener:Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fireQueueDepartedEvent()V
    .locals 4

    .prologue
    .line 281
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v2

    .line 282
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    monitor-exit v2

    .line 286
    return-void

    .line 282
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;

    .line 283
    .local v0, listener:Lorg/jivesoftware/smackx/workgroup/user/QueueListener;
    invoke-interface {v0}, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;->departedQueue()V

    goto :goto_0

    .line 281
    .end local v0           #listener:Lorg/jivesoftware/smackx/workgroup/user/QueueListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fireQueueJoinedEvent()V
    .locals 4

    .prologue
    .line 289
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v2

    .line 290
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 289
    monitor-exit v2

    .line 294
    return-void

    .line 290
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;

    .line 291
    .local v0, listener:Lorg/jivesoftware/smackx/workgroup/user/QueueListener;
    invoke-interface {v0}, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;->joinedQueue()V

    goto :goto_0

    .line 289
    .end local v0           #listener:Lorg/jivesoftware/smackx/workgroup/user/QueueListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fireQueuePositionEvent(I)V
    .locals 4
    .parameter "currentPosition"

    .prologue
    .line 297
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v2

    .line 298
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    monitor-exit v2

    .line 302
    return-void

    .line 298
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;

    .line 299
    .local v0, listener:Lorg/jivesoftware/smackx/workgroup/user/QueueListener;
    invoke-interface {v0, p1}, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;->queuePositionUpdated(I)V

    goto :goto_0

    .line 297
    .end local v0           #listener:Lorg/jivesoftware/smackx/workgroup/user/QueueListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fireQueueTimeEvent(I)V
    .locals 4
    .parameter "secondsRemaining"

    .prologue
    .line 305
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v2

    .line 306
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    monitor-exit v2

    .line 310
    return-void

    .line 306
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;

    .line 307
    .local v0, listener:Lorg/jivesoftware/smackx/workgroup/user/QueueListener;
    invoke-interface {v0, p1}, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;->queueWaitTimeUpdated(I)V

    goto :goto_0

    .line 305
    .end local v0           #listener:Lorg/jivesoftware/smackx/workgroup/user/QueueListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getChatSettings(Ljava/lang/String;I)Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;
    .locals 6
    .parameter "key"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;-><init>()V

    .line 361
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;
    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->setKey(Ljava/lang/String;)V

    .line 364
    :cond_0
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 365
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->setType(I)V

    .line 367
    :cond_1
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 368
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->setTo(Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 371
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 372
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 375
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 374
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;

    .line 378
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 379
    if-nez v2, :cond_2

    .line 380
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 382
    :cond_2
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 383
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 385
    :cond_3
    return-object v2
.end method

.method private handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 14
    .parameter "packet"

    .prologue
    const/4 v3, -0x1

    .line 587
    instance-of v1, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v1, :cond_0

    move-object v9, p1

    .line 588
    check-cast v9, Lorg/jivesoftware/smack/packet/Message;

    .line 590
    .local v9, msg:Lorg/jivesoftware/smack/packet/Message;
    const-string v1, "depart-queue"

    .line 591
    const-string v2, "http://jabber.org/protocol/workgroup"

    .line 590
    invoke-virtual {v9, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v11

    .line 593
    .local v11, pe:Lorg/jivesoftware/smack/packet/PacketExtension;
    const-string v1, "queue-status"

    const-string v2, "http://jabber.org/protocol/workgroup"

    .line 592
    invoke-virtual {v9, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v12

    .line 595
    .local v12, queueStatus:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz v11, :cond_1

    .line 596
    invoke-direct {p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireQueueDepartedEvent()V

    .line 638
    .end local v9           #msg:Lorg/jivesoftware/smack/packet/Message;
    .end local v11           #pe:Lorg/jivesoftware/smack/packet/PacketExtension;
    .end local v12           #queueStatus:Lorg/jivesoftware/smack/packet/PacketExtension;
    :cond_0
    :goto_0
    return-void

    .line 597
    .restart local v9       #msg:Lorg/jivesoftware/smack/packet/Message;
    .restart local v11       #pe:Lorg/jivesoftware/smack/packet/PacketExtension;
    .restart local v12       #queueStatus:Lorg/jivesoftware/smack/packet/PacketExtension;
    :cond_1
    if-eqz v12, :cond_3

    move-object v13, v12

    .line 598
    check-cast v13, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;

    .line 599
    .local v13, queueUpdate:Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->getPosition()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 600
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->getPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireQueuePositionEvent(I)V

    .line 602
    :cond_2
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->getRemaingTime()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 603
    invoke-virtual {v13}, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->getRemaingTime()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireQueueTimeEvent(I)V

    goto :goto_0

    .line 610
    .end local v13           #queueUpdate:Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;
    :cond_3
    const-string v1, "x"

    .line 611
    const-string v2, "http://jabber.org/protocol/muc#user"

    .line 610
    invoke-virtual {v9, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 612
    .local v10, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    if-eqz v10, :cond_6

    .line 613
    invoke-virtual {v10}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v8

    .line 614
    .local v8, invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    :goto_1
    if-eqz v8, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    const/4 v4, 0x0

    .line 616
    .local v4, sessionID:Ljava/lang/String;
    const/4 v7, 0x0

    .line 618
    .local v7, metaData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "session"

    .line 619
    const-string v2, "http://jivesoftware.com/protocol/workgroup"

    .line 618
    invoke-virtual {v9, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v11

    .line 620
    if-eqz v11, :cond_4

    .line 621
    check-cast v11, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;

    .end local v11           #pe:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-virtual {v11}, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;->getSessionID()Ljava/lang/String;

    move-result-object v4

    .line 624
    :cond_4
    const-string v1, "metadata"

    .line 625
    const-string v2, "http://jivesoftware.com/protocol/workgroup"

    .line 624
    invoke-virtual {v9, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v11

    .line 626
    .restart local v11       #pe:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz v11, :cond_5

    .line 627
    check-cast v11, Lorg/jivesoftware/smackx/workgroup/MetaData;

    .end local v11           #pe:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-virtual {v11}, Lorg/jivesoftware/smackx/workgroup/MetaData;->getMetaData()Ljava/util/Map;

    move-result-object v7

    .line 630
    :cond_5
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;

    .line 631
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    .line 632
    invoke-virtual {v9}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v6

    .line 630
    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 634
    .local v0, inv:Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireInvitationEvent(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;)V

    goto :goto_0

    .line 613
    .end local v0           #inv:Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;
    .end local v4           #sessionID:Ljava/lang/String;
    .end local v7           #metaData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v8           #invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    .restart local v11       #pe:Lorg/jivesoftware/smack/packet/PacketExtension;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addInvitationListener(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;)V
    .locals 2
    .parameter "invitationListener"

    .prologue
    .line 210
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    monitor-exit v1

    .line 215
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addQueueListener(Lorg/jivesoftware/smackx/workgroup/user/QueueListener;)V
    .locals 2
    .parameter "queueListener"

    .prologue
    .line 225
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    monitor-exit v1

    .line 230
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public departQueue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 247
    iget-boolean v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    if-nez v3, :cond_0

    .line 270
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;

    .line 252
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    .line 251
    invoke-direct {v1, v3}, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, departPacket:Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 254
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 255
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;->getPacketID()Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 257
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 259
    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 260
    .local v2, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 261
    if-nez v2, :cond_1

    .line 262
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from the server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 265
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 269
    :cond_2
    invoke-direct {p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireQueueDepartedEvent()V

    goto :goto_0
.end method

.method public getChatSetting(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->getChatSettings(Ljava/lang/String;I)Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;

    move-result-object v0

    .line 323
    .local v0, chatSettings:Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->getFirstEntry()Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;

    move-result-object v1

    return-object v1
.end method

.method public getChatSettings()Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->getChatSettings(Ljava/lang/String;I)Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;

    move-result-object v0

    return-object v0
.end method

.method public getChatSettings(I)Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->getChatSettings(Ljava/lang/String;I)Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineSettings()Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;-><init>()V

    .line 397
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 398
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setTo(Ljava/lang/String;)V

    .line 400
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 401
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 402
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 405
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 404
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;

    .line 408
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 409
    if-nez v2, :cond_0

    .line 410
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 412
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 413
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 415
    :cond_1
    return-object v2
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queuePosition:I

    return v0
.end method

.method public getQueueRemainingTime()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueRemainingTime:I

    return v0
.end method

.method public getSoundSettings()Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;-><init>()V

    .line 456
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 457
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->setTo(Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 460
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 461
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 464
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 463
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;

    .line 467
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 468
    if-nez v2, :cond_0

    .line 469
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 471
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 472
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 474
    :cond_1
    return-object v2
.end method

.method public getWorkgroupForm()Lorg/jivesoftware/smackx/Form;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;-><init>()V

    .line 488
    .local v2, workgroupForm:Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 489
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->setTo(Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 492
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 493
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->getPacketID()Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 494
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 497
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 496
    check-cast v1, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;

    .line 500
    .local v1, response:Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 501
    if-nez v1, :cond_0

    .line 502
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 504
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 505
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 507
    :cond_1
    invoke-static {v1}, Lorg/jivesoftware/smackx/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;

    move-result-object v3

    return-object v3
.end method

.method public getWorkgroupJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkgroupProperties()Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 529
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;-><init>()V

    .line 530
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 531
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setTo(Ljava/lang/String;)V

    .line 533
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 534
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 535
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 538
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 537
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;

    .line 541
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 542
    if-nez v2, :cond_0

    .line 543
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 545
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 546
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 548
    :cond_1
    return-object v2
.end method

.method public getWorkgroupProperties(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
    .locals 6
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 563
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;-><init>()V

    .line 564
    .local v1, request:Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setJid(Ljava/lang/String;)V

    .line 565
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 566
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setTo(Ljava/lang/String;)V

    .line 568
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 569
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 570
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 573
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 572
    check-cast v2, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;

    .line 576
    .local v2, response:Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 577
    if-nez v2, :cond_0

    .line 578
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 580
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 581
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 583
    :cond_1
    return-object v2
.end method

.method public isAvailable()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 648
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v7, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v7}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 649
    .local v1, directedPresence:Lorg/jivesoftware/smack/packet/Presence;
    iget-object v7, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 650
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v7, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v4, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 651
    .local v4, typeFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v2, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    iget-object v7, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-direct {v2, v7}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    .line 652
    .local v2, fromFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v7, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 653
    new-instance v8, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v9, 0x2

    new-array v9, v9, [Lorg/jivesoftware/smack/filter/PacketFilter;

    aput-object v2, v9, v5

    aput-object v4, v9, v6

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 655
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v7, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 658
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    .line 657
    check-cast v3, Lorg/jivesoftware/smack/packet/Presence;

    .line 661
    .local v3, response:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 662
    if-nez v3, :cond_1

    .line 667
    :cond_0
    :goto_0
    return v5

    .line 664
    :cond_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    if-nez v7, :cond_0

    .line 667
    sget-object v7, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v8

    if-ne v7, v8, :cond_0

    move v5, v6

    goto :goto_0
.end method

.method public isEmailAvailable()Z
    .locals 5

    .prologue
    .line 680
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v4}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 684
    .local v0, discoManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, workgroupService:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v2

    .line 687
    .local v2, infoResult:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v4, "jive:email:provider"

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 689
    .end local v2           #infoResult:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .end local v3           #workgroupService:Ljava/lang/String;
    :goto_0
    return v4

    .line 688
    :catch_0
    move-exception v1

    .line 689
    .local v1, e:Lorg/jivesoftware/smack/XMPPException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isInQueue()Z
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    return v0
.end method

.method public joinQueue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 744
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->joinQueue(Lorg/jivesoftware/smackx/Form;)V

    .line 745
    return-void
.end method

.method public joinQueue(Ljava/util/Map;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter "userID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 916
    .local p1, metadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v7, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    if-eqz v7, :cond_0

    .line 917
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Already in queue "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 921
    :cond_0
    new-instance v3, Lorg/jivesoftware/smackx/Form;

    const-string v7, "submit"

    invoke-direct {v3, v7}, Lorg/jivesoftware/smackx/Form;-><init>(Ljava/lang/String;)V

    .line 922
    .local v3, form:Lorg/jivesoftware/smackx/Form;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 923
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 935
    invoke-virtual {p0, v3, p2}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->joinQueue(Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)V

    .line 936
    return-void

    .line 924
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 925
    .local v5, name:Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 927
    .local v6, value:Ljava/lang/String;
    invoke-static {v5}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, escapedName:Ljava/lang/String;
    invoke-static {v6}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, escapedValue:Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/FormField;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 931
    .local v2, field:Lorg/jivesoftware/smackx/FormField;
    const-string v7, "text-single"

    invoke-virtual {v2, v7}, Lorg/jivesoftware/smackx/FormField;->setType(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smackx/Form;->addField(Lorg/jivesoftware/smackx/FormField;)V

    .line 933
    invoke-virtual {v3, v0, v1}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public joinQueue(Lorg/jivesoftware/smackx/Form;)V
    .locals 1
    .parameter "answerForm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 790
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->joinQueue(Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method public joinQueue(Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)V
    .locals 6
    .parameter "answerForm"
    .parameter "userID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 840
    iget-boolean v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    if-eqz v3, :cond_0

    .line 841
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Already in queue "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 844
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-direct {v1, p0, v3, p1, p2}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;-><init>(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;Ljava/lang/String;Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)V

    .line 847
    .local v1, joinPacket:Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 848
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 849
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->getPacketID()Ljava/lang/String;

    move-result-object v5

    .line 848
    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 851
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 853
    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 856
    .local v2, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 857
    if-nez v2, :cond_1

    .line 858
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from the server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 860
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 861
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 865
    :cond_2
    invoke-direct {p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireQueueJoinedEvent()V

    .line 866
    return-void
.end method

.method public removeQueueListener(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;)V
    .locals 2
    .parameter "invitationListener"

    .prologue
    .line 958
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    monitor-enter v1

    .line 959
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 958
    monitor-exit v1

    .line 961
    return-void

    .line 958
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeQueueListener(Lorg/jivesoftware/smackx/workgroup/user/QueueListener;)V
    .locals 2
    .parameter "queueListener"

    .prologue
    .line 945
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v1

    .line 946
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 945
    monitor-exit v1

    .line 948
    return-void

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
