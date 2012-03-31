.class public Lorg/jivesoftware/smackx/MessageEventManager;
.super Ljava/lang/Object;
.source "MessageEventManager.java"


# instance fields
.field private final con:Lorg/jivesoftware/smack/Connection;

.field private final messageEventNotificationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/MessageEventNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final messageEventRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/MessageEventRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private packetListener:Lorg/jivesoftware/smack/PacketListener;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .parameter "con"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventNotificationListeners:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventRequestListeners:Ljava/util/List;

    .line 80
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v1, "x"

    .line 81
    const-string v2, "jabber:x:event"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 92
    iput-object p1, p0, Lorg/jivesoftware/smackx/MessageEventManager;->con:Lorg/jivesoftware/smack/Connection;

    .line 93
    invoke-direct {p0}, Lorg/jivesoftware/smackx/MessageEventManager;->init()V

    .line 94
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/MessageEventManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/MessageEventManager;->fireMessageEventRequestListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/MessageEventManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/MessageEventManager;->fireMessageEventNotificationListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addNotificationsRequests(Lorg/jivesoftware/smack/packet/Message;ZZZZ)V
    .locals 1
    .parameter "message"
    .parameter "offline"
    .parameter "delivered"
    .parameter "displayed"
    .parameter "composing"

    .prologue
    .line 67
    new-instance v0, Lorg/jivesoftware/smackx/packet/MessageEvent;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MessageEvent;-><init>()V

    .line 68
    .local v0, messageEvent:Lorg/jivesoftware/smackx/packet/MessageEvent;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setOffline(Z)V

    .line 69
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setDelivered(Z)V

    .line 70
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setDisplayed(Z)V

    .line 71
    invoke-virtual {v0, p4}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setComposing(Z)V

    .line 72
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 73
    return-void
.end method

.method private fireMessageEventNotificationListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "from"
    .parameter "packetID"
    .parameter "methodName"

    .prologue
    const/4 v4, 0x0

    .line 148
    const/4 v2, 0x0

    check-cast v2, [Lorg/jivesoftware/smackx/MessageEventNotificationListener;

    .line 150
    .local v2, listeners:[Lorg/jivesoftware/smackx/MessageEventNotificationListener;
    iget-object v5, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventNotificationListeners:Ljava/util/List;

    monitor-enter v5

    .line 151
    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventNotificationListeners:Ljava/util/List;

    .line 152
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 151
    new-array v2, v6, [Lorg/jivesoftware/smackx/MessageEventNotificationListener;

    .line 153
    iget-object v6, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventNotificationListeners:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    const-class v5, Lorg/jivesoftware/smackx/MessageEventNotificationListener;

    .line 157
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 156
    invoke-virtual {v5, p3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 158
    .local v3, method:Ljava/lang/reflect/Method;
    array-length v5, v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-lt v4, v5, :cond_0

    .line 168
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 150
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 158
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_3
    aget-object v1, v2, v4

    .line 159
    .local v1, listener:Lorg/jivesoftware/smackx/MessageEventNotificationListener;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    .end local v1           #listener:Lorg/jivesoftware/smackx/MessageEventNotificationListener;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 165
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private fireMessageEventRequestListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "from"
    .parameter "packetID"
    .parameter "methodName"

    .prologue
    const/4 v4, 0x0

    .line 175
    const/4 v2, 0x0

    check-cast v2, [Lorg/jivesoftware/smackx/MessageEventRequestListener;

    .line 177
    .local v2, listeners:[Lorg/jivesoftware/smackx/MessageEventRequestListener;
    iget-object v5, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventRequestListeners:Ljava/util/List;

    monitor-enter v5

    .line 178
    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventRequestListeners:Ljava/util/List;

    .line 179
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 178
    new-array v2, v6, [Lorg/jivesoftware/smackx/MessageEventRequestListener;

    .line 180
    iget-object v6, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventRequestListeners:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 177
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :try_start_1
    const-class v5, Lorg/jivesoftware/smackx/MessageEventRequestListener;

    .line 184
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 185
    const-class v8, Lorg/jivesoftware/smackx/MessageEventManager;

    aput-object v8, v6, v7

    .line 183
    invoke-virtual {v5, p3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 186
    .local v3, method:Ljava/lang/reflect/Method;
    array-length v5, v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-lt v4, v5, :cond_0

    .line 196
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 177
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 186
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_3
    aget-object v1, v2, v4

    .line 187
    .local v1, listener:Lorg/jivesoftware/smackx/MessageEventRequestListener;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p0, v6, v7

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    .end local v1           #listener:Lorg/jivesoftware/smackx/MessageEventRequestListener;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 193
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Lorg/jivesoftware/smackx/MessageEventManager$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/MessageEventManager$1;-><init>(Lorg/jivesoftware/smackx/MessageEventManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 229
    iget-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->con:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/MessageEventManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v2, p0, Lorg/jivesoftware/smackx/MessageEventManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 230
    return-void
.end method


# virtual methods
.method public addMessageEventNotificationListener(Lorg/jivesoftware/smackx/MessageEventNotificationListener;)V
    .locals 2
    .parameter "messageEventNotificationListener"

    .prologue
    .line 105
    iget-object v1, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventNotificationListeners:Ljava/util/List;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventNotificationListeners:Ljava/util/List;

    .line 107
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventNotificationListeners:Ljava/util/List;

    .line 109
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    monitor-exit v1

    .line 112
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addMessageEventRequestListener(Lorg/jivesoftware/smackx/MessageEventRequestListener;)V
    .locals 2
    .parameter "messageEventRequestListener"

    .prologue
    .line 123
    iget-object v1, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventRequestListeners:Ljava/util/List;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventRequestListeners:Ljava/util/List;

    .line 125
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    monitor-exit v1

    .line 129
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->con:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->con:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/MessageEventManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/MessageEventManager;->destroy()V

    .line 140
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 141
    return-void
.end method

.method public removeMessageEventNotificationListener(Lorg/jivesoftware/smackx/MessageEventNotificationListener;)V
    .locals 2
    .parameter "messageEventNotificationListener"

    .prologue
    .line 241
    iget-object v1, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventNotificationListeners:Ljava/util/List;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventNotificationListeners:Ljava/util/List;

    .line 243
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v1

    .line 245
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMessageEventRequestListener(Lorg/jivesoftware/smackx/MessageEventRequestListener;)V
    .locals 2
    .parameter "messageEventRequestListener"

    .prologue
    .line 256
    iget-object v1, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventRequestListeners:Ljava/util/List;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/MessageEventManager;->messageEventRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 256
    monitor-exit v1

    .line 259
    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendCancelledNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "to"
    .parameter "packetID"

    .prologue
    .line 272
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, msg:Lorg/jivesoftware/smack/packet/Message;
    new-instance v0, Lorg/jivesoftware/smackx/packet/MessageEvent;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MessageEvent;-><init>()V

    .line 275
    .local v0, messageEvent:Lorg/jivesoftware/smackx/packet/MessageEvent;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setCancelled(Z)V

    .line 276
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setPacketID(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 279
    iget-object v2, p0, Lorg/jivesoftware/smackx/MessageEventManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 280
    return-void
.end method

.method public sendComposingNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "to"
    .parameter "packetID"

    .prologue
    .line 293
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, msg:Lorg/jivesoftware/smack/packet/Message;
    new-instance v0, Lorg/jivesoftware/smackx/packet/MessageEvent;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MessageEvent;-><init>()V

    .line 296
    .local v0, messageEvent:Lorg/jivesoftware/smackx/packet/MessageEvent;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setComposing(Z)V

    .line 297
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setPacketID(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 300
    iget-object v2, p0, Lorg/jivesoftware/smackx/MessageEventManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 301
    return-void
.end method

.method public sendDeliveredNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "to"
    .parameter "packetID"

    .prologue
    .line 314
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, msg:Lorg/jivesoftware/smack/packet/Message;
    new-instance v0, Lorg/jivesoftware/smackx/packet/MessageEvent;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MessageEvent;-><init>()V

    .line 317
    .local v0, messageEvent:Lorg/jivesoftware/smackx/packet/MessageEvent;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setDelivered(Z)V

    .line 318
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setPacketID(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 321
    iget-object v2, p0, Lorg/jivesoftware/smackx/MessageEventManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 322
    return-void
.end method

.method public sendDisplayedNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "to"
    .parameter "packetID"

    .prologue
    .line 335
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, msg:Lorg/jivesoftware/smack/packet/Message;
    new-instance v0, Lorg/jivesoftware/smackx/packet/MessageEvent;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MessageEvent;-><init>()V

    .line 338
    .local v0, messageEvent:Lorg/jivesoftware/smackx/packet/MessageEvent;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setDisplayed(Z)V

    .line 339
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->setPacketID(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 342
    iget-object v2, p0, Lorg/jivesoftware/smackx/MessageEventManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 343
    return-void
.end method
