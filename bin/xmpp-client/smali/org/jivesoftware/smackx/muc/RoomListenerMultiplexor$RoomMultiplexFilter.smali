.class Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;
.super Ljava/lang/Object;
.source "RoomListenerMultiplexor.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoomMultiplexFilter"
.end annotation


# instance fields
.field private final roomAddressTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;->roomAddressTable:Ljava/util/Map;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 3
    .parameter "p"

    .prologue
    .line 60
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, from:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 62
    const/4 v1, 0x0

    .line 64
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;->roomAddressTable:Ljava/util/Map;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public addRoom(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;->roomAddressTable:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeRoom(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomListenerMultiplexor$RoomMultiplexFilter;->roomAddressTable:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
