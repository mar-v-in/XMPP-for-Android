.class Lxmpp/client/ui/activities/AppActivity$3;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


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
    iput-object p1, p0, Lxmpp/client/ui/activities/AppActivity$3;->this$0:Lxmpp/client/ui/activities/AppActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 3
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 131
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity$3;->this$0:Lxmpp/client/ui/activities/AppActivity;

    iput p1, v0, Lxmpp/client/ui/activities/AppActivity;->mCurrentNavigation:I

    .line 132
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity$3;->this$0:Lxmpp/client/ui/activities/AppActivity;

    #getter for: Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;
    invoke-static {v0}, Lxmpp/client/ui/activities/AppActivity;->access$1(Lxmpp/client/ui/activities/AppActivity;)Lxmpp/client/ui/adapter/RosterAdapter;

    move-result-object v1

    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity$3;->this$0:Lxmpp/client/ui/activities/AppActivity;

    iget-object v0, v0, Lxmpp/client/ui/activities/AppActivity;->mGroupAdapter:Lxmpp/client/ui/adapter/GroupAdapter;

    .line 133
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity$3;->this$0:Lxmpp/client/ui/activities/AppActivity;

    iget v2, v2, Lxmpp/client/ui/activities/AppActivity;->mCurrentNavigation:I

    invoke-virtual {v0, v2}, Lxmpp/client/ui/adapter/GroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {v1, v0}, Lxmpp/client/ui/adapter/RosterAdapter;->setActiveGroup(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method
