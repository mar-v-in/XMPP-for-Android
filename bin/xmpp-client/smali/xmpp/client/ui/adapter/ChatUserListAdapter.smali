.class public Lxmpp/client/ui/adapter/ChatUserListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatUserListAdapter.java"


# instance fields
.field mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

.field mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxmpp/client/ui/provider/ContactProvider;Lxmpp/client/ui/provider/ChatProvider;)V
    .locals 0
    .parameter "context"
    .parameter "contactProvider"
    .parameter "chatProvider"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    .line 27
    iput-object p2, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 32
    iget-object v1, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v1}, Lxmpp/client/ui/provider/ChatProvider;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v0

    .line 33
    .local v0, userlist:Lxmpp/client/service/user/UserList;
    if-nez v0, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 36
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lxmpp/client/service/user/UserList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 41
    iget-object v1, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v1}, Lxmpp/client/ui/provider/ChatProvider;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v0

    .line 42
    .local v0, userlist:Lxmpp/client/service/user/UserList;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 45
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/ChatUserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/User;

    .line 51
    .local v0, u:Lxmpp/client/service/user/User;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lxmpp/client/service/user/User;->hashCode()I

    move-result v1

    int-to-long v1, v1

    .line 54
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 59
    move-object v4, p2

    .line 60
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_0

    .line 61
    iget-object v5, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mContext:Landroid/content/Context;

    .line 62
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    check-cast v1, Landroid/view/LayoutInflater;

    .line 63
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000b

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 65
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/ChatUserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxmpp/client/service/user/User;

    .line 66
    .local v3, user:Lxmpp/client/service/user/User;
    if-eqz v3, :cond_2

    .line 67
    const-string v5, "xmpp..."

    invoke-virtual {v3}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v5, "xmpp..."

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v7}, Lxmpp/client/ui/provider/ChatProvider;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v7

    invoke-virtual {v7}, Lxmpp/client/service/user/UserList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v5, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    .line 70
    invoke-virtual {v3}, Lxmpp/client/service/user/User;->getFullUserLogin()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-virtual {v5, v6}, Lxmpp/client/ui/provider/ContactProvider;->getContact(Ljava/lang/String;)Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    .line 73
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 72
    check-cast v2, Landroid/widget/QuickContactBadge;

    .line 74
    .local v2, q:Landroid/widget/QuickContactBadge;
    new-instance v5, Lxmpp/client/ui/adapter/ChatUserListEntryLongClickListener;

    .line 75
    iget-object v6, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lxmpp/client/ui/adapter/ChatUserListEntryLongClickListener;-><init>(Landroid/content/Context;Lxmpp/client/service/user/User;)V

    .line 74
    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 76
    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserContact()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 78
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserContact()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 80
    :cond_1
    iget-object v5, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lxmpp/client/service/user/contact/Contact;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    .end local v0           #contact:Lxmpp/client/service/user/contact/Contact;
    .end local v2           #q:Landroid/widget/QuickContactBadge;
    :cond_2
    :goto_0
    return-object v4

    .line 82
    .restart local v0       #contact:Lxmpp/client/service/user/contact/Contact;
    .restart local v2       #q:Landroid/widget/QuickContactBadge;
    :cond_3
    iget-object v5, p0, Lxmpp/client/ui/adapter/ChatUserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lxmpp/client/service/user/User;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
