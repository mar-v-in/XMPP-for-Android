.class Lxmpp/client/ui/activities/AppActivity$1;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxmpp/client/ui/activities/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lxmpp/client/ui/activities/AppActivity;


# direct methods
.method constructor <init>(Lxmpp/client/ui/activities/AppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lxmpp/client/ui/activities/AppActivity$1;->this$0:Lxmpp/client/ui/activities/AppActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "item"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 83
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity$1;->this$0:Lxmpp/client/ui/activities/AppActivity;

    #calls: Lxmpp/client/ui/activities/AppActivity;->goStatusChange()V
    invoke-static {v0}, Lxmpp/client/ui/activities/AppActivity;->access$0(Lxmpp/client/ui/activities/AppActivity;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity$1;->this$0:Lxmpp/client/ui/activities/AppActivity;

    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity$1;->this$0:Lxmpp/client/ui/activities/AppActivity;

    #getter for: Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;
    invoke-static {v0}, Lxmpp/client/ui/activities/AppActivity;->access$1(Lxmpp/client/ui/activities/AppActivity;)Lxmpp/client/ui/adapter/RosterAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lxmpp/client/ui/adapter/RosterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserLogin()Ljava/lang/String;

    move-result-object v0

    #calls: Lxmpp/client/ui/activities/AppActivity;->goChat(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lxmpp/client/ui/activities/AppActivity;->access$2(Lxmpp/client/ui/activities/AppActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
