.class public Lorg/jivesoftware/smackx/packet/MUCOwner;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;,
        Lorg/jivesoftware/smackx/packet/MUCOwner$Item;
    }
.end annotation


# instance fields
.field private destroy:Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/MUCOwner$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCOwner;->items:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public addItem(Lorg/jivesoftware/smackx/packet/MUCOwner$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 315
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MUCOwner;->items:Ljava/util/List;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCOwner;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    monitor-exit v1

    .line 318
    return-void

    .line 315
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
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<query xmlns=\"http://jabber.org/protocol/muc#owner\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/MUCOwner;->items:Ljava/util/List;

    monitor-enter v4

    .line 325
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/MUCOwner;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 324
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getDestroy()Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getDestroy()Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCOwner;->getExtensionsXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v3, "</query>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 326
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/MUCOwner;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;

    .line 327
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCOwner$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCOwner$Item;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v2           #item:Lorg/jivesoftware/smackx/packet/MUCOwner$Item;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getDestroy()Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCOwner;->destroy:Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;

    return-object v0
.end method

.method public getItems()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/packet/MUCOwner$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MUCOwner;->items:Ljava/util/List;

    monitor-enter v1

    .line 359
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/MUCOwner;->items:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 359
    monitor-exit v1

    return-object v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDestroy(Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;)V
    .locals 0
    .parameter "destroy"

    .prologue
    .line 373
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCOwner;->destroy:Lorg/jivesoftware/smackx/packet/MUCOwner$Destroy;

    .line 374
    return-void
.end method
