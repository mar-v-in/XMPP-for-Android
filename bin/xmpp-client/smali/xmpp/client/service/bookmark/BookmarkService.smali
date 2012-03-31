.class public Lxmpp/client/service/bookmark/BookmarkService;
.super Ljava/lang/Object;
.source "BookmarkService.java"


# instance fields
.field private mBookmarkManager:Lorg/jivesoftware/smackx/bookmark/BookmarkManager;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    :try_start_0
    invoke-static {p1}, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->getBookmarkManager(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/bookmark/BookmarkManager;

    move-result-object v1

    iput-object v1, p0, Lxmpp/client/service/bookmark/BookmarkService;->mBookmarkManager:Lorg/jivesoftware/smackx/bookmark/BookmarkManager;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addConference(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .parameter "jid"
    .parameter "isAutoJoin"
    .parameter "nickname"
    .parameter "password"

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lxmpp/client/service/bookmark/BookmarkService;->mBookmarkManager:Lorg/jivesoftware/smackx/bookmark/BookmarkManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->addBookmarkedConference(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 30
    :catch_0
    move-exception v6

    .line 31
    .local v6, e:Lorg/jivesoftware/smack/XMPPException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getConferences()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    :try_start_0
    iget-object v1, p0, Lxmpp/client/service/bookmark/BookmarkService;->mBookmarkManager:Lorg/jivesoftware/smackx/bookmark/BookmarkManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->getBookmarkedConferences()Ljava/util/Collection;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
