.class public Lxmpp/client/ui/adapter/ChatUserListEntryLongClickListener;
.super Ljava/lang/Object;
.source "ChatUserListEntryLongClickListener.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field mContext:Landroid/content/Context;

.field mUser:Lxmpp/client/service/user/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxmpp/client/service/user/User;)V
    .locals 0
    .parameter "context"
    .parameter "user"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lxmpp/client/ui/adapter/ChatUserListEntryLongClickListener;->mContext:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lxmpp/client/ui/adapter/ChatUserListEntryLongClickListener;->mUser:Lxmpp/client/service/user/User;

    .line 18
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 22
    iget-object v1, p0, Lxmpp/client/ui/adapter/ChatUserListEntryLongClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lxmpp/client/ui/adapter/ChatUserListEntryLongClickListener;->mUser:Lxmpp/client/service/user/User;

    invoke-virtual {v2}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 24
    .local v0, t:Landroid/widget/Toast;
    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 25
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    return v3
.end method
