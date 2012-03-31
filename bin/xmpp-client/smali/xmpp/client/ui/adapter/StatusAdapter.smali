.class public Lxmpp/client/ui/adapter/StatusAdapter;
.super Landroid/widget/BaseAdapter;
.source "StatusAdapter.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mShowOffline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxmpp/client/ui/adapter/StatusAdapter;-><init>(Landroid/content/Context;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "showOffline"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object p1, p0, Lxmpp/client/ui/adapter/StatusAdapter;->mContext:Landroid/content/Context;

    .line 56
    iput-boolean p2, p0, Lxmpp/client/ui/adapter/StatusAdapter;->mShowOffline:Z

    .line 57
    return-void
.end method

.method public static positionToStatus(I)I
    .locals 1
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 14
    packed-switch p0, :pswitch_data_0

    .line 26
    :goto_0
    :pswitch_0
    return v0

    .line 16
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 18
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 20
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 22
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static statusToPosition(I)I
    .locals 1
    .parameter "status"

    .prologue
    const/4 v0, 0x0

    .line 30
    packed-switch p0, :pswitch_data_0

    .line 42
    :goto_0
    :pswitch_0
    return v0

    .line 34
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 36
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 38
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 40
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lxmpp/client/ui/adapter/StatusAdapter;->mShowOffline:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 66
    invoke-static {p1}, Lxmpp/client/ui/adapter/StatusAdapter;->positionToStatus(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 71
    invoke-static {p1}, Lxmpp/client/ui/adapter/StatusAdapter;->positionToStatus(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 77
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 78
    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, view:Landroid/widget/TextView;
    :goto_0
    invoke-static {p1}, Lxmpp/client/ui/adapter/StatusAdapter;->positionToStatus(I)I

    move-result v1

    .line 85
    .local v1, status:I
    iget-object v3, p0, Lxmpp/client/ui/adapter/StatusAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lxmpp/client/service/user/UserState;->getStatusTextResourceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {v1}, Lxmpp/client/service/user/UserState;->getStatusIconResourceID(I)I

    move-result v3

    .line 86
    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 89
    iget-object v3, p0, Lxmpp/client/ui/adapter/StatusAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 90
    const v4, 0x7f070001

    .line 89
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 92
    .local v0, p:I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    return-object v2

    .line 80
    .end local v0           #p:I
    .end local v1           #status:I
    .end local v2           #view:Landroid/widget/TextView;
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lxmpp/client/ui/adapter/StatusAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v2       #view:Landroid/widget/TextView;
    goto :goto_0
.end method
