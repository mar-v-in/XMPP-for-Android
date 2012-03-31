.class Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService$1;
.super Ljava/lang/Object;
.source "ContactsSyncAdapterService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;


# direct methods
.method constructor <init>(Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService$1;->this$0:Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 54
    iget-object v1, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService$1;->this$0:Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, v1, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mService:Landroid/os/Messenger;

    .line 56
    :try_start_0
    iget-object v1, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService$1;->this$0:Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;

    invoke-virtual {v1}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->checkState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceConnection.onServiceConnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 65
    iget-object v0, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService$1;->this$0:Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;

    const/4 v1, 0x0

    iput-object v1, v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mService:Landroid/os/Messenger;

    .line 66
    return-void
.end method
