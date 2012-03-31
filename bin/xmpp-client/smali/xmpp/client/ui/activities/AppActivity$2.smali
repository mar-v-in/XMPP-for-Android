.class Lxmpp/client/ui/activities/AppActivity$2;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxmpp/client/ui/activities/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxmpp/client/ui/activities/AppActivity;


# direct methods
.method constructor <init>(Lxmpp/client/ui/activities/AppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lxmpp/client/ui/activities/AppActivity$2;->this$0:Lxmpp/client/ui/activities/AppActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 93
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity$2;->this$0:Lxmpp/client/ui/activities/AppActivity;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;
    invoke-static {v2, v3}, Lxmpp/client/ui/activities/AppActivity;->access$3(Lxmpp/client/ui/activities/AppActivity;Landroid/os/Messenger;)V

    .line 94
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity$2;->this$0:Lxmpp/client/ui/activities/AppActivity;

    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity$2;->this$0:Lxmpp/client/ui/activities/AppActivity;

    invoke-virtual {v3}, Lxmpp/client/ui/activities/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lxmpp/client/ui/activities/AppActivity;->handleIntent(Landroid/content/Intent;)V

    .line 96
    const/4 v2, 0x0

    .line 97
    const/4 v3, 0x1

    .line 96
    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 98
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity$2;->this$0:Lxmpp/client/ui/activities/AppActivity;

    #getter for: Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Lxmpp/client/ui/activities/AppActivity;->access$4(Lxmpp/client/ui/activities/AppActivity;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 99
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity$2;->this$0:Lxmpp/client/ui/activities/AppActivity;

    #getter for: Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;
    invoke-static {v2}, Lxmpp/client/ui/activities/AppActivity;->access$5(Lxmpp/client/ui/activities/AppActivity;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 101
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity$2;->this$0:Lxmpp/client/ui/activities/AppActivity;

    iget-boolean v2, v2, Lxmpp/client/ui/activities/AppActivity;->doCheck:Z

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity$2;->this$0:Lxmpp/client/ui/activities/AppActivity;

    invoke-virtual {v2}, Lxmpp/client/ui/activities/AppActivity;->checkState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lxmpp/client/ui/activities/AppActivity;->access$6()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceConnection.onServiceConnected"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 113
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity$2;->this$0:Lxmpp/client/ui/activities/AppActivity;

    const/4 v1, 0x0

    #setter for: Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lxmpp/client/ui/activities/AppActivity;->access$3(Lxmpp/client/ui/activities/AppActivity;Landroid/os/Messenger;)V

    .line 114
    return-void
.end method
