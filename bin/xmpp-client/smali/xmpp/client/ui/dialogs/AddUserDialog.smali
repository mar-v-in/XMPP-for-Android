.class public Lxmpp/client/ui/dialogs/AddUserDialog;
.super Ljava/lang/Object;
.source "AddUserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lxmpp/client/ui/dialogs/ResultProducer;


# instance fields
.field private final mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private mResult:Ljava/lang/String;

.field private mResultListener:Lxmpp/client/ui/dialogs/ResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mContext:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lxmpp/client/ui/dialogs/AddUserDialog;->buildDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 25
    return-void
.end method

.method private buildDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 28
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mContext:Landroid/content/Context;

    .line 30
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    check-cast v2, Landroid/view/LayoutInflater;

    .line 31
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 33
    .local v3, view:Landroid/view/View;
    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mEditText:Landroid/widget/EditText;

    .line 35
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 36
    iget-object v4, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f06001f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    iget-object v4, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f060020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 38
    const v4, 0x7f060023

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 41
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 43
    return-object v0
.end method

.method private sendResult()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mResultListener:Lxmpp/client/ui/dialogs/ResultListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mResultListener:Lxmpp/client/ui/dialogs/ResultListener;

    invoke-interface {v0, p0}, Lxmpp/client/ui/dialogs/ResultListener;->onResultAvailable(Lxmpp/client/ui/dialogs/ResultProducer;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlertDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lxmpp/client/ui/dialogs/AddUserDialog;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 57
    packed-switch p2, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mResult:Ljava/lang/String;

    goto :goto_0

    .line 57
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
    .line 66
    invoke-direct {p0}, Lxmpp/client/ui/dialogs/AddUserDialog;->sendResult()V

    .line 67
    return-void
.end method

.method public setResultListener(Lxmpp/client/ui/dialogs/ResultListener;)V
    .locals 0
    .parameter "resultListener"

    .prologue
    .line 77
    iput-object p1, p0, Lxmpp/client/ui/dialogs/AddUserDialog;->mResultListener:Lxmpp/client/ui/dialogs/ResultListener;

    .line 78
    return-void
.end method
