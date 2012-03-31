.class Lorg/jivesoftware/smackx/commands/AdHocCommandManager$3;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/NodeInformationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$3;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    .line 272
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
    .line 275
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
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeItems()Ljava/util/List;
    .locals 6
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
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    iget-object v4, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$3;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    #calls: Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->getRegisteredCommands()Ljava/util/Collection;
    invoke-static {v4}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$3(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Collection;

    move-result-object v1

    .line 289
    .local v1, commandsList:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 297
    return-object v0

    .line 289
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;

    .line 290
    .local v2, info:Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
    new-instance v3, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 291
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getOwnerJID()Ljava/lang/String;

    move-result-object v5

    .line 290
    invoke-direct {v3, v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;-><init>(Ljava/lang/String;)V

    .line 292
    .local v3, item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->setName(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getNode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->setNode(Ljava/lang/String;)V

    .line 294
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
