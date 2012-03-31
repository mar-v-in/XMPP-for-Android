.class public Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;
.super Ljava/lang/Object;
.source "BookmarkedURL.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bookmark/SharedBookmark;


# instance fields
.field private final URL:Ljava/lang/String;

.field private isRss:Z

.field private isShared:Z

.field private name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "URL"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->URL:Ljava/lang/String;

    .line 37
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "URL"
    .parameter "name"
    .parameter "isRss"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->URL:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->name:Ljava/lang/String;

    .line 42
    iput-boolean p3, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->isRss:Z

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 47
    instance-of v1, p1, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;

    if-nez v1, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 50
    check-cast v0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;

    .line 51
    .local v0, url:Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->getURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public isRss()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->isRss:Z

    return v0
.end method

.method public isShared()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->isShared:Z

    return v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->name:Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected setRss(Z)V
    .locals 0
    .parameter "isRss"

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->isRss:Z

    .line 105
    return-void
.end method

.method protected setShared(Z)V
    .locals 0
    .parameter "shared"

    .prologue
    .line 108
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->isShared:Z

    .line 109
    return-void
.end method
