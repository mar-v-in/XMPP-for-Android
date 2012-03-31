.class public Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "ContactsSyncAdapterService.java"

# interfaces
.implements Lxmpp/client/service/handlers/SimpleMessageHandlerClient;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSyncAdapter:Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field mContactMe:Lxmpp/client/service/user/contact/Contact;

.field mIsBound:Z

.field mMessenger:Landroid/os/Messenger;

.field mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    sput-object v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mSyncAdapter:Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lxmpp/client/service/handlers/SimpleMessageHandler;

    invoke-direct {v1, p0}, Lxmpp/client/service/handlers/SimpleMessageHandler;-><init>(Lxmpp/client/service/handlers/SimpleMessageHandlerClient;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mMessenger:Landroid/os/Messenger;

    .line 51
    new-instance v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService$1;

    invoke-direct {v0, p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService$1;-><init>(Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;)V

    iput-object v0, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mConnection:Landroid/content/ServiceConnection;

    .line 71
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private combineDatabaseContact(Lxmpp/client/service/user/contact/Contact;)Ljava/lang/String;
    .locals 10
    .parameter "contact"

    .prologue
    .line 86
    invoke-virtual {p1}, Lxmpp/client/service/user/contact/Contact;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lxmpp/client/service/user/UserList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lxmpp/client/service/user/User;

    .line 87
    .local v5, user0:Lxmpp/client/service/user/User;
    invoke-virtual {v5}, Lxmpp/client/service/user/User;->getUserContact()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 88
    const/4 v6, 0x0

    .line 122
    :goto_0
    return-object v6

    .line 90
    :cond_0
    invoke-virtual {v5}, Lxmpp/client/service/user/User;->getUserContact()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 91
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 92
    .local v2, id0:Ljava/lang/Long;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Lxmpp/client/service/user/contact/Contact;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v6

    invoke-virtual {v6}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.contacts"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_2
    invoke-virtual {v5}, Lxmpp/client/service/user/User;->getUserContact()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxmpp/client/service/user/User;

    .line 94
    .local v4, user:Lxmpp/client/service/user/User;
    invoke-virtual {v4}, Lxmpp/client/service/user/User;->getUserContact()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 95
    invoke-virtual {v4}, Lxmpp/client/service/user/User;->getUserContact()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lxmpp/client/service/user/User;->getUserContact()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 98
    invoke-virtual {v4}, Lxmpp/client/service/user/User;->getUserContact()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 99
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 102
    .local v1, id:Ljava/lang/Long;
    sget-object v7, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    .line 101
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 104
    const-string v8, "mimetype"

    .line 105
    const-string v9, "vnd.android.cursor.item/aggregation_exception"

    .line 103
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 107
    const-string v8, "raw_contact_id1"

    .line 106
    invoke-virtual {v7, v8, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 110
    const-string v8, "raw_contact_id2"

    .line 109
    invoke-virtual {v7, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 113
    const-string v8, "type"

    .line 114
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 112
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 115
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    .line 100
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    .end local v1           #id:Ljava/lang/Long;
    .end local v4           #user:Lxmpp/client/service/user/User;
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->TAG:Ljava/lang/String;

    const-string v7, "combineDatabaseContact"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private declared-synchronized doNotify()V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized doWait()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSyncAdapter()Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mSyncAdapter:Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;

    invoke-direct {v0, p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;-><init>(Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;)V

    sput-object v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mSyncAdapter:Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;

    .line 184
    :cond_0
    sget-object v0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mSyncAdapter:Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;

    return-object v0
.end method

.method private insertDatabaseUser(Lxmpp/client/service/user/User;)V
    .locals 6
    .parameter "user"

    .prologue
    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 226
    .local v2, rawContactInsertIndex:I
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 227
    const-string v4, "account_type"

    .line 228
    const v5, 0x7f060006

    invoke-virtual {p0, v5}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 227
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 229
    const-string v4, "account_name"

    iget-object v5, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mContactMe:Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v5}, Lxmpp/client/service/user/contact/Contact;->getUserLogin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 230
    const-string v4, "sourceid"

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 225
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 234
    const-string v4, "raw_contact_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 237
    const-string v4, "mimetype"

    .line 238
    const-string v5, "vnd.android.cursor.item/name"

    .line 236
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 240
    const-string v4, "data1"

    .line 241
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 232
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 245
    const-string v4, "raw_contact_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 247
    const-string v4, "mimetype"

    .line 248
    const-string v5, "vnd.android.cursor.item/im"

    .line 247
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 249
    const-string v4, "data5"

    .line 250
    invoke-virtual {p0, p1}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getProtocol(Lxmpp/client/service/user/User;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 249
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 251
    const-string v4, "data1"

    .line 252
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getNiceUserLogin()Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 243
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 256
    const-string v4, "raw_contact_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 258
    const-string v4, "mimetype"

    const v5, 0x7f060007

    invoke-virtual {p0, v5}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 259
    const-string v4, "data1"

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 260
    const-string v4, "data2"

    const-string v5, "d2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 261
    const-string v4, "data3"

    const-string v5, "d3"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 254
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->TAG:Ljava/lang/String;

    const-string v4, "insertUser"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private prepareDatabaseUpdate(Lxmpp/client/service/user/User;J)V
    .locals 10
    .parameter "user"
    .parameter "rawContactID"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 323
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 322
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 325
    .local v9, rawContactUri:Landroid/net/Uri;
    const-string v0, "entity"

    .line 324
    invoke-static {v9, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 326
    .local v1, entityUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data_id"

    aput-object v3, v2, v6

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "mimetype = \""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v5, 0x7f060007

    invoke-virtual {p0, v5}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 330
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 326
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 331
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    return-void

    .line 332
    :cond_1
    invoke-interface {v8, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object v2, p0

    move-wide v3, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->updateDatabaseUser(JJLxmpp/client/service/user/User;)V

    goto :goto_0
.end method

.method private updateDatabaseUser(JJLxmpp/client/service/user/User;)V
    .locals 5
    .parameter "rawContactID"
    .parameter "dataID"
    .parameter "user"

    .prologue
    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 357
    const-string v3, "presence_data_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 358
    const-string v3, "im_handle"

    .line 359
    invoke-virtual {p5}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 360
    const-string v3, "im_account"

    .line 361
    iget-object v4, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mContactMe:Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v4}, Lxmpp/client/service/user/contact/Contact;->getUserLogin()Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 362
    const-string v3, "protocol"

    .line 363
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 362
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 364
    const-string v3, "mode"

    .line 365
    invoke-virtual {p5}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v4

    invoke-virtual {v4}, Lxmpp/client/service/user/UserState;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 364
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 366
    const-string v3, "status"

    .line 367
    invoke-virtual {p5}, Lxmpp/client/service/user/User;->getUserState()Lxmpp/client/service/user/UserState;

    move-result-object v4

    invoke-virtual {v4, p0}, Lxmpp/client/service/user/UserState;->getStatusText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 366
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 368
    const-string v3, "status_res_package"

    .line 369
    const-string v4, "xmpp.client"

    .line 368
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 370
    const-string v3, "status_icon"

    .line 371
    const v4, 0x7f020019

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 370
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 372
    const-string v3, "status_label"

    .line 373
    const v4, 0x7f060008

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 372
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 373
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 355
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :try_start_0
    invoke-virtual {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->TAG:Ljava/lang/String;

    const-string v3, "updateDatabaseContact"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method checkState()V
    .locals 4

    .prologue
    .line 74
    iget-object v2, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mService:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 75
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 76
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 78
    :try_start_0
    iget-object v2, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v1       #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->TAG:Ljava/lang/String;

    const-string v3, "checkState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lxmpp/client/service/Service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    iget-object v1, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mConnection:Landroid/content/ServiceConnection;

    .line 126
    invoke-virtual {p0, v0, v1, v2}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 128
    iput-boolean v2, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mIsBound:Z

    .line 129
    return-void
.end method

.method public doSync(Lxmpp/client/service/user/contact/ContactList;)V
    .locals 7
    .parameter "p"

    .prologue
    .line 136
    invoke-virtual {p1}, Lxmpp/client/service/user/contact/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    return-void

    .line 136
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxmpp/client/service/user/contact/Contact;

    .line 137
    .local v0, contact:Lxmpp/client/service/user/contact/Contact;
    const/4 v2, 0x1

    .line 138
    .local v2, updateOnly:Z
    invoke-virtual {v0}, Lxmpp/client/service/user/contact/Contact;->getUsers()Lxmpp/client/service/user/UserList;

    move-result-object v5

    invoke-virtual {v5}, Lxmpp/client/service/user/UserList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 148
    :cond_2
    if-nez v2, :cond_0

    .line 149
    invoke-direct {p0, v0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->combineDatabaseContact(Lxmpp/client/service/user/contact/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lxmpp/client/service/user/contact/Contact;->setUserContact(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->updateContact(Lxmpp/client/service/user/contact/Contact;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxmpp/client/service/user/User;

    .line 139
    .local v3, user:Lxmpp/client/service/user/User;
    invoke-virtual {v3}, Lxmpp/client/service/user/User;->isInvisible()Z

    move-result v6

    if-nez v6, :cond_2

    .line 142
    invoke-virtual {p0, v3}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->manageDatabaseUser(Lxmpp/client/service/user/User;)Z

    move-result v1

    .line 143
    .local v1, insert:Z
    if-eqz v1, :cond_4

    .line 144
    const/4 v2, 0x0

    .line 146
    :cond_4
    invoke-virtual {p0, v3}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->updateUser(Lxmpp/client/service/user/User;)V

    goto :goto_1
.end method

.method doUnbindService()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mIsBound:Z

    .line 160
    :cond_0
    return-void
.end method

.method getProtocol(Lxmpp/client/service/user/User;)I
    .locals 1
    .parameter "user"

    .prologue
    .line 167
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->isTransported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getTransportType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :cond_0
    const/4 v0, 0x7

    :goto_0
    return v0

    .line 170
    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 172
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 191
    .local v0, b:Landroid/os/Bundle;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 220
    .end local v0           #b:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 193
    .restart local v0       #b:Landroid/os/Bundle;
    :sswitch_0
    const-class v4, Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 194
    const-string v4, "contact"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lxmpp/client/service/user/contact/Contact;

    iput-object v4, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mContactMe:Lxmpp/client/service/user/contact/Contact;

    .line 196
    const/4 v4, 0x0

    .line 197
    const/16 v5, 0xe

    .line 196
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 198
    .local v2, msg2:Landroid/os/Message;
    iget-object v4, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 199
    iget-object v4, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #msg2:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->TAG:Ljava/lang/String;

    const-string v5, "handleMessage"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/os/Bundle;
    :sswitch_1
    :try_start_1
    const-class v4, Lxmpp/client/service/user/contact/ContactList;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 203
    const-string v4, "contacts"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    const-string v4, "contacts"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 205
    .local v3, p:Landroid/os/Parcelable;
    instance-of v4, v3, Lxmpp/client/service/user/contact/ContactList;

    if-eqz v4, :cond_0

    .line 206
    check-cast v3, Lxmpp/client/service/user/contact/ContactList;

    .end local v3           #p:Landroid/os/Parcelable;
    invoke-virtual {p0, v3}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->doSync(Lxmpp/client/service/user/contact/ContactList;)V

    .line 209
    :cond_0
    invoke-direct {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->doNotify()V

    goto :goto_0

    .line 213
    :sswitch_2
    invoke-direct {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->doNotify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        -0xe -> :sswitch_2
        -0x8 -> :sswitch_2
        0x8 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method manageDatabaseUser(Lxmpp/client/service/user/User;)Z
    .locals 9
    .parameter "user"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 271
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 272
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 273
    const-string v2, "account_name"

    .line 274
    iget-object v4, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mContactMe:Lxmpp/client/service/user/contact/Contact;

    invoke-virtual {v4}, Lxmpp/client/service/user/contact/Contact;->getUserLogin()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 275
    const-string v4, "account_type"

    .line 276
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 277
    const-string v2, "sourceid"

    .line 278
    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 279
    .local v1, rawContactUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 281
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v4, "sourceid"

    aput-object v4, v2, v7

    const/4 v4, 0x2

    .line 282
    const-string v5, "contact_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 279
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 283
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-direct {p0, p1}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->insertDatabaseUser(Lxmpp/client/service/user/User;)V

    .line 298
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 299
    :goto_1
    return v0

    .line 287
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lxmpp/client/service/user/User;->getUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->prepareDatabaseUpdate(Lxmpp/client/service/user/User;J)V

    .line 291
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 290
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p1, v0}, Lxmpp/client/service/user/User;->setUserContact(Ljava/lang/String;)V

    .line 292
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 293
    goto :goto_1

    .line 286
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0, p1}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->insertDatabaseUser(Lxmpp/client/service/user/User;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, ret:Landroid/os/IBinder;
    invoke-direct {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->getSyncAdapter()Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 306
    return-object v0
.end method

.method performSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 3
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->doBindService()V

    .line 314
    :try_start_0
    invoke-direct {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->doWait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    invoke-virtual {p0}, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->doUnbindService()V

    .line 319
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->TAG:Ljava/lang/String;

    const-string v2, "performSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method updateContact(Lxmpp/client/service/user/contact/Contact;)V
    .locals 5
    .parameter "contact"

    .prologue
    .line 341
    const/4 v3, 0x0

    const/16 v4, 0x29

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 342
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "contact"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 344
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 345
    iget-object v3, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 347
    :try_start_0
    iget-object v3, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->TAG:Ljava/lang/String;

    const-string v4, "updateContact"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method updateUser(Lxmpp/client/service/user/User;)V
    .locals 5
    .parameter "user"

    .prologue
    .line 383
    const/4 v3, 0x0

    const/16 v4, 0x28

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 384
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "user"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 386
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 387
    iget-object v3, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 389
    :try_start_0
    iget-object v3, p0, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lxmpp/client/service/account/contactsync/ContactsSyncAdapterService;->TAG:Ljava/lang/String;

    const-string v4, "updateUser"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
