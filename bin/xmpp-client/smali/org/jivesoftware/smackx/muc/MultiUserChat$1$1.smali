.class Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smackx/NodeInformationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat$1;->connectionCreated(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$1;

.field private final synthetic val$connection:Lorg/jivesoftware/smack/Connection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$1;Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$1;

    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;->val$connection:Lorg/jivesoftware/smack/Connection;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNodeFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeIdentities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;->val$connection:Lorg/jivesoftware/smack/Connection;

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->getJoinedRooms(Lorg/jivesoftware/smack/Connection;)Ljava/util/Iterator;
    invoke-static {v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$0(Lorg/jivesoftware/smack/Connection;)Ljava/util/Iterator;

    move-result-object v1

    .line 516
    .local v1, rooms:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 520
    return-object v0

    .line 517
    :cond_0
    new-instance v3, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 518
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;-><init>(Ljava/lang/String;)V

    .line 517
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
