.class public Lorg/jivesoftware/smackx/packet/DiscoverInfo;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "DiscoverInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;,
        Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    }
.end annotation


# instance fields
.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;",
            ">;"
        }
    .end annotation
.end field

.field private node:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 166
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    .line 40
    return-void
.end method

.method private addFeature(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;)V
    .locals 2
    .parameter "feature"

    .prologue
    .line 173
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v1

    .line 176
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addFeature(Ljava/lang/String;)V
    .locals 1
    .parameter "feature"

    .prologue
    .line 185
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addFeature(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;)V

    .line 186
    return-void
.end method

.method public addIdentity(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V
    .locals 2
    .parameter "identity"

    .prologue
    .line 196
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    monitor-exit v1

    .line 199
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "feature"

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getFeatures()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 211
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;->getVar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<query xmlns=\"http://jabber.org/protocol/disco#info\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 223
    const-string v3, " node=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    monitor-enter v4

    .line 229
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 228
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    monitor-enter v4

    .line 234
    :try_start_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 233
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getExtensionsXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v3, "</query>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 229
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 230
    .local v2, identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->toXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    .end local v2           #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 234
    :cond_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;

    .line 235
    .local v1, feature:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;->toXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 233
    .end local v1           #feature:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public getFeatures()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->features:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIdentities()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->identities:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->node:Ljava/lang/String;

    return-object v0
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 294
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->node:Ljava/lang/String;

    .line 295
    return-void
.end method
