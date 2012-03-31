.class public Lxmpp/client/ui/dialogs/StatusSelectorDialog;
.super Ljava/lang/Object;
.source "StatusSelectorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lxmpp/client/ui/dialogs/ResultProducer;


# instance fields
.field private final mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private mResult:Lxmpp/client/service/user/UserState;

.field private mResultListener:Lxmpp/client/ui/dialogs/ResultListener;

.field private mStatusSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxmpp/client/service/user/UserState;)V
    .locals 1
    .parameter "context"
    .parameter "input"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mResult:Lxmpp/client/service/user/UserState;

    .line 29
    invoke-direct {p0}, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->buildDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 30
    return-void
.end method

.method private buildDialog()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    .line 33
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mContext:Landroid/content/Context;

    .line 35
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    check-cast v2, Landroid/view/LayoutInflater;

    .line 36
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030011

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 38
    .local v3, view:Landroid/view/View;
    const v4, 0x7f090024

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mStatusSpinner:Landroid/widget/Spinner;

    .line 39
    iget-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mStatusSpinner:Landroid/widget/Spinner;

    new-instance v5, Lxmpp/client/ui/adapter/StatusAdapter;

    iget-object v6, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lxmpp/client/ui/adapter/StatusAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 41
    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mEditText:Landroid/widget/EditText;

    .line 43
    iget-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mStatusSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mResult:Lxmpp/client/service/user/UserState;

    .line 44
    invoke-virtual {v5}, Lxmpp/client/service/user/UserState;->getStatus()I

    move-result v5

    .line 43
    invoke-static {v5}, Lxmpp/client/ui/adapter/StatusAdapter;->statusToPosition(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 46
    iget-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mResult:Lxmpp/client/service/user/UserState;

    invoke-virtual {v4}, Lxmpp/client/service/user/UserState;->getCustomStatusText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 47
    iget-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mResult:Lxmpp/client/service/user/UserState;

    invoke-virtual {v5}, Lxmpp/client/service/user/UserState;->getCustomStatusText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 52
    iget-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f06001f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    iget-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f060020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    const v4, 0x7f06002c

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 57
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    return-object v0

    .line 49
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :cond_0
    iget-object v4, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendResult()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mResultListener:Lxmpp/client/ui/dialogs/ResultListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mResultListener:Lxmpp/client/ui/dialogs/ResultListener;

    invoke-interface {v0, p0}, Lxmpp/client/ui/dialogs/ResultListener;->onResultAvailable(Lxmpp/client/ui/dialogs/ResultProducer;)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlertDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->getResult()Lxmpp/client/service/user/UserState;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lxmpp/client/service/user/UserState;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mResult:Lxmpp/client/service/user/UserState;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 73
    packed-switch p2, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v2, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mStatusSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    .local v0, status:I
    iget-object v2, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, string:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 80
    :cond_0
    new-instance v2, Lxmpp/client/service/user/UserState;

    invoke-direct {v2, v0, v1}, Lxmpp/client/service/user/UserState;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mResult:Lxmpp/client/service/user/UserState;

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 87
    invoke-direct {p0}, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->sendResult()V

    .line 88
    return-void
.end method

.method public setResultListener(Lxmpp/client/ui/dialogs/ResultListener;)V
    .locals 0
    .parameter "resultListener"

    .prologue
    .line 98
    iput-object p1, p0, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->mResultListener:Lxmpp/client/ui/dialogs/ResultListener;

    .line 99
    return-void
.end method
