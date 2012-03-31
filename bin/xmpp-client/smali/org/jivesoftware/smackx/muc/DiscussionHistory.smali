.class public Lorg/jivesoftware/smackx/muc/DiscussionHistory;
.super Ljava/lang/Object;
.source "DiscussionHistory.java"


# instance fields
.field private maxChars:I

.field private maxStanzas:I

.field private seconds:I

.field private since:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxChars:I

    .line 54
    iput v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxStanzas:I

    .line 55
    iput v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->seconds:I

    .line 51
    return-void
.end method

.method private isConfigured()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 135
    iget v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxChars:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxStanzas:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->seconds:I

    if-gt v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->since:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 135
    goto :goto_0
.end method


# virtual methods
.method getMUCHistory()Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 85
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->isConfigured()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    const/4 v0, 0x0

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    new-instance v0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;-><init>()V

    .line 90
    .local v0, mucHistory:Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;
    iget v1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxChars:I

    if-le v1, v2, :cond_2

    .line 91
    iget v1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxChars:I

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->setMaxChars(I)V

    .line 93
    :cond_2
    iget v1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxStanzas:I

    if-le v1, v2, :cond_3

    .line 94
    iget v1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxStanzas:I

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->setMaxStanzas(I)V

    .line 96
    :cond_3
    iget v1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->seconds:I

    if-le v1, v2, :cond_4

    .line 97
    iget v1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->seconds:I

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->setSeconds(I)V

    .line 99
    :cond_4
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->since:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->since:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->setSince(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public getMaxChars()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxChars:I

    return v0
.end method

.method public getMaxStanzas()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxStanzas:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->seconds:I

    return v0
.end method

.method public getSince()Ljava/util/Date;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->since:Ljava/util/Date;

    return-object v0
.end method

.method public setMaxChars(I)V
    .locals 0
    .parameter "maxChars"

    .prologue
    .line 146
    iput p1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxChars:I

    .line 147
    return-void
.end method

.method public setMaxStanzas(I)V
    .locals 0
    .parameter "maxStanzas"

    .prologue
    .line 156
    iput p1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->maxStanzas:I

    .line 157
    return-void
.end method

.method public setSeconds(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 169
    iput p1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->seconds:I

    .line 170
    return-void
.end method

.method public setSince(Ljava/util/Date;)V
    .locals 0
    .parameter "since"

    .prologue
    .line 182
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/DiscussionHistory;->since:Ljava/util/Date;

    .line 183
    return-void
.end method
