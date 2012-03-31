.class public Lxmpp/client/ui/adapter/GroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupAdapter.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mRosterContainer:Lxmpp/client/ui/provider/ContactProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxmpp/client/ui/provider/ContactProvider;)V
    .locals 0
    .parameter "context"
    .parameter "contactProvider"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p2, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mRosterContainer:Lxmpp/client/ui/provider/ContactProvider;

    .line 20
    iput-object p1, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private perfectInitiate(Landroid/view/View;Landroid/view/ViewGroup;IILjava/lang/CharSequence;)Landroid/view/View;
    .locals 5
    .parameter "baseView"
    .parameter "parent"
    .parameter "layout"
    .parameter "textViewID"
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 99
    iget-object v2, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    .line 100
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    check-cast v0, Landroid/view/LayoutInflater;

    .line 101
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    .local v1, textView:Landroid/widget/TextView;
    if-nez v1, :cond_1

    .line 105
    iget-object v2, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    .line 106
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    check-cast v0, Landroid/view/LayoutInflater;

    .line 107
    .restart local v0       #layoutInflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 108
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #textView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 110
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    .restart local v1       #textView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mRosterContainer:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0}, Lxmpp/client/ui/provider/ContactProvider;->getGroups()Lxmpp/client/service/user/group/GroupList;

    move-result-object v0

    invoke-virtual {v0}, Lxmpp/client/service/user/group/GroupList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 31
    :cond_0
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 33
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 35
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 37
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_4
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mRosterContainer:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0}, Lxmpp/client/ui/provider/ContactProvider;->getGroups()Lxmpp/client/service/user/group/GroupList;

    move-result-object v0

    add-int/lit8 v1, p1, -0x5

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/group/GroupList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/GroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 50
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v4, 0x7f09001e

    const v3, 0x7f03000e

    const v7, 0x7f09001f

    const v6, 0x7f03000f

    .line 59
    move-object v1, p2

    .line 60
    .local v1, view:Landroid/view/View;
    if-nez p1, :cond_0

    .line 62
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mRosterContainer:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0}, Lxmpp/client/ui/provider/ContactProvider;->getMeUserLogin()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    .line 61
    invoke-direct/range {v0 .. v5}, Lxmpp/client/ui/adapter/GroupAdapter;->perfectInitiate(Landroid/view/View;Landroid/view/ViewGroup;IILjava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 63
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 65
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f06000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    move v3, v6

    move v4, v7

    .line 64
    invoke-direct/range {v0 .. v5}, Lxmpp/client/ui/adapter/GroupAdapter;->perfectInitiate(Landroid/view/View;Landroid/view/ViewGroup;IILjava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 68
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f06000f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    move v3, v6

    move v4, v7

    .line 67
    invoke-direct/range {v0 .. v5}, Lxmpp/client/ui/adapter/GroupAdapter;->perfectInitiate(Landroid/view/View;Landroid/view/ViewGroup;IILjava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 71
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060010

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    move v3, v6

    move v4, v7

    .line 70
    invoke-direct/range {v0 .. v5}, Lxmpp/client/ui/adapter/GroupAdapter;->perfectInitiate(Landroid/view/View;Landroid/view/ViewGroup;IILjava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 74
    iget-object v0, p0, Lxmpp/client/ui/adapter/GroupAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, p0

    move-object v2, p3

    .line 73
    invoke-direct/range {v0 .. v5}, Lxmpp/client/ui/adapter/GroupAdapter;->perfectInitiate(Landroid/view/View;Landroid/view/ViewGroup;IILjava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/GroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p3

    move v3, v6

    move v4, v7

    .line 76
    invoke-direct/range {v0 .. v5}, Lxmpp/client/ui/adapter/GroupAdapter;->perfectInitiate(Landroid/view/View;Landroid/view/ViewGroup;IILjava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/GroupAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
