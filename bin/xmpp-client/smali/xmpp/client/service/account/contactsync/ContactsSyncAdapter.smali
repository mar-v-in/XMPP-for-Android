.class public Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "ContactsSyncAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContactsSyncAdapterService:Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;)V
    .locals 1
    .parameter "contactsSyncAdapterService"

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 18
    iput-object p1, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;->mContactsSyncAdapterService:Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;

    .line 19
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 7
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;->mContactsSyncAdapterService:Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->performSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v6

    .line 28
    .local v6, e:Landroid/accounts/OperationCanceledException;
    sget-object v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onPerformSync"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
