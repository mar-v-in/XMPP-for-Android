.class Lxmpp/client/ui/account/AccountLogin$1;
.super Ljava/lang/Object;
.source "AccountLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxmpp/client/ui/account/AccountLogin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxmpp/client/ui/account/AccountLogin;


# direct methods
.method constructor <init>(Lxmpp/client/ui/account/AccountLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lxmpp/client/ui/account/AccountLogin$1;->this$0:Lxmpp/client/ui/account/AccountLogin;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 49
    iget-object v2, p0, Lxmpp/client/ui/account/AccountLogin$1;->this$0:Lxmpp/client/ui/account/AccountLogin;

    #getter for: Lxmpp/client/ui/account/AccountLogin;->mUserLogin:Landroid/widget/EditText;
    invoke-static {v2}, Lxmpp/client/ui/account/AccountLogin;->access$0(Lxmpp/client/ui/account/AccountLogin;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, user:Ljava/lang/String;
    iget-object v2, p0, Lxmpp/client/ui/account/AccountLogin$1;->this$0:Lxmpp/client/ui/account/AccountLogin;

    #getter for: Lxmpp/client/ui/account/AccountLogin;->mPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lxmpp/client/ui/account/AccountLogin;->access$1(Lxmpp/client/ui/account/AccountLogin;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, pass:Ljava/lang/String;
    iget-object v2, p0, Lxmpp/client/ui/account/AccountLogin$1;->this$0:Lxmpp/client/ui/account/AccountLogin;

    #calls: Lxmpp/client/ui/account/AccountLogin;->doLogin(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v1, v0}, Lxmpp/client/ui/account/AccountLogin;->access$2(Lxmpp/client/ui/account/AccountLogin;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    iget-object v2, p0, Lxmpp/client/ui/account/AccountLogin$1;->this$0:Lxmpp/client/ui/account/AccountLogin;

    invoke-virtual {v2}, Lxmpp/client/ui/account/AccountLogin;->finish()V

    .line 53
    return-void
.end method
