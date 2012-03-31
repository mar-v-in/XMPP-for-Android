.class Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/NodeInformationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->registerCommand(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    iput-object p2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;->val$name:Ljava/lang/String;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNodeFeatures()Ljava/util/List;
    .locals 2
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
    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "http://jabber.org/protocol/commands"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    const-string v1, "jabber:x:data"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    return-object v0
.end method

.method public getNodeIdentities()Ljava/util/List;
    .locals 4
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
    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    new-instance v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 725
    const-string v2, "automation"

    iget-object v3, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;->val$name:Ljava/lang/String;

    .line 724
    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .local v1, identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    const-string v2, "command-node"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->setType(Ljava/lang/String;)V

    .line 727
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    return-object v0
.end method

.method public getNodeItems()Ljava/util/List;
    .locals 1
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
    .line 733
    const/4 v0, 0x0

    return-object v0
.end method
