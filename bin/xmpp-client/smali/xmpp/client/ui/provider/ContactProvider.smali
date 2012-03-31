.class public Lxmpp/client/ui/provider/ContactProvider;
.super Ljava/lang/Object;
.source "ContactProvider.java"

# interfaces
.implements Lxmpp/client/service/handlers/SimpleMessageHandlerClient;
.implements Lxmpp/client/service/Signals;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContact:Lxmpp/client/service/user/contact/Contact;

.field private mContactList:Lxmpp/client/service/user/contact/ContactList;

.field private mContext:Landroid/content/Context;

.field private mGroupList:Lxmpp/client/service/user/group/GroupList;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lxmpp/client/ui/provider/ContactProviderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMessenger:Landroid/os/Messenger;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lxmpp/client/ui/provider/ContactProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/ui/provider/ContactProvider;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;Landroid/os/Messenger;Landroid/content/Context;)V
    .locals 4
    .parameter "localMessenger"
    .parameter "serviceMessenger"
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lxmpp/client/ui/provider/ContactProvider;->mMessenger:Landroid/os/Messenger;

    .line 33
    iput-object p2, p0, Lxmpp/client/ui/provider/ContactProvider;->mService:Landroid/os/Messenger;

    .line 34
    iput-object p3, p0, Lxmpp/client/ui/provider/ContactProvider;->mContext:Landroid/content/Context;

    .line 35
    new-instance v1, Lxmpp/client/service/user/contact/ContactList;

    invoke-direct {v1}, Lxmpp/client/service/user/contact/ContactList;-><init>()V

    iput-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    .line 36
    new-instance v1, Lxmpp/client/service/user/group/GroupList;

    invoke-direct {v1}, Lxmpp/client/service/user/group/GroupList;-><init>()V

    iput-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mGroupList:Lxmpp/client/service/user/group/GroupList;

    .line 37
    new-instance v0, Lxmpp/client/service/user/User;

    invoke-direct {v0}, Lxmpp/client/service/user/User;-><init>()V

    .line 38
    .local v0, u:Lxmpp/client/service/user/User;
    iget-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/User;->setUserLogin(Ljava/lang/String;)V

    .line 39
    new-instance v1, Lxmpp/client/service/user/UserState;

    const/4 v2, -0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lxmpp/client/service/user/UserState;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/User;->setUserState(Lxmpp/client/service/user/UserState;)V

    .line 40
    new-instance v1, Lxmpp/client/service/user/contact/Contact;

    invoke-direct {v1, v0}, Lxmpp/client/service/user/contact/Contact;-><init>(Lxmpp/client/service/user/User;)V

    iput-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mContact:Lxmpp/client/service/user/contact/Contact;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mListeners:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;Landroid/os/Messenger;Landroid/content/Context;Lxmpp/client/service/handlers/SimpleMessageHandler;)V
    .locals 0
    .parameter "localMessenger"
    .parameter "serviceMessenger"
    .parameter "context"
    .parameter "messageHandler"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lxmpp/client/ui/provider/ContactProvider;-><init>(Landroid/os/Messenger;Landroid/os/Messenger;Landroid/content/Context;)V

    .line 53
    invoke-virtual {p4, p0}, Lxmpp/client/service/handlers/SimpleMessageHandler;->addClient(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;Landroid/os/Messenger;Landroid/content/Context;Lxmpp/client/ui/provider/ContactProviderListener;)V
    .locals 0
    .parameter "localMessenger"
    .parameter "serviceMessenger"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lxmpp/client/ui/provider/ContactProvider;-><init>(Landroid/os/Messenger;Landroid/os/Messenger;Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0, p4}, Lxmpp/client/ui/provider/ContactProvider;->addListener(Lxmpp/client/ui/provider/ContactProviderListener;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;Landroid/os/Messenger;Landroid/content/Context;Lxmpp/client/ui/provider/ContactProviderListener;Lxmpp/client/service/handlers/SimpleMessageHandler;)V
    .locals 0
    .parameter "localMessenger"
    .parameter "serviceMessenger"
    .parameter "context"
    .parameter "listener"
    .parameter "messageHandler"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lxmpp/client/ui/provider/ContactProvider;-><init>(Landroid/os/Messenger;Landroid/os/Messenger;Landroid/content/Context;Lxmpp/client/ui/provider/ContactProviderListener;)V

    .line 59
    invoke-virtual {p5, p0}, Lxmpp/client/service/handlers/SimpleMessageHandler;->addClient(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;)V

    .line 60
    return-void
.end method

.method private sendChanged()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    return-void

    .line 205
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/ui/provider/ContactProviderListener;

    .line 206
    .local v0, listener:Lxmpp/client/ui/provider/ContactProviderListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lxmpp/client/ui/provider/ContactProviderListener;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-interface {v0, p0}, Lxmpp/client/ui/provider/ContactProviderListener;->contactProviderChanged(Lxmpp/client/ui/provider/ContactProvider;)V

    goto :goto_0
.end method

.method private sendReady()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    return-void

    .line 213
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/ui/provider/ContactProviderListener;

    .line 214
    .local v0, listener:Lxmpp/client/ui/provider/ContactProviderListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lxmpp/client/ui/provider/ContactProviderListener;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-interface {v0, p0}, Lxmpp/client/ui/provider/ContactProviderListener;->contactProviderReady(Lxmpp/client/ui/provider/ContactProvider;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lxmpp/client/service/user/User;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 75
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/ContactList;->add(Lxmpp/client/service/user/User;)V

    .line 76
    invoke-virtual {p0}, Lxmpp/client/ui/provider/ContactProvider;->update()V

    .line 77
    return-void
.end method

.method public addListener(Lxmpp/client/ui/provider/ContactProviderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 63
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    return-void
.end method

.method public delListener(Lxmpp/client/ui/provider/ContactProviderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 67
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public getContact(I)Lxmpp/client/service/user/contact/Contact;
    .locals 1
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0}, Lxmpp/client/service/user/contact/ContactList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 81
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContact(Ljava/lang/String;)Lxmpp/client/service/user/contact/Contact;
    .locals 4
    .parameter "address"

    .prologue
    .line 87
    iget-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mContact:Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v1, p1}, Lxmpp/client/service/user/contact/Contact;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContact:Lxmpp/client/service/user/contact/Contact;

    .line 96
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v1}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    sget-object v1, Lxmpp/client/ui/provider/ContactProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Roster Entry not found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 91
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/Contact;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public getContactInGroup(Ljava/lang/CharSequence;I)Lxmpp/client/service/user/contact/Contact;
    .locals 1
    .parameter "activeGroup"
    .parameter "position"

    .prologue
    .line 100
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0, p1, p2}, Lxmpp/client/service/user/contact/ContactList;->getInGroup(Ljava/lang/CharSequence;I)Lxmpp/client/service/user/contact/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getGroups()Lxmpp/client/service/user/group/GroupList;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mGroupList:Lxmpp/client/service/user/group/GroupList;

    return-object v0
.end method

.method public getMeContact()Lxmpp/client/service/user/contact/Contact;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContact:Lxmpp/client/service/user/contact/Contact;

    return-object v0
.end method

.method public getMeUserLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContact:Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUserLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    .local v0, b:Landroid/os/Bundle;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 202
    .end local v0           #b:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v0       #b:Landroid/os/Bundle;
    :sswitch_0
    sget-object v3, Lxmpp/client/ui/provider/ContactProvider;->TAG:Ljava/lang/String;

    const-string v4, "GET_CONTACTS_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v0           #b:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lxmpp/client/ui/provider/ContactProvider;->TAG:Ljava/lang/String;

    const-string v4, "handleMessage"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 157
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/os/Bundle;
    :sswitch_1
    :try_start_1
    sget-object v3, Lxmpp/client/ui/provider/ContactProvider;->TAG:Ljava/lang/String;

    const-string v4, "NOT_READY"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :sswitch_2
    const-class v3, Lxmpp/client/service/user/User;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 161
    const-string v3, "contact"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lxmpp/client/service/user/contact/Contact;

    iput-object v3, p0, Lxmpp/client/ui/provider/ContactProvider;->mContact:Lxmpp/client/service/user/contact/Contact;

    .line 162
    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 163
    iget-object v3, p0, Lxmpp/client/ui/provider/ContactProvider;->mMessenger:Landroid/os/Messenger;

    iput-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 164
    iget-object v3, p0, Lxmpp/client/ui/provider/ContactProvider;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 167
    :sswitch_3
    const-class v3, Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 168
    const-string v3, "contacts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const-string v3, "contacts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 170
    .local v2, p:Landroid/os/Parcelable;
    instance-of v3, v2, Lxmpp/client/service/user/contact/ContactList;

    if-eqz v3, :cond_0

    .line 171
    check-cast v2, Lxmpp/client/service/user/contact/ContactList;

    .end local v2           #p:Landroid/os/Parcelable;
    iput-object v2, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    .line 172
    invoke-virtual {p0}, Lxmpp/client/ui/provider/ContactProvider;->update()V

    .line 173
    invoke-direct {p0}, Lxmpp/client/ui/provider/ContactProvider;->sendReady()V

    .line 174
    invoke-direct {p0}, Lxmpp/client/ui/provider/ContactProvider;->sendChanged()V

    goto :goto_0

    .line 179
    :sswitch_4
    const-class v3, Lxmpp/client/service/user/User;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 180
    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 194
    :goto_1
    invoke-direct {p0}, Lxmpp/client/ui/provider/ContactProvider;->sendChanged()V

    goto/16 :goto_0

    .line 183
    :pswitch_0
    const-string v3, "entry"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lxmpp/client/service/user/User;

    invoke-virtual {p0, v3}, Lxmpp/client/ui/provider/ContactProvider;->add(Lxmpp/client/service/user/User;)V

    goto :goto_1

    .line 186
    :pswitch_1
    const-string v3, "entry"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lxmpp/client/service/user/User;

    invoke-virtual {p0, v3}, Lxmpp/client/ui/provider/ContactProvider;->update(Lxmpp/client/service/user/User;)V

    goto :goto_1

    .line 189
    :pswitch_2
    const-string v3, "address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxmpp/client/ui/provider/ContactProvider;->remove(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 152
    nop

    :sswitch_data_0
    .sparse-switch
        -0xe -> :sswitch_0
        -0x8 -> :sswitch_1
        0x8 -> :sswitch_2
        0xb -> :sswitch_4
        0xe -> :sswitch_3
    .end sparse-switch

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 116
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/ContactList;->removeUser(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lxmpp/client/ui/provider/ContactProvider;->update()V

    .line 118
    return-void
.end method

.method update()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0}, Lxmpp/client/service/user/contact/ContactList;->sort()V

    .line 122
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mGroupList:Lxmpp/client/service/user/group/GroupList;

    iget-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/group/GroupList;->fillFromContactList(Lxmpp/client/service/user/contact/ContactList;)V

    .line 123
    return-void
.end method

.method public update(Lxmpp/client/service/user/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 126
    iget-object v1, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v1}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    :goto_0
    invoke-virtual {p0}, Lxmpp/client/ui/provider/ContactProvider;->update()V

    .line 134
    return-void

    .line 126
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 127
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lxmpp/client/service/user/contact/Contact;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxmpp/client/service/user/contact/Contact;->remove(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/Contact;->add(Lxmpp/client/service/user/User;)V

    goto :goto_0
.end method

.method public userGroupSize(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "activeGroup"

    .prologue
    .line 137
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0, p1}, Lxmpp/client/service/user/contact/ContactList;->groupSize(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public userOnlineSize()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0}, Lxmpp/client/service/user/contact/ContactList;->sizeOnline()I

    move-result v0

    return v0
.end method

.method public userSize()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lxmpp/client/ui/provider/ContactProvider;->mContactList:Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v0}, Lxmpp/client/service/user/contact/ContactList;->sizeVisible()I

    move-result v0

    return v0
.end method
