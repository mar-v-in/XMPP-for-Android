.class Lxmpp/client/ui/activities/AppActivity$5;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxmpp/client/ui/activities/AppActivity;->openChat()V
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
    iput-object p1, p0, Lxmpp/client/ui/activities/AppActivity$5;->this$0:Lxmpp/client/ui/activities/AppActivity;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 622
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 623
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity$5;->this$0:Lxmpp/client/ui/activities/AppActivity;

    #calls: Lxmpp/client/ui/activities/AppActivity;->doSend()V
    invoke-static {v0}, Lxmpp/client/ui/activities/AppActivity;->access$7(Lxmpp/client/ui/activities/AppActivity;)V

    .line 624
    const/4 v0, 0x1

    .line 626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
