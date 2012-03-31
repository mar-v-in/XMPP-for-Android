.class Lorg/jivesoftware/smackx/commands/AdHocCommandManager$5;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$5;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 321
    :goto_0
    iget-object v4, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$5;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    #getter for: Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;
    invoke-static {v4}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$5(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 348
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v4

    goto :goto_0

    .line 321
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 322
    .local v3, sessionId:Ljava/lang/String;
    iget-object v5, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$5;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    #getter for: Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;
    invoke-static {v5}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$5(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;

    move-result-object v5

    .line 323
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/commands/LocalCommand;

    .line 328
    .local v0, command:Lorg/jivesoftware/smackx/commands/LocalCommand;
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/LocalCommand;->getCreationDate()J

    move-result-wide v1

    .line 341
    .local v1, creationStamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/32 v7, 0x3a980

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 343
    iget-object v5, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$5;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    #getter for: Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;
    invoke-static {v5}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$5(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
