.class public Lxmpp/client/service/handlers/SimpleMessageHandler;
.super Landroid/os/Handler;
.source "SimpleMessageHandler.java"


# instance fields
.field mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lxmpp/client/service/handlers/SimpleMessageHandlerClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/handlers/SimpleMessageHandler;->mClients:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxmpp/client/service/handlers/SimpleMessageHandler;->mClients:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 18
    invoke-direct {p0}, Lxmpp/client/service/handlers/SimpleMessageHandler;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lxmpp/client/service/handlers/SimpleMessageHandler;->addClient(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;Landroid/os/Looper;)V
    .locals 0
    .parameter "client"
    .parameter "looper"

    .prologue
    .line 28
    invoke-direct {p0, p2}, Lxmpp/client/service/handlers/SimpleMessageHandler;-><init>(Landroid/os/Looper;)V

    .line 29
    invoke-virtual {p0, p1}, Lxmpp/client/service/handlers/SimpleMessageHandler;->addClient(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;)V

    .line 30
    return-void
.end method


# virtual methods
.method public addClient(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 33
    iget-object v0, p0, Lxmpp/client/service/handlers/SimpleMessageHandler;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public clearClients()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lxmpp/client/service/handlers/SimpleMessageHandler;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    return-void
.end method

.method public delClient(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 37
    iget-object v0, p0, Lxmpp/client/service/handlers/SimpleMessageHandler;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 46
    iget-object v1, p0, Lxmpp/client/service/handlers/SimpleMessageHandler;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    return-void

    .line 46
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/handlers/SimpleMessageHandlerClient;

    .line 47
    .local v0, client:Lxmpp/client/service/handlers/SimpleMessageHandlerClient;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lxmpp/client/service/handlers/SimpleMessageHandlerClient;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v0, p1}, Lxmpp/client/service/handlers/SimpleMessageHandlerClient;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
