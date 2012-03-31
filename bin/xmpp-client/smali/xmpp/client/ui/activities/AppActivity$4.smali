.class Lxmpp/client/ui/activities/AppActivity$4;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lxmpp/client/ui/activities/AppActivity$4;->this$0:Lxmpp/client/ui/activities/AppActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity$4;->this$0:Lxmpp/client/ui/activities/AppActivity;

    #calls: Lxmpp/client/ui/activities/AppActivity;->doSend()V
    invoke-static {v0}, Lxmpp/client/ui/activities/AppActivity;->access$7(Lxmpp/client/ui/activities/AppActivity;)V

    .line 161
    return-void
.end method
