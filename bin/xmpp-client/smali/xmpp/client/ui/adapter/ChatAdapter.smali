.class public Lxmpp/client/ui/adapter/ChatAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatAdapter.java"


# instance fields
.field mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

.field mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxmpp/client/ui/provider/ChatProvider;Lxmpp/client/ui/provider/ContactProvider;)V
    .locals 0
    .parameter "context"
    .parameter "chatProvider"
    .parameter "contactProvider"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    .line 34
    iput-object p3, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    .line 35
    return-void
.end method

.method private buildEnd(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 38
    iget-object v4, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContext:Landroid/content/Context;

    .line 39
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Landroid/view/LayoutInflater;

    .line 40
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v4}, Lxmpp/client/ui/provider/ChatProvider;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lxmpp/client/ui/adapter/ChatAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxmpp/client/service/chat/ChatMessage;

    .line 42
    .local v1, message:Lxmpp/client/service/chat/ChatMessage;
    invoke-virtual {v1}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v4

    iget-object v5, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v5}, Lxmpp/client/ui/provider/ChatProvider;->getMeContact()Lxmpp/client/service/user/contact/Contact;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    const v4, 0x7f030007

    invoke-virtual {v0, v4, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 49
    .local v3, view:Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v4}, Lxmpp/client/ui/provider/ChatProvider;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lxmpp/client/ui/adapter/ChatAdapter;->checkDrawHeader(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-object v3

    .line 46
    .end local v3           #view:Landroid/view/View;
    :cond_1
    const v4, 0x7f030003

    invoke-virtual {v0, v4, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0
.end method

.method private buildView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 61
    invoke-direct {p0, p1}, Lxmpp/client/ui/adapter/ChatAdapter;->checkDrawHeader(I)Z

    move-result v1

    .line 62
    .local v1, drawHeader:Z
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/ChatAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxmpp/client/service/chat/ChatMessage;

    .line 63
    .local v3, message:Lxmpp/client/service/chat/ChatMessage;
    iget-object v7, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContext:Landroid/content/Context;

    .line 64
    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 63
    check-cast v2, Landroid/view/LayoutInflater;

    .line 65
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    if-eqz v1, :cond_2

    .line 66
    iget-object v7, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v7}, Lxmpp/client/ui/provider/ChatProvider;->getMeContact()Lxmpp/client/service/user/contact/Contact;

    move-result-object v7

    invoke-virtual {v3}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v8

    invoke-virtual {v7, v8}, Lxmpp/client/service/user/contact/Contact;->contains(Lxmpp/client/service/user/User;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 68
    const v7, 0x7f030008

    .line 67
    invoke-virtual {v2, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 74
    .local v6, view:Landroid/view/View;
    :goto_0
    const v7, 0x7f090010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, day:Landroid/widget/TextView;
    iget-object v7, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f060013

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 77
    invoke-virtual {v3}, Lxmpp/client/service/chat/ChatMessage;->getDate()Ljava/util/Date;

    move-result-object v8

    .line 75
    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v7, 0x7f09000f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 79
    .local v4, user:Landroid/widget/TextView;
    invoke-virtual {v3}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v7

    invoke-virtual {v7}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .end local v0           #day:Landroid/widget/TextView;
    .end local v4           #user:Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-object v6

    .line 72
    .end local v6           #view:Landroid/view/View;
    :cond_1
    const v7, 0x7f030004

    .line 71
    invoke-virtual {v2, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0

    .line 82
    .end local v6           #view:Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v7}, Lxmpp/client/ui/provider/ChatProvider;->getMeContact()Lxmpp/client/service/user/contact/Contact;

    move-result-object v7

    invoke-virtual {v3}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v8

    invoke-virtual {v7, v8}, Lxmpp/client/service/user/contact/Contact;->contains(Lxmpp/client/service/user/User;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 84
    const v7, 0x7f03000a

    .line 83
    invoke-virtual {v2, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 90
    .restart local v6       #view:Landroid/view/View;
    :goto_2
    if-lez p1, :cond_0

    add-int/lit8 v7, p1, -0x1

    invoke-direct {p0, v7}, Lxmpp/client/ui/adapter/ChatAdapter;->checkDrawHeader(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 91
    const v7, 0x7f09000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 92
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 93
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 88
    .end local v5           #v:Landroid/view/View;
    .end local v6           #view:Landroid/view/View;
    :cond_3
    const v7, 0x7f030006

    .line 87
    invoke-virtual {v2, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6       #view:Landroid/view/View;
    goto :goto_2
.end method

.method private checkDrawHeader(I)Z
    .locals 7
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    .line 101
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v4

    .line 104
    :cond_1
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/ChatAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/chat/ChatMessage;

    .line 105
    .local v2, message:Lxmpp/client/service/chat/ChatMessage;
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lxmpp/client/ui/adapter/ChatAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxmpp/client/service/chat/ChatMessage;

    .line 106
    .local v3, message2:Lxmpp/client/service/chat/ChatMessage;
    invoke-virtual {v2}, Lxmpp/client/service/chat/ChatMessage;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 107
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v3}, Lxmpp/client/service/chat/ChatMessage;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 108
    .local v1, date2:Ljava/util/Date;
    invoke-virtual {v2}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v5

    invoke-virtual {v3}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v6

    invoke-virtual {v5, v6}, Lxmpp/client/service/user/User;->equals(Lxmpp/client/service/user/User;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v5

    .line 111
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 108
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v0}, Lxmpp/client/ui/provider/ChatProvider;->size()I

    move-result v1

    iget-object v0, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v0}, Lxmpp/client/ui/provider/ChatProvider;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 121
    iget-object v0, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v0}, Lxmpp/client/ui/provider/ChatProvider;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v0, p1}, Lxmpp/client/ui/provider/ChatProvider;->getMessage(I)Lxmpp/client/service/chat/ChatMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/ChatAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .line 134
    iget-object v8, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v8}, Lxmpp/client/ui/provider/ChatProvider;->size()I

    move-result v8

    if-ne p1, v8, :cond_1

    .line 135
    invoke-direct {p0, p3}, Lxmpp/client/ui/adapter/ChatAdapter;->buildEnd(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 182
    :cond_0
    :goto_0
    return-object v7

    .line 137
    :cond_1
    invoke-virtual {p0, p1}, Lxmpp/client/ui/adapter/ChatAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/chat/ChatMessage;

    .line 138
    .local v2, message:Lxmpp/client/service/chat/ChatMessage;
    invoke-direct {p0, p1, p3}, Lxmpp/client/ui/adapter/ChatAdapter;->buildView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 139
    .local v7, view:Landroid/view/View;
    const v8, 0x7f090013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 140
    .local v5, time:Landroid/widget/TextView;
    iget-object v8, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    .line 141
    invoke-virtual {v2}, Lxmpp/client/service/chat/ChatMessage;->getDate()Ljava/util/Date;

    move-result-object v9

    .line 140
    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v8, 0x7f090012

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 143
    .local v4, text:Landroid/widget/TextView;
    invoke-virtual {v2}, Lxmpp/client/service/chat/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lxmpp/client/ui/extras/SmileyHandler;->getSmiledText(Ljava/lang/String;Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v8, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v8}, Lxmpp/client/ui/provider/ChatProvider;->getMeContact()Lxmpp/client/service/user/contact/Contact;

    move-result-object v8

    invoke-virtual {v2}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v9

    invoke-virtual {v8, v9}, Lxmpp/client/service/user/contact/Contact;->contains(Lxmpp/client/service/user/User;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 145
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 146
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 145
    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 147
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v8, Lxmpp/client/ui/adapter/ChatAdapter$1;

    invoke-direct {v8, p0}, Lxmpp/client/ui/adapter/ChatAdapter$1;-><init>(Lxmpp/client/ui/adapter/ChatAdapter;)V

    .line 154
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 147
    invoke-virtual {v0, v8, v10, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 155
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    :cond_2
    const v8, 0x7f09000c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 158
    check-cast v3, Landroid/widget/QuickContactBadge;

    .line 161
    .local v3, q:Landroid/widget/QuickContactBadge;
    if-eqz v3, :cond_0

    .line 162
    iget-object v8, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v2}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v9

    .line 163
    invoke-virtual {v9}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-virtual {v8, v9}, Lxmpp/client/ui/provider/ContactProvider;->getContact(Ljava/lang/String;)Lxmpp/client/service/user/contact/Contact;

    move-result-object v1

    .line 164
    .local v1, contact:Lxmpp/client/service/user/contact/Contact;
    if-nez v1, :cond_3

    .line 165
    iget-object v8, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v2}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v9

    .line 166
    invoke-virtual {v9}, Lxmpp/client/service/user/User;->getFullUserLogin()Ljava/lang/String;

    move-result-object v9

    .line 165
    invoke-virtual {v8, v9}, Lxmpp/client/ui/provider/ContactProvider;->getContact(Ljava/lang/String;)Lxmpp/client/service/user/contact/Contact;

    move-result-object v1

    .line 168
    :cond_3
    const/4 v6, 0x0

    .line 169
    .local v6, userContact:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 170
    invoke-virtual {v1}, Lxmpp/client/service/user/contact/Contact;->getUserContact()Ljava/lang/String;

    move-result-object v6

    .line 172
    :cond_4
    if-eqz v6, :cond_5

    .line 173
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 175
    :cond_5
    if-eqz v1, :cond_6

    .line 176
    iget-object v8, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lxmpp/client/service/user/contact/Contact;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 178
    :cond_6
    invoke-virtual {v2}, Lxmpp/client/service/chat/ChatMessage;->getUser()Lxmpp/client/service/user/User;

    move-result-object v8

    iget-object v9, p0, Lxmpp/client/ui/adapter/ChatAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lxmpp/client/service/user/User;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method
