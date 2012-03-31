.class public Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
.super Ljava/lang/Object;
.source "InBandBytestreamManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;
    }
.end annotation


# static fields
.field public static final MAXIMUM_BLOCK_SIZE:I = 0xffff

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/ibb"

.field private static final SESSION_ID_PREFIX:Ljava/lang/String; = "jibb_"

.field private static final managers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final randomGenerator:Ljava/util/Random;


# instance fields
.field private final allRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation
.end field

.field private final closeListener:Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final dataListener:Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

.field private defaultBlockSize:I

.field private final ignoredBytestreamRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

.field private maximumBlockSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;",
            ">;"
        }
    .end annotation
.end field

.field private stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

.field private final userListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 142
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->randomGenerator:Ljava/util/Random;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->managers:Ljava/util/Map;

    .line 82
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->userListeners:Ljava/util/Map;

    .line 182
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->allRequestListeners:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->sessions:Ljava/util/Map;

    .line 197
    const/16 v0, 0x1000

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->defaultBlockSize:I

    .line 200
    const v0, 0xffff

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->maximumBlockSize:I

    .line 203
    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->IQ:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    .line 210
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    .line 219
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 222
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    .line 223
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    .line 224
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->getFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v2

    .line 223
    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 227
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->dataListener:Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

    .line 228
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->dataListener:Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

    .line 229
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->dataListener:Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;->getFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v2

    .line 228
    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 232
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->closeListener:Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

    .line 233
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->closeListener:Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

    .line 234
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->closeListener:Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;->getFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v2

    .line 233
    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 236
    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->disableService()V

    return-void
.end method

.method private disableService()V
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->managers:Ljava/util/Map;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 297
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->dataListener:Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 298
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->closeListener:Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 301
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->shutdown()V

    .line 304
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 305
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 306
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 307
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    return-void
.end method

.method public static declared-synchronized getByteStreamManager(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    .locals 3
    .parameter "connection"

    .prologue
    .line 157
    const-class v2, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 165
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 160
    :cond_1
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 161
    .local v0, manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .end local v0           #manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 163
    .restart local v0       #manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    .end local v0           #manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getNextSessionID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "jibb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 256
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;Ljava/lang/String;)V
    .locals 1
    .parameter "listener"
    .parameter "initiatorJID"

    .prologue
    .line 283
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public bridge synthetic establishSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->establishSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v0

    return-object v0
.end method

.method public establishSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    .locals 2
    .parameter "targetJID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getNextSessionID()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, sessionID:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v1

    return-object v1
.end method

.method public establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    .locals 4
    .parameter "targetJID"
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    iget v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->defaultBlockSize:I

    .line 356
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    .line 355
    invoke-direct {v0, p2, v2, v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;)V

    .line 357
    .local v0, byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->setTo(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v2, v0}, Lorg/jivesoftware/smack/util/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    .line 362
    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    .line 363
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 362
    invoke-direct {v1, v2, v0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;Ljava/lang/String;)V

    .line 364
    .local v1, inBandBytestreamSession:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->sessions:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    return-object v1
.end method

.method protected getAllRequestListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->allRequestListeners:Ljava/util/List;

    return-object v0
.end method

.method protected getConnection()Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method public getDefaultBlockSize()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->defaultBlockSize:I

    return v0
.end method

.method protected getIgnoredBytestreamRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    return-object v0
.end method

.method public getMaximumBlockSize()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->maximumBlockSize:I

    return v0
.end method

.method protected getSessions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->sessions:Ljava/util/Map;

    return-object v0
.end method

.method public getStanza()Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    return-object v0
.end method

.method protected getUserListener(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    .locals 1
    .parameter "initiator"

    .prologue
    .line 471
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    return-object v0
.end method

.method public ignoreBytestreamRequestOnce(Ljava/lang/String;)V
    .locals 1
    .parameter "sessionID"

    .prologue
    .line 486
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method

.method public removeIncomingBytestreamListener(Ljava/lang/String;)V
    .locals 1
    .parameter "initiatorJID"

    .prologue
    .line 509
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    return-void
.end method

.method public removeIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 498
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 499
    return-void
.end method

.method protected replyItemNotFoundPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 520
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 521
    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 520
    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 522
    .local v1, xmppError:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-static {p1, v1}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 523
    .local v0, error:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 524
    return-void
.end method

.method protected replyRejectPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 534
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 535
    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->no_acceptable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 534
    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 536
    .local v1, xmppError:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-static {p1, v1}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 537
    .local v0, error:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 538
    return-void
.end method

.method protected replyResourceConstraintPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 550
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 551
    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->resource_constraint:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 550
    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 552
    .local v1, xmppError:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-static {p1, v1}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 553
    .local v0, error:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 554
    return-void
.end method

.method public setDefaultBlockSize(I)V
    .locals 2
    .parameter "defaultBlockSize"

    .prologue
    .line 569
    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 571
    const-string v1, "Default block size must be between 1 and 65535"

    .line 570
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_1
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->defaultBlockSize:I

    .line 575
    return-void
.end method

.method public setMaximumBlockSize(I)V
    .locals 2
    .parameter "maximumBlockSize"

    .prologue
    .line 591
    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 593
    const-string v1, "Maximum block size must be between 1 and 65535"

    .line 592
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_1
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->maximumBlockSize:I

    .line 597
    return-void
.end method

.method public setStanza(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;)V
    .locals 0
    .parameter "stanza"

    .prologue
    .line 610
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    .line 611
    return-void
.end method
