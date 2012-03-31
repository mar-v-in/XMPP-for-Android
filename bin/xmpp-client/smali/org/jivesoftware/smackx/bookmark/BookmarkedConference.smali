.class public Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;
.super Ljava/lang/Object;
.source "BookmarkedConference.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bookmark/SharedBookmark;


# instance fields
.field private autoJoin:Z

.field private isShared:Z

.field private final jid:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->jid:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "jid"
    .parameter "autoJoin"
    .parameter "nickname"
    .parameter "password"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->jid:Ljava/lang/String;

    .line 46
    iput-boolean p3, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->autoJoin:Z

    .line 47
    iput-object p4, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->nickname:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->password:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 53
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;

    if-nez v1, :cond_1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 56
    check-cast v0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;

    .line 57
    .local v0, conference:Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->getJid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->jid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->password:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoJoin()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->autoJoin:Z

    return v0
.end method

.method public isShared()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->isShared:Z

    return v0
.end method

.method protected setAutoJoin(Z)V
    .locals 0
    .parameter "autoJoin"

    .prologue
    .line 115
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->autoJoin:Z

    .line 116
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 119
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->name:Ljava/lang/String;

    .line 120
    return-void
.end method

.method protected setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 123
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->nickname:Ljava/lang/String;

    .line 124
    return-void
.end method

.method protected setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 127
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->password:Ljava/lang/String;

    .line 128
    return-void
.end method

.method protected setShared(Z)V
    .locals 0
    .parameter "isShared"

    .prologue
    .line 131
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->isShared:Z

    .line 132
    return-void
.end method
