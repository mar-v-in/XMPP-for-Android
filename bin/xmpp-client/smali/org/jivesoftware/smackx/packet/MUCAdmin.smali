.class public Lorg/jivesoftware/smackx/packet/MUCAdmin;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCAdmin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;",
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

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public addItem(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 231
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    monitor-exit v1

    .line 234
    return-void

    .line 231
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
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<query xmlns=\"http://jabber.org/protocol/muc#admin\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    monitor-enter v4

    .line 241
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 240
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getExtensionsXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v3, "</query>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 242
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    .line 243
    .local v2, item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v2           #item:Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
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
            "Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    monitor-enter v1

    .line 261
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    monitor-exit v1

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
