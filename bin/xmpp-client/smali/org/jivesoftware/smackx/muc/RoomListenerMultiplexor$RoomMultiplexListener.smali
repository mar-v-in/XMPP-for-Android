.class Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;
.super Ljava/lang/Object;
.source "RoomListenerMultiplexor.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoomMultiplexListener"
.end annotation


# instance fields
.field private final roomListenersByAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;->roomListenersByAddress:Ljava/util/Map;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;-><init>()V

    return-void
.end method


# virtual methods
.method public addRoom(Ljava/lang/String;Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;)V
    .locals 2
    .parameter "address"
    .parameter "listener"

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;->roomListenersByAddress:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, from:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;->roomListenersByAddress:Ljava/util/Map;

    .line 112
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;

    .line 114
    .local v1, listener:Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public removeRoom(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexListener;->roomListenersByAddress:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
