.class public Lxmpp/client/ui/account/AccountLogin;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "AccountLogin.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPassword:Landroid/widget/EditText;

.field private mUserLogin:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lxmpp/client/ui/account/AccountLogin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/ui/account/AccountLogin;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lxmpp/client/ui/account/AccountLogin;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lxmpp/client/ui/account/AccountLogin;->mUserLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lxmpp/client/ui/account/AccountLogin;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lxmpp/client/ui/account/AccountLogin;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lxmpp/client/ui/account/AccountLogin;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lxmpp/client/ui/account/AccountLogin;->doLogin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private doLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "user"
    .parameter "pass"

    .prologue
    const v6, 0x7f060006

    const/4 v5, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    .local v3, result:Landroid/os/Bundle;
    new-instance v0, Landroid/accounts/Account;

    .line 22
    invoke-virtual {p0, v6}, Lxmpp/client/ui/account/AccountLogin;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-direct {v0, p1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v0, account:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 25
    .local v2, am:Landroid/accounts/AccountManager;
    invoke-virtual {p0, v6}, Lxmpp/client/ui/account/AccountLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 26
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v4, v1

    if-nez v4, :cond_1

    .line 27
    const/4 v4, 0x0

    invoke-virtual {v2, v0, p2, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    new-instance v3, Landroid/os/Bundle;

    .end local v3           #result:Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 29
    .restart local v3       #result:Landroid/os/Bundle;
    const-string v4, "authAccount"

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v4, "accountType"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v3}, Lxmpp/client/ui/account/AccountLogin;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 32
    const/4 v4, 0x1

    .line 37
    :goto_0
    return v4

    :cond_0
    move v4, v5

    .line 34
    goto :goto_0

    :cond_1
    move v4, v5

    .line 37
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lxmpp/client/ui/account/AccountLogin;->setContentView(I)V

    .line 45
    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lxmpp/client/ui/account/AccountLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 46
    .local v2, b:Landroid/widget/Button;
    new-instance v3, Lxmpp/client/ui/account/AccountLogin$1;

    invoke-direct {v3, p0}, Lxmpp/client/ui/account/AccountLogin$1;-><init>(Lxmpp/client/ui/account/AccountLogin;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v3, 0x7f090016

    invoke-virtual {p0, v3}, Lxmpp/client/ui/account/AccountLogin;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lxmpp/client/ui/account/AccountLogin;->mUserLogin:Landroid/widget/EditText;

    .line 56
    const v3, 0x7f090018

    invoke-virtual {p0, v3}, Lxmpp/client/ui/account/AccountLogin;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lxmpp/client/ui/account/AccountLogin;->mPassword:Landroid/widget/EditText;

    .line 58
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 60
    .local v1, am:Landroid/accounts/AccountManager;
    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Lxmpp/client/ui/account/AccountLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 61
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 62
    iget-object v3, p0, Lxmpp/client/ui/account/AccountLogin;->mUserLogin:Landroid/widget/EditText;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget-object v3, Lxmpp/client/ui/account/AccountLogin;->TAG:Ljava/lang/String;

    .line 64
    const-string v4, "found existing Account: only One Account supported for now"

    .line 63
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v3, p0, Lxmpp/client/ui/account/AccountLogin;->mUserLogin:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
