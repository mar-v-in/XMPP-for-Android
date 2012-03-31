.class public Lxmpp/client/ui/adapter/RosterAdapter;
.super Landroid/widget/BaseAdapter;
.source "RosterAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activeGroup:Ljava/lang/CharSequence;

.field mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lxmpp/client/ui/adapter/RosterAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/ui/adapter/RosterAdapter;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lxmpp/client/ui/provider/ContactProvider;)V
    .locals 2
    .parameter "context"
    .parameter "contactProvider"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p2, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    .line 30
    iput-object p1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    .line 32
    return-void
.end method

.method private getNormalItemView(ILandroid/view/View;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "baseView"

    .prologue
    const/high16 v8, -0x100

    .line 81
    const v7, 0x7f090020

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    .local v3, name:Landroid/widget/TextView;
    const v7, 0x7f090021

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 82
    check-cast v4, Landroid/widget/TextView;

    .line 84
    .local v4, status:Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/RosterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 88
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    const v7, 0x7f020024

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    const v7, 0x7f090023

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 90
    check-cast v5, Landroid/widget/TextView;

    .line 92
    .local v5, unread:Landroid/widget/TextView;
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUnreadMessages()I

    move-result v7

    if-nez v7, :cond_1

    .line 93
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_0
    const v7, 0x7f090022

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    check-cast v1, Landroid/widget/LinearLayout;

    .line 101
    .local v1, iconContainer:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 102
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v7

    invoke-virtual {v7}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 140
    return-object p2

    .line 95
    .end local v1           #iconContainer:Landroid/widget/LinearLayout;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUnreadMessages()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    .restart local v1       #iconContainer:Landroid/widget/LinearLayout;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lxmpp/client/service/user/User;

    .line 103
    .local v6, user:Lxmpp/client/service/user/User;
    invoke-virtual {v6}, Lxmpp/client/service/user/User;->isInvisible()Z

    move-result v8

    if-nez v8, :cond_0

    .line 106
    new-instance v2, Landroid/widget/ImageView;

    iget-object v8, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v2, iview:Landroid/widget/ImageView;
    invoke-virtual {v6}, Lxmpp/client/service/user/User;->getTransportType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 115
    const v8, 0x7f02001d

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :goto_2
    invoke-virtual {v6}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v8

    invoke-virtual {v8}, Lxmpp/client/service/user/UserState;->getStatus()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    .line 137
    :goto_3
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 109
    :pswitch_1
    const v8, 0x7f02001b

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 112
    :pswitch_2
    const v8, 0x7f02001c

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 120
    :pswitch_3
    iget-object v8, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 121
    const v9, 0x1060014

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 125
    :pswitch_4
    iget-object v8, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 126
    const v9, 0x1060018

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 125
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 129
    :pswitch_5
    iget-object v8, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 130
    const v9, 0x1060016

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 129
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 133
    :pswitch_6
    iget-object v8, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 134
    const/high16 v9, 0x7f05

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 107
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 118
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private getSelfItemView(ILandroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "baseView"

    .prologue
    const/4 v6, -0x1

    .line 162
    const v5, 0x7f090020

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    .local v2, name:Landroid/widget/TextView;
    const v5, 0x7f090021

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 163
    check-cast v3, Landroid/widget/TextView;

    .line 165
    .local v3, status:Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/RosterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 169
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v5

    invoke-virtual {v5}, Lxmpp/client/service/user/UserState;->getStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    const v5, 0x7f090023

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 185
    check-cast v4, Landroid/widget/TextView;

    .line 187
    .local v4, unread:Landroid/widget/TextView;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    const v5, 0x7f090022

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 189
    check-cast v1, Landroid/widget/LinearLayout;

    .line 191
    .local v1, iconContainer:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 193
    return-object p2

    .line 171
    .end local v1           #iconContainer:Landroid/widget/LinearLayout;
    .end local v4           #unread:Landroid/widget/TextView;
    :pswitch_1
    const v5, 0x7f020028

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 175
    :pswitch_2
    const v5, 0x7f020025

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 178
    :pswitch_3
    const v5, 0x7f020027

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 181
    :pswitch_4
    const v5, 0x7f020026

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addRosterEntry(Lxmpp/client/service/user/User;)V
    .locals 1
    .parameter "re"

    .prologue
    .line 35
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0, p1}, Lxmpp/client/ui/provider/ContactProvider;->add(Lxmpp/client/service/user/User;)V

    .line 36
    invoke-virtual {p0}, Lxmpp/client/ui/adapter/RosterAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public delRosterEntry(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 40
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0, p1}, Lxmpp/client/ui/provider/ContactProvider;->remove(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lxmpp/client/ui/adapter/RosterAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 46
    iget-object v1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    iget-object v2, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0}, Lxmpp/client/ui/provider/ContactProvider;->userSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    iget-object v1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    iget-object v2, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 49
    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    sget-object v1, Lxmpp/client/ui/adapter/RosterAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getCount: conferences not yet implemented"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    iget-object v2, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 53
    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0}, Lxmpp/client/ui/provider/ContactProvider;->userOnlineSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_3
    iget-object v1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    iget-object v2, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 56
    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    iget-object v1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lxmpp/client/ui/provider/ContactProvider;->userGroupSize(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getGroups()Lxmpp/client/service/user/group/GroupList;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0}, Lxmpp/client/ui/provider/ContactProvider;->getGroups()Lxmpp/client/service/user/group/GroupList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0}, Lxmpp/client/ui/provider/ContactProvider;->getMeContact()Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lxmpp/client/ui/adapter/RosterAdapter;->getRosterItem(I)Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/RosterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRosterEntry(Ljava/lang/String;)Lxmpp/client/service/user/contact/Contact;
    .locals 1
    .parameter "address"

    .prologue
    .line 144
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0, p1}, Lxmpp/client/ui/provider/ContactProvider;->getContact(Ljava/lang/String;)Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getRosterItem(I)Lxmpp/client/service/user/contact/Contact;
    .locals 3
    .parameter "position"

    .prologue
    .line 148
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    iget-object v1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    iget-object v1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 150
    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0, p1}, Lxmpp/client/ui/provider/ContactProvider;->getContact(I)Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 152
    :cond_1
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    iget-object v1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 153
    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    sget-object v0, Lxmpp/client/ui/adapter/RosterAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getRosterItem: conferences not yet implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    iget-object v1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lxmpp/client/ui/provider/ContactProvider;->getContactInGroup(Ljava/lang/CharSequence;I)Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/RosterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 200
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    if-nez p2, :cond_2

    .line 201
    iget-object v7, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 202
    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 201
    check-cast v1, Landroid/view/LayoutInflater;

    .line 203
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030010

    invoke-virtual {v1, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 209
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .local v4, rosteritem:Landroid/view/View;
    :goto_0
    const v7, 0x7f090020

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 208
    check-cast v2, Landroid/widget/TextView;

    .line 210
    .local v2, name:Landroid/widget/TextView;
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v7, 0x7f090021

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 211
    check-cast v5, Landroid/widget/TextView;

    .line 213
    .local v5, status:Landroid/widget/TextView;
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v7

    .line 214
    iget-object v8, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {v7, v8}, Lxmpp/client/service/user/UserState;->getStatusText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 215
    .local v6, statusText:Ljava/lang/CharSequence;
    if-eqz v6, :cond_0

    .line 216
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_0
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v7

    .line 220
    invoke-virtual {v7}, Lxmpp/client/service/user/UserState;->getStatusIconResourceID()I

    move-result v7

    .line 219
    invoke-virtual {v5, v7, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 223
    const v7, 0x7f090014

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 222
    check-cast v3, Landroid/widget/QuickContactBadge;

    .line 224
    .local v3, q:Landroid/widget/QuickContactBadge;
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserContact()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 225
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserContact()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 227
    :cond_1
    iget-object v7, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lxmpp/client/service/user/contact/Contact;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    if-nez p1, :cond_3

    .line 230
    invoke-direct {p0, p1, v4}, Lxmpp/client/ui/adapter/RosterAdapter;->getSelfItemView(ILandroid/view/View;)Landroid/view/View;

    .line 235
    :goto_1
    return-object v4

    .line 206
    .end local v2           #name:Landroid/widget/TextView;
    .end local v3           #q:Landroid/widget/QuickContactBadge;
    .end local v4           #rosteritem:Landroid/view/View;
    .end local v5           #status:Landroid/widget/TextView;
    .end local v6           #statusText:Ljava/lang/CharSequence;
    :cond_2
    move-object v4, p2

    .restart local v4       #rosteritem:Landroid/view/View;
    goto :goto_0

    .line 232
    .restart local v2       #name:Landroid/widget/TextView;
    .restart local v3       #q:Landroid/widget/QuickContactBadge;
    .restart local v5       #status:Landroid/widget/TextView;
    .restart local v6       #statusText:Ljava/lang/CharSequence;
    :cond_3
    invoke-direct {p0, p1, v4}, Lxmpp/client/ui/adapter/RosterAdapter;->getNormalItemView(ILandroid/view/View;)Landroid/view/View;

    goto :goto_1
.end method

.method public setActiveGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 239
    iput-object p1, p0, Lxmpp/client/ui/adapter/RosterAdapter;->activeGroup:Ljava/lang/CharSequence;

    .line 240
    invoke-virtual {p0}, Lxmpp/client/ui/adapter/RosterAdapter;->notifyDataSetChanged()V

    .line 241
    return-void
.end method

.method public updateRosterEntry(Lxmpp/client/service/user/User;)V
    .locals 1
    .parameter "re"

    .prologue
    .line 244
    iget-object v0, p0, Lxmpp/client/ui/adapter/RosterAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0, p1}, Lxmpp/client/ui/provider/ContactProvider;->update(Lxmpp/client/service/user/User;)V

    .line 245
    invoke-virtual {p0}, Lxmpp/client/ui/adapter/RosterAdapter;->notifyDataSetChanged()V

    .line 246
    return-void
.end method
