.class public Lxmpp/client/service/account/AccountAuthenticatorService;
.super Landroid/app/Service;
.source "AccountAuthenticatorService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAccountAuthenticator:Lxmpp/client/service/account/AccountAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lxmpp/client/service/account/AccountAuthenticatorService;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 9
    sput-object v0, Lxmpp/client/service/account/AccountAuthenticatorService;->TAG:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getAuthenticator()Lxmpp/client/service/account/AccountAuthenticator;
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lxmpp/client/service/account/AccountAuthenticatorService;->mAccountAuthenticator:Lxmpp/client/service/account/AccountAuthenticator;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lxmpp/client/service/account/AccountAuthenticator;

    invoke-direct {v0, p0}, Lxmpp/client/service/account/AccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lxmpp/client/service/account/AccountAuthenticatorService;->mAccountAuthenticator:Lxmpp/client/service/account/AccountAuthenticator;

    .line 17
    sget-object v0, Lxmpp/client/service/account/AccountAuthenticatorService;->TAG:Ljava/lang/String;

    const-string v1, "created AccountAuthenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    iget-object v0, p0, Lxmpp/client/service/account/AccountAuthenticatorService;->mAccountAuthenticator:Lxmpp/client/service/account/AccountAuthenticator;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, ret:Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v2, "android.accounts.AccountAuthenticator"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-direct {p0}, Lxmpp/client/service/account/AccountAuthenticatorService;->getAuthenticator()Lxmpp/client/service/account/AccountAuthenticator;

    move-result-object v1

    invoke-virtual {v1}, Lxmpp/client/service/account/AccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 29
    :cond_0
    return-object v0
.end method
