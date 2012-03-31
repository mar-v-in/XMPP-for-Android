.class public Lorg/jivesoftware/smackx/commands/AdHocCommandManager;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
    }
.end annotation


# static fields
.field private static final DISCO_NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/commands"

.field private static final SESSION_TIMEOUT:I = 0x78

.field private static final discoNode:Ljava/lang/String; = "http://jabber.org/protocol/commands"

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final commands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final executingCommands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/commands/LocalCommand;",
            ">;"
        }
    .end annotation
.end field

.field private sessionsSweeper:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->instances:Ljava/util/Map;

    .line 120
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->commands:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    .line 168
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 169
    invoke-direct {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->init()V

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    return-void
.end method

.method static synthetic access$1()Ljava/util/Map;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->instances:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 194
    invoke-direct {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->getRegisteredCommands()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->processAdHocCommand(Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V

    return-void
.end method

.method static synthetic access$5(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    return-object v0
.end method

.method public static getAddHocCommandsManager(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/commands/AdHocCommandManager;
    .locals 1
    .parameter "connection"

    .prologue
    .line 138
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    return-object v0
.end method

.method private getRegisteredCommands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->commands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 225
    sget-object v2, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->instances:Ljava/util/Map;

    iget-object v3, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v3, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$2;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$2;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 264
    iget-object v2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v2

    .line 265
    const-string v3, "http://jabber.org/protocol/commands"

    .line 264
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v2

    .line 271
    const-string v3, "http://jabber.org/protocol/commands"

    .line 272
    new-instance v4, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$3;

    invoke-direct {v4, p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$3;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V

    .line 271
    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/NodeInformationProvider;)V

    .line 303
    new-instance v1, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$4;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$4;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V

    .line 311
    .local v1, listener:Lorg/jivesoftware/smack/PacketListener;
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 312
    .local v0, filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 317
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$5;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$5;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->sessionsSweeper:Ljava/lang/Thread;

    .line 356
    iget-object v2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->sessionsSweeper:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 357
    return-void
.end method

.method private newInstanceOfCmd(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/LocalCommand;
    .locals 6
    .parameter "commandNode"
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v3, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->commands:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;

    .line 375
    .local v1, commandInfo:Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
    :try_start_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getCommandInstance()Lorg/jivesoftware/smackx/commands/LocalCommand;

    move-result-object v0

    .line 376
    .local v0, command:Lorg/jivesoftware/smackx/commands/LocalCommand;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/commands/LocalCommand;->setSessionID(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->setName(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getNode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->setNode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    return-object v0

    .line 379
    .end local v0           #command:Lorg/jivesoftware/smackx/commands/LocalCommand;
    :catch_0
    move-exception v2

    .line 380
    .local v2, e:Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 381
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    new-instance v4, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 382
    sget-object v5, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->interna_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 381
    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 383
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 384
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 385
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    new-instance v4, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 386
    sget-object v5, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->interna_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 385
    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3
.end method

.method private processAdHocCommand(Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V
    .locals 13
    .parameter "requestData"

    .prologue
    .line 417
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v9

    sget-object v10, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v9, v10, :cond_0

    .line 630
    :goto_0
    return-void

    .line 422
    :cond_0
    new-instance v7, Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-direct {v7}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;-><init>()V

    .line 423
    .local v7, response:Lorg/jivesoftware/smackx/packet/AdHocCommandData;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getFrom()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setTo(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getPacketID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setPacketID(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getNode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setNode(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getTo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setId(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getSessionID()Ljava/lang/String;

    move-result-object v8

    .line 429
    .local v8, sessionId:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getNode()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, commandNode:Ljava/lang/String;
    if-nez v8, :cond_8

    .line 434
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->commands:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 437
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {p0, v7, v9}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    goto :goto_0

    .line 442
    :cond_1
    const/16 v9, 0xf

    invoke-static {v9}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v8

    .line 447
    :try_start_0
    invoke-direct {p0, v2, v8}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->newInstanceOfCmd(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/LocalCommand;

    move-result-object v1

    .line 450
    .local v1, command:Lorg/jivesoftware/smackx/commands/LocalCommand;
    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 451
    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/commands/LocalCommand;->setData(Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V

    .line 456
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getFrom()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/commands/LocalCommand;->hasPermission(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 457
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {p0, v7, v9}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    .end local v1           #command:Lorg/jivesoftware/smackx/commands/LocalCommand;
    :catch_0
    move-exception v5

    .line 505
    .local v5, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    .line 510
    .local v6, error:Lorg/jivesoftware/smack/packet/XMPPError;
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/XMPPError;->getType()Lorg/jivesoftware/smack/packet/XMPPError$Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/jivesoftware/smack/packet/XMPPError$Type;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 511
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 512
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_2
    invoke-direct {p0, v7, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 515
    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v5           #e:Lorg/jivesoftware/smack/XMPPException;
    .end local v6           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v1       #command:Lorg/jivesoftware/smackx/commands/LocalCommand;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v0

    .line 464
    .local v0, action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    if-eqz v0, :cond_4

    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v0, v9}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 465
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 466
    sget-object v10, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->malformedAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 465
    invoke-direct {p0, v7, v9, v10}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V

    goto/16 :goto_0

    .line 471
    :cond_4
    if-eqz v0, :cond_5

    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v0, v9}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 472
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 473
    sget-object v10, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 472
    invoke-direct {p0, v7, v9, v10}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V

    goto/16 :goto_0

    .line 479
    :cond_5
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->incrementStage()V

    .line 481
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->execute()V

    .line 483
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->isLastStage()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 485
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 499
    :cond_6
    :goto_1
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v9, v7}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_0

    .line 489
    :cond_7
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 490
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v9, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->sessionsSweeper:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->isAlive()Z

    move-result v9

    if-nez v9, :cond_6

    .line 494
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->sessionsSweeper:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 518
    .end local v0           #action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .end local v1           #command:Lorg/jivesoftware/smackx/commands/LocalCommand;
    :cond_8
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/commands/LocalCommand;

    .line 523
    .restart local v1       #command:Lorg/jivesoftware/smackx/commands/LocalCommand;
    if-nez v1, :cond_9

    .line 524
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 525
    sget-object v10, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badSessionid:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 524
    invoke-direct {p0, v7, v9, v10}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V

    goto/16 :goto_0

    .line 530
    :cond_9
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->getCreationDate()J

    move-result-wide v3

    .line 531
    .local v3, creationStamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    const-wide/32 v11, 0x1d4c0

    cmp-long v9, v9, v11

    if-lez v9, :cond_a

    .line 533
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->not_allowed:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 537
    sget-object v10, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->sessionExpired:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 536
    invoke-direct {p0, v7, v9, v10}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V

    goto/16 :goto_0

    .line 546
    :cond_a
    monitor-enter v1

    .line 547
    :try_start_2
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v0

    .line 550
    .restart local v0       #action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    if-eqz v0, :cond_b

    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v0, v9}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 551
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 552
    sget-object v10, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->malformedAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 551
    invoke-direct {p0, v7, v9, v10}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V

    .line 553
    monitor-exit v1

    goto/16 :goto_0

    .line 546
    .end local v0           #action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    :catchall_0
    move-exception v9

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 558
    .restart local v0       #action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    :cond_b
    if-eqz v0, :cond_c

    :try_start_3
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 559
    :cond_c
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->getExecuteAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v0

    .line 564
    :cond_d
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/commands/LocalCommand;->isValidAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 565
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 566
    sget-object v10, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 565
    invoke-direct {p0, v7, v9, v10}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V

    .line 567
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 578
    :cond_e
    :try_start_4
    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 581
    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/commands/LocalCommand;->setData(Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V

    .line 583
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 584
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->incrementStage()V

    .line 585
    new-instance v9, Lorg/jivesoftware/smackx/Form;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getForm()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/commands/LocalCommand;->next(Lorg/jivesoftware/smackx/Form;)V

    .line 586
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->isLastStage()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 589
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 610
    :cond_f
    :goto_2
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v9, v7}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_1

    .line 546
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 592
    :cond_10
    :try_start_6
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 611
    :catch_1
    move-exception v5

    .line 615
    .restart local v5       #e:Lorg/jivesoftware/smack/XMPPException;
    :try_start_7
    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    .line 620
    .restart local v6       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    sget-object v9, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/XMPPError;->getType()Lorg/jivesoftware/smack/packet/XMPPError$Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/jivesoftware/smack/packet/XMPPError$Type;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 621
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 622
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_11
    invoke-direct {p0, v7, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 626
    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 594
    .end local v5           #e:Lorg/jivesoftware/smack/XMPPException;
    .end local v6           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_12
    :try_start_8
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 595
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->incrementStage()V

    .line 596
    new-instance v9, Lorg/jivesoftware/smackx/Form;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getForm()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/commands/LocalCommand;->complete(Lorg/jivesoftware/smackx/Form;)V

    .line 597
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 599
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 600
    :cond_13
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 601
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->decrementStage()V

    .line 602
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->prev()V

    goto :goto_2

    .line 603
    :cond_14
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 604
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->cancel()V

    .line 605
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 607
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2
.end method

.method private respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V
    .locals 1
    .parameter "response"
    .parameter "condition"

    .prologue
    .line 763
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-direct {v0, p2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 764
    return-void
.end method

.method private respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V
    .locals 2
    .parameter "response"
    .parameter "condition"
    .parameter "specificCondition"

    .prologue
    .line 779
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-direct {v0, p2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 780
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    new-instance v1, Lorg/jivesoftware/smackx/packet/AdHocCommandData$SpecificError;

    invoke-direct {v1, p3}, Lorg/jivesoftware/smackx/packet/AdHocCommandData$SpecificError;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 781
    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 782
    return-void
.end method

.method private respondError(Lorg/jivesoftware/smackx/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 1
    .parameter "response"
    .parameter "error"

    .prologue
    .line 748
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 749
    invoke-virtual {p1, p2}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 750
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 751
    return-void
.end method


# virtual methods
.method public discoverCommands(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .locals 2
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 185
    .local v0, serviceDiscoveryManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    const-string v1, "http://jabber.org/protocol/commands"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v1

    return-object v1
.end method

.method public getRemoteCommand(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/RemoteCommand;
    .locals 2
    .parameter "jid"
    .parameter "node"

    .prologue
    .line 211
    new-instance v0, Lorg/jivesoftware/smackx/commands/RemoteCommand;

    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v0, v1, p2, p1}, Lorg/jivesoftware/smackx/commands/RemoteCommand;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public publishCommands(Ljava/lang/String;)V
    .locals 7
    .parameter "jid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 642
    iget-object v5, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v5}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v3

    .line 645
    .local v3, serviceDiscoveryManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;-><init>()V

    .line 646
    .local v0, discoverItems:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    invoke-direct {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->getRegisteredCommands()Ljava/util/Collection;

    move-result-object v4

    .line 648
    .local v4, xCommandsList:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 656
    const-string v5, "http://jabber.org/protocol/commands"

    invoke-virtual {v3, p1, v5, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->publishItems(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverItems;)V

    .line 657
    return-void

    .line 648
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;

    .line 649
    .local v1, info:Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
    new-instance v2, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 650
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getOwnerJID()Ljava/lang/String;

    move-result-object v6

    .line 649
    invoke-direct {v2, v6}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;-><init>(Ljava/lang/String;)V

    .line 651
    .local v2, item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->setName(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getNode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->setNode(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->addItem(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V

    goto :goto_0
.end method

.method public registerCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "node"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;

    invoke-direct {v0, p0, p3}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->registerCommand(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;)V

    .line 683
    return-void
.end method

.method public registerCommand(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;)V
    .locals 3
    .parameter "node"
    .parameter "name"
    .parameter "factory"

    .prologue
    .line 701
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;

    .line 702
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v1

    .line 701
    invoke-direct {v0, p1, p2, v1, p3}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;)V

    .line 704
    .local v0, commandInfo:Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->commands:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 709
    new-instance v2, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;

    invoke-direct {v2, p0, p2}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v1, p1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/NodeInformationProvider;)V

    .line 737
    return-void
.end method
