.class Lorg/jivesoftware/smackx/jingle/JingleManager$2;
.super Ljava/lang/Object;
.source "JingleManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/RosterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/JingleManager;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager$2;->this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public entriesAdded(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method public entriesDeleted(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method public entriesUpdated(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method public presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 6
    .parameter "presence"

    .prologue
    .line 334
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 335
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, xmppAddress:Ljava/lang/String;
    const/4 v0, 0x0

    .line 337
    .local v0, aux:Lorg/jivesoftware/smackx/jingle/JingleSession;
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/JingleManager$2;->this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;

    iget-object v4, v4, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 344
    if-eqz v0, :cond_1

    .line 346
    :try_start_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->terminate()V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v0           #aux:Lorg/jivesoftware/smackx/jingle/JingleSession;
    .end local v3           #xmppAddress:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 337
    .restart local v0       #aux:Lorg/jivesoftware/smackx/jingle/JingleSession;
    .restart local v3       #xmppAddress:Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 338
    .local v2, jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getInitiator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 339
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getResponder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 341
    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 347
    .end local v2           #jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;
    :catch_0
    move-exception v1

    .line 348
    .local v1, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_1
.end method
