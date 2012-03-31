.class public Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "OfflineMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;,
        Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Provider;
    }
.end annotation


# instance fields
.field private fetch:Z

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;",
            ">;"
        }
    .end annotation
.end field

.field private purge:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->items:Ljava/util/List;

    .line 159
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->purge:Z

    .line 161
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->fetch:Z

    .line 39
    return-void
.end method


# virtual methods
.method public addItem(Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 172
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->items:Ljava/util/List;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v1

    .line 175
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<offline xmlns=\"http://jabber.org/protocol/offline\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->items:Ljava/util/List;

    monitor-enter v4

    .line 182
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 181
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-boolean v3, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->purge:Z

    if-eqz v3, :cond_0

    .line 188
    const-string v3, "<purge/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    iget-boolean v3, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->fetch:Z

    if-eqz v3, :cond_1

    .line 191
    const-string v3, "<fetch/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->getExtensionsXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v3, "</offline>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 183
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;

    .line 184
    .local v2, item:Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v2           #item:Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getItems()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->items:Ljava/util/List;

    monitor-enter v1

    .line 208
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->items:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    monitor-exit v1

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFetch()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->fetch:Z

    return v0
.end method

.method public isPurge()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->purge:Z

    return v0
.end method

.method public setFetch(Z)V
    .locals 0
    .parameter "fetch"

    .prologue
    .line 239
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->fetch:Z

    .line 240
    return-void
.end method

.method public setPurge(Z)V
    .locals 0
    .parameter "purge"

    .prologue
    .line 250
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->purge:Z

    .line 251
    return-void
.end method
