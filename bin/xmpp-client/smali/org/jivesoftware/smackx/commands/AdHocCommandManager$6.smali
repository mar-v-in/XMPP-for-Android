.class Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/commands/LocalCommandFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->registerCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

.field private final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    iput-object p2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;->val$clazz:Ljava/lang/Class;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance()Lorg/jivesoftware/smackx/commands/LocalCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/commands/LocalCommand;

    return-object v0
.end method
