.class public Lorg/jivesoftware/smackx/muc/MultiUserChat;
.super Ljava/lang/Object;
.source "MultiUserChat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;
    }
.end annotation


# static fields
.field private static final discoNamespace:Ljava/lang/String; = "http://jabber.org/protocol/muc"

.field private static final discoNode:Ljava/lang/String; = "http://jabber.org/protocol/muc#rooms"

.field private static joinedRooms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final connectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            ">;"
        }
    .end annotation
.end field

.field private final invitationRejectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private joined:Z

.field private messageCollector:Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;

.field private messageFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private nickname:Ljava/lang/String;

.field private final occupantsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation
.end field

.field private final participantStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private presenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private final presenceInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final room:Ljava/lang/String;

.field private roomListenerMultiplexor:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;

.field private subject:Ljava/lang/String;

.field private final subjectUpdatedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final userStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/muc/UserStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joinedRooms:Ljava/util/Map;

    .line 485
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 1
    .parameter "connection"
    .parameter "room"

    .prologue
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 463
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/List;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/List;

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/List;

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/List;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/List;

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connectionListeners:Ljava/util/List;

    .line 593
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 594
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    .line 595
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->init()V

    .line 596
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/Connection;)Ljava/util/Iterator;
    .locals 1
    .parameter

    .prologue
    .line 333
    invoke-static {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getJoinedRooms(Lorg/jivesoftware/smack/Connection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subject:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/MUCUser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1200
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->checkPresenceCode(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/MUCUser;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1574
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireInvitationRejectionListeners(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1619
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireSubjectUpdatedListeners(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$6(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1841
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getMUCUserExtension(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1314
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->checkRoleModifications(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1119
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->checkAffiliationModifications(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1586
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static addInvitationListener(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/muc/InvitationListener;)V
    .locals 1
    .parameter "conn"
    .parameter "listener"

    .prologue
    .line 291
    invoke-static {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->getInvitationsMonitor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->addInvitationListener(Lorg/jivesoftware/smackx/muc/InvitationListener;)V

    .line 293
    return-void
.end method

.method private changeAffiliationByAdmin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "jid"
    .parameter "affiliation"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 780
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCAdmin;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;-><init>()V

    .line 781
    .local v1, iq:Lorg/jivesoftware/smackx/packet/MUCAdmin;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setTo(Ljava/lang/String;)V

    .line 782
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 784
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    const/4 v5, 0x0

    invoke-direct {v2, p2, v5}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->setJid(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v2, p3}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->setReason(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V

    .line 790
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 791
    .local v4, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 792
    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v3

    .line 794
    .local v3, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 797
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v5, v5

    .line 796
    invoke-virtual {v3, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 799
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 801
    if-nez v0, :cond_0

    .line 802
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "No response from server."

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 803
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 804
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 806
    :cond_1
    return-void
.end method

.method private changeAffiliationByAdmin(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "affiliation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
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
    .line 749
    .local p1, jids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCAdmin;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;-><init>()V

    .line 750
    .local v1, iq:Lorg/jivesoftware/smackx/packet/MUCAdmin;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setTo(Ljava/lang/String;)V

    .line 751
    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 752
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 760
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 761
    .local v5, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 762
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v4

    .line 764
    .local v4, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 767
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 766
    invoke-virtual {v4, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 769
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 771
    if-nez v0, :cond_1

    .line 772
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 752
    .end local v0           #answer:Lorg/jivesoftware/smack/packet/IQ;
    .end local v4           #response:Lorg/jivesoftware/smack/PacketCollector;
    .end local v5           #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 754
    .local v3, jid:Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    const/4 v7, 0x0

    invoke-direct {v2, p2, v7}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->setJid(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V

    goto :goto_0

    .line 773
    .end local v2           #item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    .end local v3           #jid:Ljava/lang/String;
    .restart local v0       #answer:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4       #response:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v5       #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 774
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 776
    :cond_2
    return-void
.end method

.method private changeAffiliationByOwner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "jid"
    .parameter "affiliation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 841
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCOwner;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;-><init>()V

    .line 842
    .local v1, iq:Lorg/jivesoftware/smackx/packet/MUCOwner;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setTo(Ljava/lang/String;)V

    .line 843
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 845
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;

    invoke-direct {v2, p2}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;-><init>(Ljava/lang/String;)V

    .line 846
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCOwner$Item;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->setJid(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/MUCOwner;->addItem(Lorg/jivesoftware/smackx/packet/MUCOwner$Item;)V

    .line 850
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 851
    .local v4, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 852
    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v3

    .line 854
    .local v3, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 857
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v5, v5

    .line 856
    invoke-virtual {v3, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 859
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 861
    if-nez v0, :cond_0

    .line 862
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "No response from server."

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 863
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 864
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 866
    :cond_1
    return-void
.end method

.method private changeAffiliationByOwner(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "affiliation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
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
    .line 810
    .local p1, jids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCOwner;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;-><init>()V

    .line 811
    .local v1, iq:Lorg/jivesoftware/smackx/packet/MUCOwner;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setTo(Ljava/lang/String;)V

    .line 812
    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 813
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 821
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 822
    .local v5, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 823
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v4

    .line 825
    .local v4, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 828
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 827
    invoke-virtual {v4, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 830
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 832
    if-nez v0, :cond_1

    .line 833
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 813
    .end local v0           #answer:Lorg/jivesoftware/smack/packet/IQ;
    .end local v4           #response:Lorg/jivesoftware/smack/PacketCollector;
    .end local v5           #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 815
    .local v3, jid:Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;

    invoke-direct {v2, p2}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;-><init>(Ljava/lang/String;)V

    .line 816
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCOwner$Item;
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->setJid(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/MUCOwner;->addItem(Lorg/jivesoftware/smackx/packet/MUCOwner$Item;)V

    goto :goto_0

    .line 834
    .end local v2           #item:Lorg/jivesoftware/smackx/packet/MUCOwner$Item;
    .end local v3           #jid:Ljava/lang/String;
    .restart local v0       #answer:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4       #response:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v5       #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 835
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 837
    :cond_2
    return-void
.end method

.method private changeRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "nickname"
    .parameter "role"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCAdmin;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;-><init>()V

    .line 1001
    .local v1, iq:Lorg/jivesoftware/smackx/packet/MUCAdmin;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setTo(Ljava/lang/String;)V

    .line 1002
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1004
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    const/4 v5, 0x0

    invoke-direct {v2, v5, p2}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->setNick(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v2, p3}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->setReason(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V

    .line 1010
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v4, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1012
    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v3

    .line 1014
    .local v3, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1017
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v5, v5

    .line 1016
    invoke-virtual {v3, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 1019
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1021
    if-nez v0, :cond_0

    .line 1022
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "No response from server."

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1023
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1024
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 1026
    :cond_1
    return-void
.end method

.method private changeRole(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "role"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
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
    .line 969
    .local p1, nicknames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCAdmin;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;-><init>()V

    .line 970
    .local v1, iq:Lorg/jivesoftware/smackx/packet/MUCAdmin;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setTo(Ljava/lang/String;)V

    .line 971
    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 972
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 980
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 981
    .local v5, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 982
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v4

    .line 984
    .local v4, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 987
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 986
    invoke-virtual {v4, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 989
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 991
    if-nez v0, :cond_1

    .line 992
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 972
    .end local v0           #answer:Lorg/jivesoftware/smack/packet/IQ;
    .end local v4           #response:Lorg/jivesoftware/smack/PacketCollector;
    .end local v5           #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 974
    .local v3, nickname:Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    const/4 v7, 0x0

    invoke-direct {v2, v7, p2}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->setNick(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V

    goto :goto_0

    .line 993
    .end local v2           #item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    .end local v3           #nickname:Ljava/lang/String;
    .restart local v0       #answer:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4       #response:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v5       #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 994
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 996
    :cond_2
    return-void
.end method

.method private checkAffiliationModifications(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "oldAffiliation"
    .parameter "newAffiliation"
    .parameter "isUserModification"
    .parameter "from"

    .prologue
    const/4 v3, 0x0

    .line 1126
    const-string v1, "owner"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "owner"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1127
    if-eqz p3, :cond_2

    .line 1128
    const-string v1, "ownershipRevoked"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1159
    :cond_0
    :goto_0
    const-string v1, "owner"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "owner"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1160
    if-eqz p3, :cond_7

    .line 1161
    const-string v1, "ownershipGranted"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1190
    :cond_1
    :goto_1
    return-void

    .line 1130
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    const-string v1, "ownershipRevoked"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1136
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v1, "admin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1137
    const-string v1, "admin"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1138
    if-eqz p3, :cond_4

    .line 1139
    const-string v1, "adminRevoked"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1141
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    const-string v1, "adminRevoked"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1147
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string v1, "member"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    const-string v1, "member"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1149
    if-eqz p3, :cond_6

    .line 1150
    const-string v1, "membershipRevoked"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1152
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    const-string v1, "membershipRevoked"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1163
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    const-string v1, "ownershipGranted"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 1169
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const-string v1, "admin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1170
    const-string v1, "admin"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1171
    if-eqz p3, :cond_9

    .line 1172
    const-string v1, "adminGranted"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1174
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    const-string v1, "adminGranted"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 1180
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    const-string v1, "member"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1181
    const-string v1, "member"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1182
    if-eqz p3, :cond_b

    .line 1183
    const-string v1, "membershipGranted"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1185
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    const-string v1, "membershipGranted"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private checkPresenceCode(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/MUCUser;Ljava/lang/String;)V
    .locals 7
    .parameter "code"
    .parameter "isUserModification"
    .parameter "mucUser"
    .parameter "from"

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1203
    const-string v1, "307"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1205
    if-eqz p2, :cond_1

    .line 1206
    iput-boolean v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 1208
    const-string v1, "kicked"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1209
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getActor()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1210
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getReason()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1208
    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1213
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1214
    iput-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    .line 1215
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getActor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    const-string v1, "kicked"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1225
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v1, "301"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1227
    if-eqz p2, :cond_3

    .line 1228
    iput-boolean v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 1230
    const-string v1, "banned"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1231
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getActor()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1232
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getReason()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1230
    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1236
    iput-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    .line 1237
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    goto :goto_0

    .line 1239
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getActor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    const-string v1, "banned"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1247
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string v1, "321"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1249
    if-eqz p2, :cond_0

    .line 1250
    iput-boolean v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 1252
    const-string v1, "membershipRevoked"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1255
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1256
    iput-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    .line 1257
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    goto/16 :goto_0

    .line 1261
    :cond_5
    const-string v1, "303"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    const-string v1, "nicknameChanged"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private checkRoleModifications(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "oldRole"
    .parameter "newRole"
    .parameter "isUserModification"
    .parameter "from"

    .prologue
    const/4 v3, 0x0

    .line 1317
    const-string v1, "visitor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1318
    :cond_0
    const-string v1, "participant"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1319
    if-eqz p3, :cond_5

    .line 1320
    const-string v1, "voiceGranted"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1339
    :cond_1
    :goto_0
    const-string v1, "moderator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "moderator"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1340
    const-string v1, "visitor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1341
    :cond_2
    if-eqz p3, :cond_9

    .line 1342
    const-string v1, "voiceGranted"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    :cond_3
    :goto_1
    if-eqz p3, :cond_a

    .line 1350
    const-string v1, "moderatorGranted"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    :cond_4
    :goto_2
    return-void

    .line 1322
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    const-string v1, "voiceGranted"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1328
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const-string v1, "participant"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    const-string v1, "visitor"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "none"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1330
    :cond_7
    if-eqz p3, :cond_8

    .line 1331
    const-string v1, "voiceRevoked"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1333
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    const-string v1, "voiceRevoked"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1344
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    const-string v1, "voiceGranted"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 1352
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    const-string v1, "moderatorGranted"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 1358
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    const-string v1, "moderator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "moderator"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1359
    const-string v1, "visitor"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "none"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1360
    :cond_c
    if-eqz p3, :cond_e

    .line 1361
    const-string v1, "voiceRevoked"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1368
    :cond_d
    :goto_3
    if-eqz p3, :cond_f

    .line 1369
    const-string v1, "moderatorRevoked"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1363
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1365
    const-string v1, "voiceRevoked"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 1371
    .end local v0           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    .restart local v0       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    const-string v1, "moderatorRevoked"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2
.end method

.method public static decline(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "conn"
    .parameter "room"
    .parameter "inviter"
    .parameter "reason"

    .prologue
    .line 543
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 546
    .local v1, message:Lorg/jivesoftware/smack/packet/Message;
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCUser;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;-><init>()V

    .line 547
    .local v2, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    new-instance v0, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;-><init>()V

    .line 548
    .local v0, decline:Lorg/jivesoftware/smackx/packet/MUCUser$Decline;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setTo(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setReason(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->setDecline(Lorg/jivesoftware/smackx/packet/MUCUser$Decline;)V

    .line 552
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 554
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 555
    return-void
.end method

.method private fireInvitationRejectionListeners(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "invitee"
    .parameter "reason"

    .prologue
    .line 1576
    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/List;

    monitor-enter v3

    .line 1577
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/List;

    .line 1578
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1577
    new-array v1, v2, [Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;

    .line 1579
    .local v1, listeners:[Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1576
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 1584
    return-void

    .line 1576
    .end local v1           #listeners:[Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1581
    .restart local v1       #listeners:[Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;
    :cond_0
    aget-object v0, v1, v2

    .line 1582
    .local v0, listener:Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;
    invoke-interface {v0, p1, p2}, Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;->invitationDeclined(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1589
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/List;

    monitor-enter v7

    .line 1590
    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/List;

    .line 1591
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 1590
    new-array v4, v6, [Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 1592
    .local v4, listeners:[Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1589
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/Class;

    .line 1599
    .local v0, classes:[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 1602
    const-class v6, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 1603
    invoke-virtual {v6, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1604
    .local v5, method:Ljava/lang/reflect/Method;
    array-length v7, v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v7, :cond_1

    .line 1614
    .end local v0           #classes:[Ljava/lang/Class;
    .end local v2           #i:I
    .end local v5           #method:Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 1589
    .end local v4           #listeners:[Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1600
    .restart local v0       #classes:[Ljava/lang/Class;
    .restart local v2       #i:I
    .restart local v4       #listeners:[Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    :cond_0
    :try_start_3
    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v2

    .line 1599
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1604
    .restart local v5       #method:Ljava/lang/reflect/Method;
    :cond_1
    aget-object v3, v4, v6

    .line 1605
    .local v3, listener:Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1604
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1607
    .end local v0           #classes:[Ljava/lang/Class;
    .end local v2           #i:I
    .end local v3           #listener:Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    .end local v5           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1608
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 1609
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1610
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 1611
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 1612
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method private fireSubjectUpdatedListeners(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "subject"
    .parameter "from"

    .prologue
    .line 1621
    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/List;

    monitor-enter v3

    .line 1622
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/List;

    .line 1623
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1622
    new-array v1, v2, [Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;

    .line 1624
    .local v1, listeners:[Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1621
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1626
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 1629
    return-void

    .line 1621
    .end local v1           #listeners:[Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1626
    .restart local v1       #listeners:[Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;
    :cond_0
    aget-object v0, v1, v2

    .line 1627
    .local v0, listener:Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;
    invoke-interface {v0, p1, p2}, Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;->subjectUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private fireUserStatusListeners(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .parameter "methodName"
    .parameter "params"

    .prologue
    .line 1633
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/List;

    monitor-enter v7

    .line 1634
    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [Lorg/jivesoftware/smackx/muc/UserStatusListener;

    .line 1635
    .local v3, listeners:[Lorg/jivesoftware/smackx/muc/UserStatusListener;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1633
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    array-length v6, p2

    new-array v5, v6, [Ljava/lang/Class;

    .line 1639
    .local v5, paramClasses:[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p2

    if-lt v1, v6, :cond_0

    .line 1645
    :try_start_1
    const-class v6, Lorg/jivesoftware/smackx/muc/UserStatusListener;

    invoke-virtual {v6, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1647
    .local v4, method:Ljava/lang/reflect/Method;
    array-length v7, v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v7, :cond_1

    .line 1657
    .end local v4           #method:Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 1633
    .end local v1           #i:I
    .end local v3           #listeners:[Lorg/jivesoftware/smackx/muc/UserStatusListener;
    .end local v5           #paramClasses:[Ljava/lang/Class;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1640
    .restart local v1       #i:I
    .restart local v3       #listeners:[Lorg/jivesoftware/smackx/muc/UserStatusListener;
    .restart local v5       #paramClasses:[Ljava/lang/Class;
    :cond_0
    aget-object v6, p2, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1639
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1647
    .restart local v4       #method:Ljava/lang/reflect/Method;
    :cond_1
    :try_start_3
    aget-object v2, v3, v6

    .line 1648
    .local v2, listener:Lorg/jivesoftware/smackx/muc/UserStatusListener;
    invoke-virtual {v4, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1647
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1650
    .end local v2           #listener:Lorg/jivesoftware/smackx/muc/UserStatusListener;
    .end local v4           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1651
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 1652
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1653
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 1654
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 1655
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method private getAffiliatesByAdmin(Ljava/lang/String;)Ljava/util/Collection;
    .locals 9
    .parameter "affiliation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1689
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCAdmin;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCAdmin;-><init>()V

    .line 1690
    .local v2, iq:Lorg/jivesoftware/smackx/packet/MUCAdmin;
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setTo(Ljava/lang/String;)V

    .line 1691
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v7}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1694
    new-instance v4, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    const/4 v7, 0x0

    invoke-direct {v4, p1, v7}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    .local v4, item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V

    .line 1698
    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v6, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1700
    invoke-virtual {v7, v6}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v5

    .line 1702
    .local v5, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1705
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 1704
    check-cast v1, Lorg/jivesoftware/smackx/packet/MUCAdmin;

    .line 1707
    .local v1, answer:Lorg/jivesoftware/smackx/packet/MUCAdmin;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1709
    if-nez v1, :cond_0

    .line 1710
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string v8, "No response from server."

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1711
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1712
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v7

    .line 1715
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    .local v0, affiliates:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/muc/Affiliate;>;"
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getItems()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1719
    return-object v0

    .line 1717
    :cond_2
    new-instance v8, Lorg/jivesoftware/smackx/muc/Affiliate;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    invoke-direct {v8, v7}, Lorg/jivesoftware/smackx/muc/Affiliate;-><init>(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAffiliatesByOwner(Ljava/lang/String;)Ljava/util/Collection;
    .locals 9
    .parameter "affiliation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1737
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCOwner;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCOwner;-><init>()V

    .line 1738
    .local v2, iq:Lorg/jivesoftware/smackx/packet/MUCOwner;
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setTo(Ljava/lang/String;)V

    .line 1739
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v7}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1742
    new-instance v4, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;

    invoke-direct {v4, p1}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;-><init>(Ljava/lang/String;)V

    .line 1743
    .local v4, item:Lorg/jivesoftware/smackx/packet/MUCOwner$Item;
    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/packet/MUCOwner;->addItem(Lorg/jivesoftware/smackx/packet/MUCOwner$Item;)V

    .line 1746
    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 1747
    .local v6, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1748
    invoke-virtual {v7, v6}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v5

    .line 1750
    .local v5, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1753
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 1752
    check-cast v1, Lorg/jivesoftware/smackx/packet/MUCOwner;

    .line 1755
    .local v1, answer:Lorg/jivesoftware/smackx/packet/MUCOwner;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1757
    if-nez v1, :cond_0

    .line 1758
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string v8, "No response from server."

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1759
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1760
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v7

    .line 1763
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1764
    .local v0, affiliates:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/muc/Affiliate;>;"
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getItems()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1767
    return-object v0

    .line 1765
    :cond_2
    new-instance v8, Lorg/jivesoftware/smackx/muc/Affiliate;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;

    invoke-direct {v8, v7}, Lorg/jivesoftware/smackx/muc/Affiliate;-><init>(Lorg/jivesoftware/smackx/packet/MUCOwner$Item;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getHostedRooms(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .parameter "connection"
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/muc/HostedRoom;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/muc/HostedRoom;>;"
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 315
    .local v1, discoManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v3

    .line 316
    .local v3, items:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v2

    .line 317
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 316
    if-nez v4, :cond_0

    .line 320
    return-object v0

    .line 318
    :cond_0
    new-instance v5, Lorg/jivesoftware/smackx/muc/HostedRoom;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    invoke-direct {v5, v4}, Lorg/jivesoftware/smackx/muc/HostedRoom;-><init>(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getJoinedRooms(Lorg/jivesoftware/smack/Connection;)Ljava/util/Iterator;
    .locals 2
    .parameter "connection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joinedRooms:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 335
    .local v0, rooms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public static getJoinedRooms(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 6
    .parameter "connection"
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, answer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v4

    const-string v5, "http://jabber.org/protocol/muc#rooms"

    invoke-virtual {v4, p1, v5}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v3

    .line 363
    .local v3, result:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v2

    .line 364
    .local v2, items:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 363
    if-nez v4, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 371
    .end local v0           #answer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #items:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    .end local v3           #result:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    :goto_1
    return-object v4

    .line 365
    .restart local v0       #answer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #items:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    .restart local v3       #result:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v0           #answer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #items:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    .end local v3           #result:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    .line 371
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_1
.end method

.method private getMUCUserExtension(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;
    .locals 2
    .parameter "packet"

    .prologue
    .line 1842
    if-eqz p1, :cond_0

    .line 1844
    const-string v0, "x"

    .line 1845
    const-string v1, "http://jabber.org/protocol/muc#user"

    .line 1844
    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 1847
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOccupants(Ljava/lang/String;)Ljava/util/Collection;
    .locals 9
    .parameter "role"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/muc/Occupant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1929
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCAdmin;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;-><init>()V

    .line 1930
    .local v1, iq:Lorg/jivesoftware/smackx/packet/MUCAdmin;
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setTo(Ljava/lang/String;)V

    .line 1931
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1934
    new-instance v3, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    const/4 v7, 0x0

    invoke-direct {v3, v7, p1}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    .local v3, item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->addItem(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V

    .line 1938
    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 1939
    .local v6, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1940
    invoke-virtual {v7, v6}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v5

    .line 1942
    .local v5, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1945
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 1944
    check-cast v0, Lorg/jivesoftware/smackx/packet/MUCAdmin;

    .line 1947
    .local v0, answer:Lorg/jivesoftware/smackx/packet/MUCAdmin;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1949
    if-nez v0, :cond_0

    .line 1950
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string v8, "No response from server."

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1951
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1952
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v7

    .line 1955
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1956
    .local v4, participants:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/muc/Occupant;>;"
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getItems()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1959
    return-object v4

    .line 1957
    :cond_2
    new-instance v8, Lorg/jivesoftware/smackx/muc/Occupant;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    invoke-direct {v8, v7}, Lorg/jivesoftware/smackx/muc/Occupant;-><init>(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getRoomInfo(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/RoomInfo;
    .locals 2
    .parameter "connection"
    .parameter "room"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 395
    .line 394
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 395
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 396
    .local v0, info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    new-instance v1, Lorg/jivesoftware/smackx/muc/RoomInfo;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;-><init>(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    return-object v1
.end method

.method public static getServiceNames(Lorg/jivesoftware/smack/Connection;)Ljava/util/Collection;
    .locals 7
    .parameter "connection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/Connection;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 417
    .local v1, discoManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v6

    .line 416
    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v5

    .line 418
    .local v5, items:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v3

    .line 419
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    .line 418
    if-nez v6, :cond_1

    .line 432
    return-object v0

    .line 420
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 423
    .local v4, item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    :try_start_0
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v6

    .line 422
    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v2

    .line 424
    .local v2, info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v6, "http://jabber.org/protocol/muc"

    invoke-virtual {v2, v6}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 425
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    .end local v2           #info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2284
    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v5, v10, [Lorg/jivesoftware/smack/filter/PacketFilter;

    new-instance v6, Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v8

    .line 2285
    new-instance v6, Lorg/jivesoftware/smack/filter/MessageTypeFilter;

    sget-object v7, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/MessageTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/Message$Type;)V

    aput-object v6, v5, v9

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 2284
    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 2286
    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v5, v10, [Lorg/jivesoftware/smack/filter/PacketFilter;

    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    aput-object v6, v5, v8

    new-instance v6, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    invoke-direct {v6, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    aput-object v6, v5, v9

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 2293
    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v5, v10, [Lorg/jivesoftware/smack/filter/PacketFilter;

    new-instance v6, Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v8

    .line 2294
    new-instance v6, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v7, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v6, v5, v9

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 2293
    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 2297
    new-instance v4, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;-><init>()V

    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;

    .line 2300
    new-instance v3, Lorg/jivesoftware/smackx/muc/MultiUserChat$4;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$4;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    .line 2313
    .local v3, subjectListener:Lorg/jivesoftware/smack/PacketListener;
    new-instance v2, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    .line 2372
    .local v2, presenceListener:Lorg/jivesoftware/smack/PacketListener;
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$6;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$6;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    .line 2388
    .local v0, declinesListener:Lorg/jivesoftware/smack/PacketListener;
    new-instance v1, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;

    .line 2389
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;

    .line 2388
    invoke-direct {v1, v4, v2, v3, v0}, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;-><init>(Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketListener;)V

    .line 2393
    .local v1, packetMultiplexor:Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v4}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->getRoomMultiplexor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;

    move-result-object v4

    .line 2392
    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->roomListenerMultiplexor:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;

    .line 2395
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->roomListenerMultiplexor:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;

    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->addRoom(Ljava/lang/String;Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;)V

    .line 2396
    return-void
.end method

.method public static isServiceEnabled(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Z
    .locals 3
    .parameter "connection"
    .parameter "user"

    .prologue
    .line 449
    .line 448
    :try_start_0
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v2

    .line 449
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    .line 450
    .local v1, result:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v2, "http://jabber.org/protocol/muc"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 453
    .end local v1           #result:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :goto_0
    return v2

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    .line 453
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeInvitationListener(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/muc/InvitationListener;)V
    .locals 1
    .parameter "conn"
    .parameter "listener"

    .prologue
    .line 568
    invoke-static {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->getInvitationsMonitor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;

    move-result-object v0

    .line 569
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->removeInvitationListener(Lorg/jivesoftware/smackx/muc/InvitationListener;)V

    .line 570
    return-void
.end method

.method private declared-synchronized userHasJoined()V
    .locals 3

    .prologue
    .line 3074
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joinedRooms:Ljava/util/Map;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3075
    .local v0, rooms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 3076
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #rooms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3077
    .restart local v0       #rooms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joinedRooms:Ljava/util/Map;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3080
    monitor-exit p0

    return-void

    .line 3074
    .end local v0           #rooms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized userHasLeft()V
    .locals 3

    .prologue
    .line 3087
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joinedRooms:Ljava/util/Map;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3088
    .local v0, rooms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 3092
    :goto_0
    monitor-exit p0

    return-void

    .line 3091
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3087
    .end local v0           #rooms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addInvitationRejectionListener(Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 607
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/List;

    monitor-enter v1

    .line 608
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_0
    monitor-exit v1

    .line 612
    return-void

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addMessageListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 626
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 627
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    return-void
.end method

.method public addParticipantListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 640
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 641
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    return-void
.end method

.method public addParticipantStatusListener(Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 653
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 654
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_0
    monitor-exit v1

    .line 658
    return-void

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addPresenceInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;)V
    .locals 1
    .parameter "presenceInterceptor"

    .prologue
    .line 671
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    return-void
.end method

.method public addSubjectUpdatedListener(Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 682
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/List;

    monitor-enter v1

    .line 683
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_0
    monitor-exit v1

    .line 687
    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addUserStatusListener(Lorg/jivesoftware/smackx/muc/UserStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 697
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 698
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_0
    monitor-exit v1

    .line 702
    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public banUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "jid"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 724
    const-string v0, "outcast"

    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public banUsers(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 744
    .local p1, jids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "outcast"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/util/Collection;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method public changeAvailabilityStatus(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence$Mode;)V
    .locals 4
    .parameter "status"
    .parameter "mode"

    .prologue
    .line 879
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 880
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 881
    const-string v3, "Nickname must not be null or blank."

    .line 880
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 886
    :cond_1
    iget-boolean v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    if-nez v2, :cond_2

    .line 887
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 888
    const-string v3, "Must be logged into the room to change the availability status."

    .line 887
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 894
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 895
    .local v0, joinPresence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 900
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 905
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 906
    return-void

    .line 900
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketInterceptor;

    .line 901
    .local v1, packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;
    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/PacketInterceptor;->interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public changeNickname(Ljava/lang/String;)V
    .locals 10
    .parameter "nickname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 923
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 924
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 925
    const-string v6, "Nickname must not be null or blank."

    .line 924
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 930
    :cond_1
    iget-boolean v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    if-nez v5, :cond_2

    .line 931
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 932
    const-string v6, "Must be logged into the room to change nickname."

    .line 931
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 937
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 938
    .local v0, joinPresence:Lorg/jivesoftware/smack/packet/Presence;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 941
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 946
    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v6, 0x0

    .line 947
    new-instance v7, Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 948
    new-instance v7, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v8, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 946
    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 949
    .local v4, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 950
    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v3

    .line 952
    .local v3, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 955
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 954
    check-cast v2, Lorg/jivesoftware/smack/packet/Presence;

    .line 957
    .local v2, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 959
    if-nez v2, :cond_4

    .line 960
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "No response from server."

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 941
    .end local v2           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v3           #response:Lorg/jivesoftware/smack/PacketCollector;
    .end local v4           #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketInterceptor;

    .line 942
    .local v1, packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;
    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/PacketInterceptor;->interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 961
    .end local v1           #packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;
    .restart local v2       #presence:Lorg/jivesoftware/smack/packet/Presence;
    .restart local v3       #response:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v4       #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_4
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 962
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 964
    :cond_5
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    .line 965
    return-void
.end method

.method public changeSubject(Ljava/lang/String;)V
    .locals 11
    .parameter "subject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1042
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    sget-object v6, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v1, v5, v6}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 1043
    .local v1, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Message;->setSubject(Ljava/lang/String;)V

    .line 1045
    new-instance v3, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v5, v10, [Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 1046
    new-instance v6, Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v8

    .line 1047
    new-instance v6, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v7, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 1045
    aput-object v6, v5, v9

    invoke-direct {v3, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 1048
    .local v3, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v5, v10, [Lorg/jivesoftware/smack/filter/PacketFilter;

    aput-object v3, v5, v8

    new-instance v6, Lorg/jivesoftware/smackx/muc/MultiUserChat$2;

    invoke-direct {v6, p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat$2;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;)V

    aput-object v6, v5, v9

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 1055
    .end local v3           #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    .local v4, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1056
    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 1058
    .local v2, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1061
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v5, v5

    .line 1060
    invoke-virtual {v2, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 1063
    .local v0, answer:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1065
    if-nez v0, :cond_0

    .line 1066
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "No response from server."

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1067
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1068
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 1070
    :cond_1
    return-void
.end method

.method public declared-synchronized create(Ljava/lang/String;)V
    .locals 11
    .parameter "nickname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1406
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1407
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 1408
    const-string v7, "Nickname must not be null or blank."

    .line 1407
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1412
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    if-eqz v6, :cond_2

    .line 1413
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 1414
    const-string v7, "Creation failed - User already joined the room."

    .line 1413
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1419
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v6, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v6}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1420
    .local v0, joinPresence:Lorg/jivesoftware/smack/packet/Presence;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 1422
    new-instance v6, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;

    invoke-direct {v6}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;-><init>()V

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 1425
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1430
    new-instance v5, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v7, 0x0

    .line 1431
    new-instance v8, Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 1432
    new-instance v8, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v9, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 1430
    aput-object v8, v6, v7

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 1433
    .local v5, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1434
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v4

    .line 1436
    .local v4, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1439
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    .line 1438
    check-cast v3, Lorg/jivesoftware/smack/packet/Presence;

    .line 1441
    .local v3, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1443
    if-nez v3, :cond_4

    .line 1444
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1425
    .end local v3           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v4           #response:Lorg/jivesoftware/smack/PacketCollector;
    .end local v5           #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/PacketInterceptor;

    .line 1426
    .local v2, packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;
    invoke-interface {v2, v0}, Lorg/jivesoftware/smack/PacketInterceptor;->interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 1445
    .end local v2           #packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;
    .restart local v3       #presence:Lorg/jivesoftware/smack/packet/Presence;
    .restart local v4       #response:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v5       #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_4
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1446
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 1450
    :cond_5
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    .line 1451
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 1452
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasJoined()V

    .line 1455
    invoke-direct {p0, v3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getMUCUserExtension(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;

    move-result-object v1

    .line 1456
    .local v1, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1457
    const-string v6, "201"

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/MUCUser$Status;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_6

    .line 1459
    monitor-exit p0

    return-void

    .line 1464
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->leave()V

    .line 1465
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    .line 1466
    const-string v7, "Creation failed - Missing acknowledge of room creation."

    .line 1465
    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public createMessage()Lorg/jivesoftware/smack/packet/Message;
    .locals 3

    .prologue
    .line 1475
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V

    return-object v0
.end method

.method public createPrivateChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;
    .locals 1
    .parameter "occupant"
    .parameter "listener"

    .prologue
    .line 1494
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    return-object v0
.end method

.method public destroy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "reason"
    .parameter "alternateJID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1515
    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCOwner;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCOwner;-><init>()V

    .line 1516
    .local v2, iq:Lorg/jivesoftware/smackx/packet/MUCOwner;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setTo(Ljava/lang/String;)V

    .line 1517
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1520
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;-><init>()V

    .line 1521
    .local v1, destroy:Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;->setReason(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;->setJid(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setDestroy(Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;)V

    .line 1526
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 1527
    .local v4, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1528
    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v3

    .line 1530
    .local v3, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1533
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v5, v5

    .line 1532
    invoke-virtual {v3, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 1535
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1537
    if-nez v0, :cond_0

    .line 1538
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "No response from server."

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1539
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1540
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 1543
    :cond_1
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 1544
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    .line 1545
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 1546
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V

    .line 1547
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1552
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    if-eqz v1, :cond_0

    .line 1553
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->roomListenerMultiplexor:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->removeRoom(Ljava/lang/String;)V

    .line 1556
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 1563
    :cond_0
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1564
    return-void

    .line 1556
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketListener;

    .line 1557
    .local v0, connectionListener:Lorg/jivesoftware/smack/PacketListener;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1560
    .end local v0           #connectionListener:Lorg/jivesoftware/smack/PacketListener;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getAdmins()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1671
    const-string v0, "admin"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getAffiliatesByOwner(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationForm()Lorg/jivesoftware/smackx/Form;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1783
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCOwner;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;-><init>()V

    .line 1784
    .local v1, iq:Lorg/jivesoftware/smackx/packet/MUCOwner;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setTo(Ljava/lang/String;)V

    .line 1785
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1788
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v3, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 1790
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 1792
    .local v2, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1795
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 1794
    invoke-virtual {v2, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 1797
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1799
    if-nez v0, :cond_0

    .line 1800
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1801
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1802
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 1804
    :cond_1
    invoke-static {v0}, Lorg/jivesoftware/smackx/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;

    move-result-object v4

    return-object v4
.end method

.method public getMembers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1817
    const-string v0, "member"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getAffiliatesByAdmin(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getModerators()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/muc/Occupant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1830
    const-string v0, "moderator"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOccupants(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupant(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/Occupant;
    .locals 2
    .parameter "user"

    .prologue
    .line 1875
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 1876
    .local v0, presence:Lorg/jivesoftware/smack/packet/Presence;
    if-eqz v0, :cond_0

    .line 1877
    new-instance v1, Lorg/jivesoftware/smackx/muc/Occupant;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/muc/Occupant;-><init>(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 1879
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOccupantPresence(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 1
    .parameter "user"

    .prologue
    .line 1895
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    return-object v0
.end method

.method public getOccupants()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1912
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1911
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1912
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1911
    return-object v0
.end method

.method public getOccupantsCount()I
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOutcasts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1987
    const-string v0, "outcast"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getAffiliatesByAdmin(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getOwners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/muc/Affiliate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2000
    const-string v0, "owner"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getAffiliatesByOwner(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getParticipants()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/muc/Occupant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2013
    const-string v0, "participant"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOccupants(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationForm()Lorg/jivesoftware/smackx/Form;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2036
    new-instance v2, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 2037
    .local v2, reg:Lorg/jivesoftware/smack/packet/Registration;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 2038
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 2040
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v5, 0x0

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 2041
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v7, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 2040
    aput-object v6, v4, v5

    invoke-direct {v1, v4}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 2042
    .local v1, filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 2043
    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 2044
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 2046
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 2045
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 2047
    .local v3, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 2048
    if-nez v3, :cond_0

    .line 2049
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2050
    :cond_0
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_1

    .line 2051
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 2053
    :cond_1
    invoke-static {v3}, Lorg/jivesoftware/smackx/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;

    move-result-object v4

    return-object v4
.end method

.method public getReservedNickname()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2067
    :try_start_0
    iget-object v5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 2066
    invoke-static {v5}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v5

    .line 2067
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    const-string v7, "x-roomuser-item"

    invoke-virtual {v5, v6, v7}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v3

    .line 2071
    .local v3, result:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getIdentities()Ljava/util/Iterator;

    move-result-object v1

    .local v1, identities:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2072
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 2073
    .local v2, identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2080
    .end local v1           #identities:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    .end local v2           #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    .end local v3           #result:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :cond_0
    :goto_0
    return-object v4

    .line 2078
    :catch_0
    move-exception v0

    .line 2079
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRoom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2090
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public grantAdmin(Ljava/lang/String;)V
    .locals 1
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2145
    const-string v0, "admin"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByOwner(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    return-void
.end method

.method public grantAdmin(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2128
    .local p1, jids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "admin"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByOwner(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2129
    return-void
.end method

.method public grantMembership(Ljava/lang/String;)V
    .locals 2
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2176
    const-string v0, "member"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    return-void
.end method

.method public grantMembership(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2160
    .local p1, jids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "member"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2161
    return-void
.end method

.method public grantModerator(Ljava/lang/String;)V
    .locals 2
    .parameter "nickname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2207
    const-string v0, "moderator"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    return-void
.end method

.method public grantModerator(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2192
    .local p1, nicknames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "moderator"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2193
    return-void
.end method

.method public grantOwnership(Ljava/lang/String;)V
    .locals 1
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2239
    const-string v0, "owner"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByOwner(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    return-void
.end method

.method public grantOwnership(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2223
    .local p1, jids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "owner"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByOwner(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2224
    return-void
.end method

.method public grantVoice(Ljava/lang/String;)V
    .locals 2
    .parameter "nickname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2279
    const-string v0, "participant"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    return-void
.end method

.method public grantVoice(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2259
    .local p1, nicknames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "participant"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2260
    return-void
.end method

.method public invite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "user"
    .parameter "reason"

    .prologue
    .line 2448
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invite(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    return-void
.end method

.method public invite(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .parameter "user"
    .parameter "reason"

    .prologue
    .line 2418
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 2421
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCUser;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCUser;-><init>()V

    .line 2422
    .local v1, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    new-instance v0, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;-><init>()V

    .line 2423
    .local v0, invite:Lorg/jivesoftware/smackx/packet/MUCUser$Invite;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->setTo(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->setReason(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->setInvite(Lorg/jivesoftware/smackx/packet/MUCUser$Invite;)V

    .line 2427
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 2429
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 2430
    return-void
.end method

.method public isJoined()Z
    .locals 1

    .prologue
    .line 2458
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    return v0
.end method

.method public join(Ljava/lang/String;)V
    .locals 6
    .parameter "nickname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2480
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/muc/DiscussionHistory;J)V

    .line 2481
    return-void
.end method

.method public join(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "nickname"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2509
    const/4 v3, 0x0

    .line 2510
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2509
    invoke-virtual/range {v0 .. v5}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/muc/DiscussionHistory;J)V

    .line 2511
    return-void
.end method

.method public declared-synchronized join(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/muc/DiscussionHistory;J)V
    .locals 13
    .parameter "nickname"
    .parameter "password"
    .parameter "history"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2551
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2552
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 2553
    const-string v9, "Nickname must not be null or blank."

    .line 2552
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2551
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2557
    :cond_1
    :try_start_1
    iget-boolean v8, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    if-eqz v8, :cond_2

    .line 2558
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->leave()V

    .line 2562
    :cond_2
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v8, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v8}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 2563
    .local v2, joinPresence:Lorg/jivesoftware/smack/packet/Presence;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 2566
    new-instance v3, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;-><init>()V

    .line 2567
    .local v3, mucInitialPresence:Lorg/jivesoftware/smackx/packet/MUCInitialPresence;
    if-eqz p2, :cond_3

    .line 2568
    invoke-virtual {v3, p2}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->setPassword(Ljava/lang/String;)V

    .line 2570
    :cond_3
    if-eqz p3, :cond_4

    .line 2571
    invoke-virtual/range {p3 .. p3}, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->getMUCHistory()Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->setHistory(Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;)V

    .line 2573
    :cond_4
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 2576
    iget-object v8, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 2581
    new-instance v7, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v9, 0x0

    .line 2582
    new-instance v10, Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;-><init>(Ljava/lang/String;)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 2583
    new-instance v10, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v11, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v10, v11}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 2581
    aput-object v10, v8, v9

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2584
    .local v7, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    const/4 v6, 0x0

    .line 2587
    .local v6, response:Lorg/jivesoftware/smack/PacketCollector;
    :try_start_2
    iget-object v8, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v8, v7}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v6

    .line 2589
    iget-object v8, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v8, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 2591
    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/packet/Presence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2594
    .local v5, presence:Lorg/jivesoftware/smack/packet/Presence;
    if-eqz v6, :cond_5

    .line 2595
    :try_start_3
    invoke-virtual {v6}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 2599
    :cond_5
    if-nez v5, :cond_8

    .line 2600
    new-instance v8, Lorg/jivesoftware/smack/XMPPException;

    const-string v9, "No response from server."

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2576
    .end local v5           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v6           #response:Lorg/jivesoftware/smack/PacketCollector;
    .end local v7           #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/PacketInterceptor;

    .line 2577
    .local v4, packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;
    invoke-interface {v4, v2}, Lorg/jivesoftware/smack/PacketInterceptor;->interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 2592
    .end local v4           #packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;
    .restart local v6       #response:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v7       #responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    :catchall_1
    move-exception v8

    .line 2594
    if-eqz v6, :cond_7

    .line 2595
    invoke-virtual {v6}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 2597
    :cond_7
    throw v8

    .line 2601
    .restart local v5       #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_8
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 2602
    new-instance v8, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v8

    .line 2604
    :cond_9
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    .line 2605
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 2606
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasJoined()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2607
    monitor-exit p0

    return-void
.end method

.method public kickParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "nickname"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2635
    const-string v0, "none"

    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    return-void
.end method

.method public declared-synchronized leave()V
    .locals 4

    .prologue
    .line 2643
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 2661
    :goto_0
    monitor-exit p0

    return-void

    .line 2648
    :cond_0
    :try_start_1
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 2649
    .local v0, leavePresence:Lorg/jivesoftware/smack/packet/Presence;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 2652
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2655
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 2657
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2658
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;

    .line 2659
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->joined:Z

    .line 2660
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userHasLeft()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2643
    .end local v0           #leavePresence:Lorg/jivesoftware/smack/packet/Presence;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2652
    .restart local v0       #leavePresence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketInterceptor;

    .line 2653
    .local v1, packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;
    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/PacketInterceptor;->interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public nextMessage()Lorg/jivesoftware/smack/packet/Message;
    .locals 1

    .prologue
    .line 2670
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->nextResult()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    return-object v0
.end method

.method public nextMessage(J)Lorg/jivesoftware/smack/packet/Message;
    .locals 1
    .parameter "timeout"

    .prologue
    .line 2685
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    return-object v0
.end method

.method public pollMessage()Lorg/jivesoftware/smack/packet/Message;
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->messageCollector:Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->pollResult()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    return-object v0
.end method

.method public removeInvitationRejectionListener(Lorg/jivesoftware/smackx/muc/InvitationRejectionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2712
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/List;

    monitor-enter v1

    .line 2713
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invitationRejectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2712
    monitor-exit v1

    .line 2715
    return-void

    .line 2712
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMessageListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2726
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 2727
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2728
    return-void
.end method

.method public removeParticipantListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2739
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 2740
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2741
    return-void
.end method

.method public removeParticipantStatusListener(Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2753
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 2754
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->participantStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2753
    monitor-exit v1

    .line 2756
    return-void

    .line 2753
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePresenceInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;)V
    .locals 1
    .parameter "presenceInterceptor"

    .prologue
    .line 2768
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->presenceInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2769
    return-void
.end method

.method public removeSubjectUpdatedListener(Lorg/jivesoftware/smackx/muc/SubjectUpdatedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2779
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/List;

    monitor-enter v1

    .line 2780
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->subjectUpdatedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2779
    monitor-exit v1

    .line 2782
    return-void

    .line 2779
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeUserStatusListener(Lorg/jivesoftware/smackx/muc/UserStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2793
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 2794
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->userStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2793
    monitor-exit v1

    .line 2796
    return-void

    .line 2793
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public revokeAdmin(Ljava/lang/String;)V
    .locals 1
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2827
    const-string v0, "member"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByOwner(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    return-void
.end method

.method public revokeAdmin(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2811
    .local p1, jids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "member"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByOwner(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2812
    return-void
.end method

.method public revokeMembership(Ljava/lang/String;)V
    .locals 2
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2860
    const-string v0, "none"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    return-void
.end method

.method public revokeMembership(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2843
    .local p1, jids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "none"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByAdmin(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2844
    return-void
.end method

.method public revokeModerator(Ljava/lang/String;)V
    .locals 2
    .parameter "nickname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2893
    const-string v0, "participant"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    return-void
.end method

.method public revokeModerator(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2877
    .local p1, nicknames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "participant"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2878
    return-void
.end method

.method public revokeOwnership(Ljava/lang/String;)V
    .locals 1
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2924
    const-string v0, "admin"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByOwner(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    return-void
.end method

.method public revokeOwnership(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2908
    .local p1, jids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "admin"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeAffiliationByOwner(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2909
    return-void
.end method

.method public revokeVoice(Ljava/lang/String;)V
    .locals 2
    .parameter "nickname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2963
    const-string v0, "visitor"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    return-void
.end method

.method public revokeVoice(Ljava/util/Collection;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2944
    .local p1, nicknames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "visitor"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeRole(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2945
    return-void
.end method

.method public sendConfigurationForm(Lorg/jivesoftware/smackx/Form;)V
    .locals 6
    .parameter "form"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 2978
    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCOwner;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;-><init>()V

    .line 2979
    .local v1, iq:Lorg/jivesoftware/smackx/packet/MUCOwner;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setTo(Ljava/lang/String;)V

    .line 2980
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/packet/MUCOwner;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 2981
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/packet/MUCOwner;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 2984
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 2985
    .local v3, responseFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 2986
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 2988
    .local v2, response:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 2991
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 2990
    invoke-virtual {v2, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 2993
    .local v0, answer:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 2995
    if-nez v0, :cond_0

    .line 2996
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2997
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2998
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 3000
    :cond_1
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 3023
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 3024
    .local v0, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 3025
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 3026
    return-void
.end method

.method public sendMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 3011
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 3012
    return-void
.end method

.method public sendRegistrationForm(Lorg/jivesoftware/smackx/Form;)V
    .locals 8
    .parameter "form"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 3049
    new-instance v2, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 3050
    .local v2, reg:Lorg/jivesoftware/smack/packet/Registration;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 3051
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 3052
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Registration;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 3054
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v5, 0x0

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 3055
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v7, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 3054
    aput-object v6, v4, v5

    invoke-direct {v1, v4}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 3056
    .local v1, filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    .line 3057
    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 3058
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 3060
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 3059
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 3061
    .local v3, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 3062
    if-nez v3, :cond_0

    .line 3063
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3064
    :cond_0
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_1

    .line 3065
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 3067
    :cond_1
    return-void
.end method
