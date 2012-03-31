.class public Lxmpp/client/ui/activities/AppActivity;
.super Landroid/app/Activity;
.source "AppActivity.java"

# interfaces
.implements Lxmpp/client/service/handlers/SimpleMessageHandlerClient;
.implements Lxmpp/client/ui/dialogs/ResultListener;
.implements Lxmpp/client/ui/provider/ContactProviderListener;


# static fields
.field private static final DIALOG_ADDCONFERENCE:I = 0x3

.field private static final DIALOG_ADDUSER:I = 0x2

.field private static final DIALOG_STATUSSELECTOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final VIEW_CHAT:I = 0x1

.field private static final VIEW_ROSTER:I


# instance fields
.field doCheck:Z

.field itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mActionBar:Landroid/app/ActionBar;

.field private mAddConferenceDialog:Lxmpp/client/ui/dialogs/AddConferenceDialog;

.field private mAddUserDialog:Lxmpp/client/ui/dialogs/AddUserDialog;

.field private mChatAdapter:Lxmpp/client/ui/adapter/ChatAdapter;

.field private mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

.field private mChatUserListAdapter:Lxmpp/client/ui/adapter/ChatUserListAdapter;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

.field mCurrentNavigation:I

.field private mCurrentView:I

.field mGroupAdapter:Lxmpp/client/ui/adapter/GroupAdapter;

.field mIsBound:Z

.field mListView:Landroid/widget/ListView;

.field private mMUC:Ljava/lang/String;

.field private mMeContact:Lxmpp/client/service/user/contact/Contact;

.field private mMenu:Landroid/view/Menu;

.field private mMessageHandler:Lxmpp/client/service/handlers/SimpleMessageHandler;

.field private mMessageHolder:Landroid/widget/ListView;

.field private mMessenger:Landroid/os/Messenger;

.field private final mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

.field private mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

.field private mSendText:Landroid/widget/EditText;

.field private mService:Landroid/os/Messenger;

.field private mSession:Lxmpp/client/service/chat/ChatSession;

.field private mStatusSelectorDialog:Lxmpp/client/ui/dialogs/StatusSelectorDialog;

.field private mUID:Ljava/lang/String;

.field private mUser:Lxmpp/client/service/user/User;

.field private mUserHolder:Lcom/devsmart/android/ui/HorizontalListView;

.field private final sendClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lxmpp/client/ui/activities/AppActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentView:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxmpp/client/ui/activities/AppActivity;->doCheck:Z

    .line 77
    new-instance v0, Lxmpp/client/ui/activities/AppActivity$1;

    invoke-direct {v0, p0}, Lxmpp/client/ui/activities/AppActivity$1;-><init>(Lxmpp/client/ui/activities/AppActivity;)V

    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 90
    new-instance v0, Lxmpp/client/ui/activities/AppActivity$2;

    invoke-direct {v0, p0}, Lxmpp/client/ui/activities/AppActivity$2;-><init>(Lxmpp/client/ui/activities/AppActivity;)V

    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentNavigation:I

    .line 127
    new-instance v0, Lxmpp/client/ui/activities/AppActivity$3;

    invoke-direct {v0, p0}, Lxmpp/client/ui/activities/AppActivity$3;-><init>(Lxmpp/client/ui/activities/AppActivity;)V

    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    .line 157
    new-instance v0, Lxmpp/client/ui/activities/AppActivity$4;

    invoke-direct {v0, p0}, Lxmpp/client/ui/activities/AppActivity$4;-><init>(Lxmpp/client/ui/activities/AppActivity;)V

    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->sendClickListener:Landroid/view/View$OnClickListener;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lxmpp/client/ui/activities/AppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    invoke-direct {p0}, Lxmpp/client/ui/activities/AppActivity;->goStatusChange()V

    return-void
.end method

.method static synthetic access$1(Lxmpp/client/ui/activities/AppActivity;)Lxmpp/client/ui/adapter/RosterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lxmpp/client/ui/activities/AppActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lxmpp/client/ui/activities/AppActivity;->goChat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lxmpp/client/ui/activities/AppActivity;Landroid/os/Messenger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$4(Lxmpp/client/ui/activities/AppActivity;)Landroid/os/Messenger;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$5(Lxmpp/client/ui/activities/AppActivity;)Landroid/os/Messenger;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lxmpp/client/ui/activities/AppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    invoke-direct {p0}, Lxmpp/client/ui/activities/AppActivity;->doSend()V

    return-void
.end method

.method private doSend()V
    .locals 5

    .prologue
    .line 259
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mSendText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 260
    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 261
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "session"

    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 264
    const-string v3, "text"

    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mSendText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 267
    :try_start_0
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mSendText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void

    .line 268
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v2       #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 269
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v4, "doSend"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private goAddConference()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->showDialog(I)V

    .line 296
    return-void
.end method

.method private goAddUser()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->showDialog(I)V

    .line 300
    return-void
.end method

.method private goChat(Ljava/lang/String;)V
    .locals 3
    .parameter "userLogin"

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lxmpp/client/ui/activities/AppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v0, i:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imto://jabber/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->handleIntent(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method private goConference(Ljava/lang/String;)V
    .locals 3
    .parameter "muc"

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lxmpp/client/ui/activities/AppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, i:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imto://jabbermuc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->handleIntent(Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method private goLogin()V
    .locals 2

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lxmpp/client/ui/account/AccountLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->startActivity(Landroid/content/Intent;)V

    .line 316
    return-void
.end method

.method private goStatusChange()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->showDialog(I)V

    .line 320
    return-void
.end method

.method private updateStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 684
    new-instance v0, Lxmpp/client/service/user/UserState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lxmpp/client/service/user/UserState;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->updateStatus(Lxmpp/client/service/user/UserState;)V

    .line 685
    return-void
.end method

.method private updateStatus(Lxmpp/client/service/user/UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    .line 688
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v3}, Lxmpp/client/service/user/contact/Contact;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxmpp/client/service/user/User;

    invoke-virtual {v3, p1}, Lxmpp/client/service/user/User;->setUserState(Lxmpp/client/service/user/UserState;)V

    .line 689
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    invoke-virtual {v3}, Lxmpp/client/ui/adapter/RosterAdapter;->notifyDataSetChanged()V

    .line 690
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 691
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "state"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 692
    const/4 v3, 0x0

    const/16 v4, 0x15

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 693
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 694
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 696
    :try_start_0
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v1

    .line 698
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v4, "updateStatus"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private userAdd(Ljava/lang/String;)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 703
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 704
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "uid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 706
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 707
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 709
    :try_start_0
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v4, "updateStatus"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public afterInit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 189
    new-instance v3, Lxmpp/client/ui/adapter/GroupAdapter;

    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-direct {v3, p0, v4}, Lxmpp/client/ui/adapter/GroupAdapter;-><init>(Landroid/content/Context;Lxmpp/client/ui/provider/ContactProvider;)V

    iput-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mGroupAdapter:Lxmpp/client/ui/adapter/GroupAdapter;

    .line 190
    iget v3, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentView:I

    if-nez v3, :cond_1

    .line 191
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 192
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 193
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 194
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mGroupAdapter:Lxmpp/client/ui/adapter/GroupAdapter;

    .line 195
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 194
    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 196
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    iget v4, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentNavigation:I

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 197
    new-instance v3, Lxmpp/client/ui/adapter/RosterAdapter;

    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 198
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-direct {v3, v4, v5}, Lxmpp/client/ui/adapter/RosterAdapter;-><init>(Landroid/content/Context;Lxmpp/client/ui/provider/ContactProvider;)V

    .line 197
    iput-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    .line 199
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    invoke-virtual {v3}, Lxmpp/client/ui/adapter/RosterAdapter;->notifyDataSetChanged()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget v3, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentView:I

    if-ne v3, v5, :cond_0

    .line 202
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mUID:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 204
    const/16 v3, 0x1e

    .line 203
    invoke-static {v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 205
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "uid"

    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mUID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 210
    :try_start_0
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_1
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mUID:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lxmpp/client/ui/activities/AppActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleIntent"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 215
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mMUC:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 217
    const/16 v3, 0x21

    .line 216
    invoke-static {v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 218
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v3, "muc"

    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mMUC:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 223
    :try_start_1
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :goto_2
    iget-object v3, p0, Lxmpp/client/ui/activities/AppActivity;->mMUC:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lxmpp/client/ui/activities/AppActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :catch_1
    move-exception v1

    .line 225
    .restart local v1       #e:Landroid/os/RemoteException;
    sget-object v3, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleIntent"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method checkState()V
    .locals 4

    .prologue
    .line 167
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 168
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 169
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 171
    :try_start_0
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lxmpp/client/ui/activities/AppActivity;->doCheck:Z

    .line 179
    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 172
    .restart local v1       #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v3, "checkState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lxmpp/client/ui/activities/AppActivity;->doCheck:Z

    goto :goto_1
.end method

.method public contactProviderChanged(Lxmpp/client/ui/provider/ContactProvider;)V
    .locals 1
    .parameter "contactProvider"

    .prologue
    .line 722
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    invoke-virtual {v0}, Lxmpp/client/ui/adapter/RosterAdapter;->notifyDataSetChanged()V

    .line 725
    :cond_0
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mGroupAdapter:Lxmpp/client/ui/adapter/GroupAdapter;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mGroupAdapter:Lxmpp/client/ui/adapter/GroupAdapter;

    invoke-virtual {v0}, Lxmpp/client/ui/adapter/GroupAdapter;->notifyDataSetChanged()V

    .line 728
    :cond_1
    return-void
.end method

.method public contactProviderReady(Lxmpp/client/ui/provider/ContactProvider;)V
    .locals 0
    .parameter "contactProvider"

    .prologue
    .line 732
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->afterInit()V

    .line 733
    return-void
.end method

.method doBindService()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lxmpp/client/service/Service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lxmpp/client/service/Service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 184
    const/16 v2, 0x8

    .line 183
    invoke-virtual {p0, v0, v1, v2}, Lxmpp/client/ui/activities/AppActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxmpp/client/ui/activities/AppActivity;->mIsBound:Z

    .line 186
    return-void
.end method

.method public doLogin()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 233
    const/4 v8, -0x4

    invoke-direct {p0, v8}, Lxmpp/client/ui/activities/AppActivity;->updateStatus(I)V

    .line 234
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 236
    .local v2, am:Landroid/accounts/AccountManager;
    const v8, 0x7f060006

    invoke-virtual {p0, v8}, Lxmpp/client/ui/activities/AppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 237
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v8, v1

    if-lez v8, :cond_0

    .line 238
    aget-object v0, v1, v9

    .line 239
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 240
    .local v5, login:Ljava/lang/String;
    iget-object v8, p0, Lxmpp/client/ui/activities/AppActivity;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v8}, Lxmpp/client/service/user/contact/Contact;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v8

    invoke-virtual {v8, v9}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lxmpp/client/service/user/User;

    invoke-virtual {v8, v5}, Lxmpp/client/service/user/User;->setUserLogin(Ljava/lang/String;)V

    .line 241
    iget-object v8, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    invoke-virtual {v8}, Lxmpp/client/ui/adapter/RosterAdapter;->notifyDataSetChanged()V

    .line 242
    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, pass:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 244
    .local v6, msg:Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v3, b:Landroid/os/Bundle;
    const-string v8, "AccountInfo"

    new-instance v9, Lxmpp/client/service/account/AccountInfo;

    invoke-direct {v9, v5, v7}, Lxmpp/client/service/account/AccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 246
    invoke-virtual {v6, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 247
    iget-object v8, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v8, v6, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 249
    :try_start_0
    iget-object v8, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v8, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #b:Landroid/os/Bundle;
    .end local v5           #login:Ljava/lang/String;
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #pass:Ljava/lang/String;
    :goto_0
    return-void

    .line 250
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v3       #b:Landroid/os/Bundle;
    .restart local v5       #login:Ljava/lang/String;
    .restart local v6       #msg:Landroid/os/Message;
    .restart local v7       #pass:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 251
    .local v4, e:Landroid/os/RemoteException;
    sget-object v8, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v9, "doLogin"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 254
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #b:Landroid/os/Bundle;
    .end local v4           #e:Landroid/os/RemoteException;
    .end local v5           #login:Ljava/lang/String;
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #pass:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lxmpp/client/ui/activities/AppActivity;->goLogin()V

    goto :goto_0
.end method

.method doUnbindService()V
    .locals 4

    .prologue
    .line 276
    iget-boolean v2, p0, Lxmpp/client/ui/activities/AppActivity;->mIsBound:Z

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 279
    const/4 v2, 0x0

    .line 280
    const/4 v3, 0x2

    .line 279
    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 281
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 282
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lxmpp/client/ui/activities/AppActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 290
    const/4 v2, 0x0

    iput-boolean v2, p0, Lxmpp/client/ui/activities/AppActivity;->mIsBound:Z

    .line 292
    :cond_1
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v3, "doUnbindService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 323
    iput-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mMUC:Ljava/lang/String;

    .line 324
    iput-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mUID:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 326
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 327
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "imto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 328
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jabber"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 329
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mUID:Ljava/lang/String;

    .line 335
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mUID:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mMUC:Ljava/lang/String;

    if-eqz v4, :cond_6

    :cond_1
    iget v4, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentView:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    .line 336
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->openChat()V

    .line 341
    :cond_2
    :goto_1
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mUID:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 342
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    if-eqz v4, :cond_3

    .line 344
    const/16 v4, 0x1e

    .line 343
    invoke-static {v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 345
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "uid"

    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mUID:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 350
    :try_start_0
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    :goto_2
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mUID:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lxmpp/client/ui/activities/AppActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 372
    :cond_4
    :goto_3
    return-void

    .line 330
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "imto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jabbermuc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mMUC:Ljava/lang/String;

    goto :goto_0

    .line 337
    .end local v3           #uri:Landroid/net/Uri;
    :cond_6
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mUID:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mMUC:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 338
    iget v4, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentView:I

    if-eqz v4, :cond_2

    .line 339
    invoke-virtual {p0, v6}, Lxmpp/client/ui/activities/AppActivity;->openRoster(Landroid/os/Bundle;)V

    goto :goto_1

    .line 351
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v2       #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 352
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v5, "handleIntent"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 356
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #msg:Landroid/os/Message;
    :cond_7
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mMUC:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 357
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    if-eqz v4, :cond_8

    .line 359
    const/16 v4, 0x21

    .line 358
    invoke-static {v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 360
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v4, "muc"

    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mMUC:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 365
    :try_start_1
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_8
    :goto_4
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mMUC:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lxmpp/client/ui/activities/AppActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 366
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v2       #msg:Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 367
    .restart local v1       #e:Landroid/os/RemoteException;
    sget-object v4, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v5, "handleIntent"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 377
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 378
    .local v0, b:Landroid/os/Bundle;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 477
    .end local v0           #b:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 380
    .restart local v0       #b:Landroid/os/Bundle;
    :sswitch_0
    const-class v5, Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 381
    const-string v5, "session"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lxmpp/client/service/chat/ChatSession;

    iput-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    .line 382
    const-class v5, Lxmpp/client/service/user/User;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 383
    const-string v5, "user"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lxmpp/client/service/user/User;

    iput-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mUser:Lxmpp/client/service/user/User;

    .line 384
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mUser:Lxmpp/client/service/user/User;

    invoke-virtual {v5}, Lxmpp/client/service/user/User;->supportsAudio()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 385
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mMenu:Landroid/view/Menu;

    const v6, 0x7f090026

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    :goto_1
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mUser:Lxmpp/client/service/user/User;

    invoke-virtual {v6}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    .line 391
    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mUser:Lxmpp/client/service/user/User;

    invoke-virtual {v6}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v6

    invoke-virtual {v6, p0}, Lxmpp/client/service/user/UserState;->getStatusText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 392
    new-instance v5, Lxmpp/client/ui/provider/ChatProvider;

    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    iget-object v7, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    invoke-direct {v5, v6, v7}, Lxmpp/client/ui/provider/ChatProvider;-><init>(Lxmpp/client/service/user/contact/Contact;Lxmpp/client/service/chat/ChatSession;)V

    iput-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    .line 393
    new-instance v5, Lxmpp/client/ui/adapter/ChatAdapter;

    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    .line 394
    iget-object v7, p0, Lxmpp/client/ui/activities/AppActivity;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-direct {v5, p0, v6, v7}, Lxmpp/client/ui/adapter/ChatAdapter;-><init>(Landroid/content/Context;Lxmpp/client/ui/provider/ChatProvider;Lxmpp/client/ui/provider/ContactProvider;)V

    .line 393
    iput-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mChatAdapter:Lxmpp/client/ui/adapter/ChatAdapter;

    .line 395
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mMessageHolder:Landroid/widget/ListView;

    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mChatAdapter:Lxmpp/client/ui/adapter/ChatAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 396
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mUserHolder:Lcom/devsmart/android/ui/HorizontalListView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/devsmart/android/ui/HorizontalListView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    .end local v0           #b:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 473
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v6, "IncomingHandler.handleMessage"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->doUnbindService()V

    goto/16 :goto_0

    .line 387
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mMenu:Landroid/view/Menu;

    const v6, 0x7f090026

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 399
    :sswitch_1
    const-class v5, Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 400
    const-string v5, "session"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lxmpp/client/service/chat/ChatSession;

    iput-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    .line 401
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mMenu:Landroid/view/Menu;

    const v6, 0x7f090026

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v6}, Lxmpp/client/service/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v6, "subject"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 404
    new-instance v5, Lxmpp/client/ui/provider/ChatProvider;

    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    iget-object v7, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    invoke-direct {v5, v6, v7}, Lxmpp/client/ui/provider/ChatProvider;-><init>(Lxmpp/client/service/user/contact/Contact;Lxmpp/client/service/chat/ChatSession;)V

    iput-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    .line 405
    new-instance v5, Lxmpp/client/ui/adapter/ChatAdapter;

    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    .line 406
    iget-object v7, p0, Lxmpp/client/ui/activities/AppActivity;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-direct {v5, p0, v6, v7}, Lxmpp/client/ui/adapter/ChatAdapter;-><init>(Landroid/content/Context;Lxmpp/client/ui/provider/ChatProvider;Lxmpp/client/ui/provider/ContactProvider;)V

    .line 405
    iput-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mChatAdapter:Lxmpp/client/ui/adapter/ChatAdapter;

    .line 407
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mMessageHolder:Landroid/widget/ListView;

    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mChatAdapter:Lxmpp/client/ui/adapter/ChatAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 408
    new-instance v5, Lxmpp/client/ui/adapter/ChatUserListAdapter;

    .line 409
    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    iget-object v7, p0, Lxmpp/client/ui/activities/AppActivity;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-direct {v5, p0, v6, v7}, Lxmpp/client/ui/adapter/ChatUserListAdapter;-><init>(Landroid/content/Context;Lxmpp/client/ui/provider/ContactProvider;Lxmpp/client/ui/provider/ChatProvider;)V

    .line 408
    iput-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mChatUserListAdapter:Lxmpp/client/ui/adapter/ChatUserListAdapter;

    .line 410
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mUserHolder:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mChatUserListAdapter:Lxmpp/client/ui/adapter/ChatUserListAdapter;

    invoke-virtual {v5, v6}, Lcom/devsmart/android/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 412
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mUserHolder:Lcom/devsmart/android/ui/HorizontalListView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/devsmart/android/ui/HorizontalListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 415
    :sswitch_2
    const-class v5, Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 416
    const-string v5, "session"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lxmpp/client/service/chat/ChatSession;

    .line 417
    .local v4, session1:Lxmpp/client/service/chat/ChatSession;
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v4, v5}, Lxmpp/client/service/chat/ChatSession;->equals(Lxmpp/client/service/chat/ChatSession;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 418
    iput-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    .line 419
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v5, v6}, Lxmpp/client/ui/provider/ChatProvider;->setSession(Lxmpp/client/service/chat/ChatSession;)V

    .line 421
    :cond_2
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    instance-of v5, v5, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    if-eqz v5, :cond_0

    .line 422
    iget-object v6, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    check-cast v5, Lxmpp/client/service/chat/multi/MultiUserChatSession;

    .line 423
    invoke-virtual {v5}, Lxmpp/client/service/chat/multi/MultiUserChatSession;->getSubject()Ljava/lang/String;

    move-result-object v5

    .line 422
    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 429
    .end local v4           #session1:Lxmpp/client/service/chat/ChatSession;
    :sswitch_3
    const-class v5, Lxmpp/client/service/chat/ChatMessage;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 430
    const-string v5, "message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lxmpp/client/service/chat/ChatMessage;

    .line 431
    .local v2, message:Lxmpp/client/service/chat/ChatMessage;
    const-class v5, Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 432
    const-string v5, "session"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lxmpp/client/service/chat/ChatSession;

    .line 433
    .local v3, session:Lxmpp/client/service/chat/ChatSession;
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v3, v5}, Lxmpp/client/service/chat/ChatSession;->equals(Lxmpp/client/service/chat/ChatSession;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 434
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v5, v2}, Lxmpp/client/ui/provider/ChatProvider;->addMessage(Lxmpp/client/service/chat/ChatMessage;)V

    .line 439
    :goto_2
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mChatAdapter:Lxmpp/client/ui/adapter/ChatAdapter;

    if-eqz v5, :cond_0

    .line 440
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mChatAdapter:Lxmpp/client/ui/adapter/ChatAdapter;

    invoke-virtual {v5}, Lxmpp/client/ui/adapter/ChatAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 437
    :cond_3
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mChatProvider:Lxmpp/client/ui/provider/ChatProvider;

    invoke-virtual {v5, v2}, Lxmpp/client/ui/provider/ChatProvider;->addMessage(Lxmpp/client/service/chat/ChatMessage;)V

    goto :goto_2

    .line 444
    .end local v2           #message:Lxmpp/client/service/chat/ChatMessage;
    .end local v3           #session:Lxmpp/client/service/chat/ChatSession;
    :sswitch_4
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->doUnbindService()V

    .line 445
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->finish()V

    goto/16 :goto_0

    .line 448
    :sswitch_5
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->doLogin()V

    goto/16 :goto_0

    .line 451
    :sswitch_6
    const-class v5, Lxmpp/client/service/user/User;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 452
    const-string v5, "contact"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lxmpp/client/service/user/contact/Contact;

    iput-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    .line 453
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v5}, Lxmpp/client/service/user/contact/Contact;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v5

    invoke-virtual {v5}, Lxmpp/client/service/user/UserState;->isTemporaryStatus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 454
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lxmpp/client/ui/activities/AppActivity;->updateStatus(I)V

    goto/16 :goto_0

    .line 460
    :sswitch_7
    invoke-direct {p0}, Lxmpp/client/ui/activities/AppActivity;->goLogin()V

    .line 462
    :sswitch_8
    const/4 v5, -0x3

    invoke-direct {p0, v5}, Lxmpp/client/ui/activities/AppActivity;->updateStatus(I)V

    goto/16 :goto_0

    .line 465
    :sswitch_9
    const/4 v5, -0x2

    invoke-direct {p0, v5}, Lxmpp/client/ui/activities/AppActivity;->updateStatus(I)V

    goto/16 :goto_0

    .line 468
    :sswitch_a
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lxmpp/client/ui/activities/AppActivity;->updateStatus(I)V

    .line 469
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->checkState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 378
    :sswitch_data_0
    .sparse-switch
        -0xe -> :sswitch_4
        -0x8 -> :sswitch_5
        -0x6 -> :sswitch_7
        -0x5 -> :sswitch_7
        -0x4 -> :sswitch_7
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x8 -> :sswitch_6
        0xf -> :sswitch_2
        0x1e -> :sswitch_0
        0x21 -> :sswitch_1
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
    .end sparse-switch
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 481
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 482
    new-instance v0, Lxmpp/client/service/handlers/SimpleMessageHandler;

    invoke-direct {v0, p0}, Lxmpp/client/service/handlers/SimpleMessageHandler;-><init>(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;)V

    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mMessageHandler:Lxmpp/client/service/handlers/SimpleMessageHandler;

    .line 483
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mMessageHandler:Lxmpp/client/service/handlers/SimpleMessageHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    .line 484
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->doBindService()V

    .line 485
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 490
    packed-switch p1, :pswitch_data_0

    .line 508
    const/4 v0, 0x0

    .line 510
    .local v0, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 492
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Lxmpp/client/ui/dialogs/StatusSelectorDialog;

    .line 493
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v2}, Lxmpp/client/service/user/contact/Contact;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lxmpp/client/ui/dialogs/StatusSelectorDialog;-><init>(Landroid/content/Context;Lxmpp/client/service/user/UserState;)V

    .line 492
    iput-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mStatusSelectorDialog:Lxmpp/client/ui/dialogs/StatusSelectorDialog;

    .line 494
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mStatusSelectorDialog:Lxmpp/client/ui/dialogs/StatusSelectorDialog;

    invoke-virtual {v1, p0}, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->setResultListener(Lxmpp/client/ui/dialogs/ResultListener;)V

    .line 495
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mStatusSelectorDialog:Lxmpp/client/ui/dialogs/StatusSelectorDialog;

    invoke-virtual {v1}, Lxmpp/client/ui/dialogs/StatusSelectorDialog;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 496
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 498
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_1
    new-instance v1, Lxmpp/client/ui/dialogs/AddUserDialog;

    invoke-direct {v1, p0}, Lxmpp/client/ui/dialogs/AddUserDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mAddUserDialog:Lxmpp/client/ui/dialogs/AddUserDialog;

    .line 499
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mAddUserDialog:Lxmpp/client/ui/dialogs/AddUserDialog;

    invoke-virtual {v1, p0}, Lxmpp/client/ui/dialogs/AddUserDialog;->setResultListener(Lxmpp/client/ui/dialogs/ResultListener;)V

    .line 500
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mAddUserDialog:Lxmpp/client/ui/dialogs/AddUserDialog;

    invoke-virtual {v1}, Lxmpp/client/ui/dialogs/AddUserDialog;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 501
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 503
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_2
    new-instance v1, Lxmpp/client/ui/dialogs/AddConferenceDialog;

    invoke-direct {v1, p0}, Lxmpp/client/ui/dialogs/AddConferenceDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mAddConferenceDialog:Lxmpp/client/ui/dialogs/AddConferenceDialog;

    .line 504
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mAddConferenceDialog:Lxmpp/client/ui/dialogs/AddConferenceDialog;

    invoke-virtual {v1, p0}, Lxmpp/client/ui/dialogs/AddConferenceDialog;->setResultListener(Lxmpp/client/ui/dialogs/ResultListener;)V

    .line 505
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mAddConferenceDialog:Lxmpp/client/ui/dialogs/AddConferenceDialog;

    invoke-virtual {v1}, Lxmpp/client/ui/dialogs/AddConferenceDialog;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 506
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 516
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 517
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 518
    .local v0, inflater:Landroid/view/MenuInflater;
    iget v1, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentView:I

    packed-switch v1, :pswitch_data_0

    .line 524
    :goto_0
    iput-object p1, p0, Lxmpp/client/ui/activities/AppActivity;->mMenu:Landroid/view/Menu;

    .line 525
    const/4 v1, 0x1

    return v1

    .line 520
    :pswitch_0
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 522
    :pswitch_1
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 531
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->doUnbindService()V

    .line 532
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 536
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 551
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 538
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lxmpp/client/service/Service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->stopService(Landroid/content/Intent;)Z

    .line 539
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->finish()V

    goto :goto_0

    .line 542
    :pswitch_1
    invoke-direct {p0}, Lxmpp/client/ui/activities/AppActivity;->goAddUser()V

    goto :goto_0

    .line 545
    :pswitch_2
    invoke-direct {p0}, Lxmpp/client/ui/activities/AppActivity;->goAddConference()V

    goto :goto_0

    .line 548
    :pswitch_3
    invoke-direct {p0}, Lxmpp/client/ui/activities/AppActivity;->goStatusChange()V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x7f090028
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lxmpp/client/ui/activities/AppActivity;->setIntent(Landroid/content/Intent;)V

    .line 558
    invoke-virtual {p0, p1}, Lxmpp/client/ui/activities/AppActivity;->handleIntent(Landroid/content/Intent;)V

    .line 559
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 563
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 581
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 565
    :pswitch_0
    iget v4, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentView:I

    if-ne v4, v3, :cond_0

    .line 567
    const/16 v4, 0x20

    .line 566
    invoke-static {v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 568
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 569
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "session"

    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mSession:Lxmpp/client/service/chat/ChatSession;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 570
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 571
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 573
    :try_start_0
    iget-object v4, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    invoke-virtual {p0, v6}, Lxmpp/client/ui/activities/AppActivity;->openRoster(Landroid/os/Bundle;)V

    goto :goto_0

    .line 574
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v2       #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 575
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v5, "disableChat"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResultAvailable(Lxmpp/client/ui/dialogs/ResultProducer;)V
    .locals 1
    .parameter "resultProducer"

    .prologue
    .line 587
    invoke-interface {p1}, Lxmpp/client/ui/dialogs/ResultProducer;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    instance-of v0, p1, Lxmpp/client/ui/dialogs/StatusSelectorDialog;

    if-eqz v0, :cond_2

    .line 591
    invoke-interface {p1}, Lxmpp/client/ui/dialogs/ResultProducer;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/UserState;

    invoke-direct {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->updateStatus(Lxmpp/client/service/user/UserState;)V

    goto :goto_0

    .line 592
    :cond_2
    instance-of v0, p1, Lxmpp/client/ui/dialogs/AddUserDialog;

    if-eqz v0, :cond_3

    .line 593
    invoke-interface {p1}, Lxmpp/client/ui/dialogs/ResultProducer;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->userAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_3
    instance-of v0, p1, Lxmpp/client/ui/dialogs/AddConferenceDialog;

    if-eqz v0, :cond_0

    .line 595
    invoke-interface {p1}, Lxmpp/client/ui/dialogs/ResultProducer;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->goConference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 601
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 602
    const-string v0, "tab"

    iget v1, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentNavigation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    return-void
.end method

.method public openChat()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 606
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lxmpp/client/ui/activities/AppActivity;->setContentView(I)V

    .line 607
    sget-object v1, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v2, "openChat"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iput v3, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentView:I

    .line 609
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v1}, Lxmpp/client/ui/activities/AppActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 612
    :cond_0
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lxmpp/client/ui/activities/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 613
    .local v0, btn_send:Landroid/widget/ImageButton;
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->sendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    const v1, 0x7f090007

    invoke-virtual {p0, v1}, Lxmpp/client/ui/activities/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mMessageHolder:Landroid/widget/ListView;

    .line 615
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lxmpp/client/ui/activities/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/devsmart/android/ui/HorizontalListView;

    iput-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mUserHolder:Lcom/devsmart/android/ui/HorizontalListView;

    .line 616
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lxmpp/client/ui/activities/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mSendText:Landroid/widget/EditText;

    .line 617
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mSendText:Landroid/widget/EditText;

    new-instance v2, Lxmpp/client/ui/activities/AppActivity$5;

    invoke-direct {v2, p0}, Lxmpp/client/ui/activities/AppActivity$5;-><init>(Lxmpp/client/ui/activities/AppActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 632
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    .line 633
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f060014

    invoke-virtual {p0, v2}, Lxmpp/client/ui/activities/AppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 635
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 636
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 637
    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 638
    return-void
.end method

.method public openRoster(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f060014

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 641
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->setContentView(I)V

    .line 642
    sget-object v0, Lxmpp/client/ui/activities/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "openRoster"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iput v7, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentView:I

    .line 644
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 647
    :cond_0
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lxmpp/client/ui/activities/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mListView:Landroid/widget/ListView;

    .line 648
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 649
    invoke-virtual {p0}, Lxmpp/client/ui/activities/AppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    .line 650
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0, v2}, Lxmpp/client/ui/activities/AppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 653
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    if-nez v0, :cond_1

    .line 654
    new-instance v6, Lxmpp/client/service/user/User;

    invoke-direct {v6}, Lxmpp/client/service/user/User;-><init>()V

    .line 655
    .local v6, u:Lxmpp/client/service/user/User;
    invoke-virtual {p0, v2}, Lxmpp/client/ui/activities/AppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lxmpp/client/service/user/User;->setUserLogin(Ljava/lang/String;)V

    .line 656
    new-instance v0, Lxmpp/client/service/user/UserState;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxmpp/client/service/user/UserState;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Lxmpp/client/service/user/User;->setUserState(Lxmpp/client/service/user/UserState;)V

    .line 657
    new-instance v0, Lxmpp/client/service/user/contact/Contact;

    invoke-direct {v0, v6}, Lxmpp/client/service/user/contact/Contact;-><init>(Lxmpp/client/service/user/User;)V

    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mMeContact:Lxmpp/client/service/user/contact/Contact;

    .line 659
    .end local v6           #u:Lxmpp/client/service/user/User;
    :cond_1
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    if-nez v0, :cond_2

    .line 660
    new-instance v0, Lxmpp/client/ui/provider/ContactProvider;

    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mMessenger:Landroid/os/Messenger;

    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mService:Landroid/os/Messenger;

    .line 661
    iget-object v5, p0, Lxmpp/client/ui/activities/AppActivity;->mMessageHandler:Lxmpp/client/service/handlers/SimpleMessageHandler;

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lxmpp/client/ui/provider/ContactProvider;-><init>(Landroid/os/Messenger;Landroid/os/Messenger;Landroid/content/Context;Lxmpp/client/ui/provider/ContactProviderListener;Lxmpp/client/service/handlers/SimpleMessageHandler;)V

    .line 660
    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    .line 663
    :cond_2
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    if-nez v0, :cond_3

    .line 664
    new-instance v0, Lxmpp/client/ui/adapter/RosterAdapter;

    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 665
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mContactProvider:Lxmpp/client/ui/provider/ContactProvider;

    invoke-direct {v0, v1, v2}, Lxmpp/client/ui/adapter/RosterAdapter;-><init>(Landroid/content/Context;Lxmpp/client/ui/provider/ContactProvider;)V

    .line 664
    iput-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    .line 667
    :cond_3
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mRosterAdapter:Lxmpp/client/ui/adapter/RosterAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 669
    if-eqz p1, :cond_4

    const-string v0, "tab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    const-string v0, "tab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentNavigation:I

    .line 673
    :cond_4
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mGroupAdapter:Lxmpp/client/ui/adapter/GroupAdapter;

    if-eqz v0, :cond_5

    .line 674
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 675
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 676
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 677
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lxmpp/client/ui/activities/AppActivity;->mGroupAdapter:Lxmpp/client/ui/adapter/GroupAdapter;

    .line 678
    iget-object v2, p0, Lxmpp/client/ui/activities/AppActivity;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 677
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 679
    iget-object v0, p0, Lxmpp/client/ui/activities/AppActivity;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lxmpp/client/ui/activities/AppActivity;->mCurrentNavigation:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 681
    :cond_5
    return-void
.end method
