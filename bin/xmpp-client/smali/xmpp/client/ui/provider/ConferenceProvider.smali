.class public Lxmpp/client/ui/provider/ConferenceProvider;
.super Ljava/lang/Object;
.source "ConferenceProvider.java"

# interfaces
.implements Lxmpp/client/service/handlers/SimpleMessageHandlerClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 12
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
