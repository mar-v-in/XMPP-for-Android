.class Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;
.super Ljava/lang/Object;
.source "RoomListenerMultiplexor.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;,
        Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;
    }
.end annotation


# static fields
.field private static final monitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final filter:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;

.field private final listener:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->monitors:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;)V
    .locals 2
    .parameter "connection"
    .parameter "filter"
    .parameter "listener"

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    if-nez p2, :cond_1

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Filter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    if-nez p3, :cond_2

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_2
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->connection:Lorg/jivesoftware/smack/Connection;

    .line 182
    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->filter:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;

    .line 183
    iput-object p3, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->listener:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;

    .line 184
    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Connection;->removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 197
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->listener:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 198
    return-void
.end method

.method public static getRoomMultiplexor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;
    .locals 5
    .parameter "conn"

    .prologue
    .line 139
    sget-object v2, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->monitors:Ljava/util/Map;

    monitor-enter v2

    .line 140
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->monitors:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->monitors:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 141
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;

    .line 142
    new-instance v1, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;-><init>(Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;)V

    .line 143
    new-instance v3, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;-><init>(Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;)V

    .line 141
    invoke-direct {v0, p0, v1, v3}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;)V

    .line 145
    .local v0, rm:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->init()V

    .line 152
    sget-object v1, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->monitors:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 153
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 152
    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v0           #rm:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;
    :cond_1
    sget-object v1, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->monitors:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;

    monitor-exit v2

    return-object v1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addRoom(Ljava/lang/String;Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;)V
    .locals 1
    .parameter "address"
    .parameter "roomListener"

    .prologue
    .line 187
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->filter:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;->addRoom(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->listener:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;->addRoom(Ljava/lang/String;Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;)V

    .line 189
    return-void
.end method

.method public connectionClosed()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->cancel()V

    .line 203
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 207
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->cancel()V

    .line 208
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 218
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->listener:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->filter:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 219
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 224
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 229
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public removeRoom(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 237
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->filter:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;->removeRoom(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;->listener:Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;->removeRoom(Ljava/lang/String;)V

    .line 239
    return-void
.end method
