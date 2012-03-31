.class Lorg/jivesoftware/smackx/commands/AdHocCommandManager$4;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


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
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$4;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 306
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    .line 307
    .local v0, requestData:Lorg/jivesoftware/smackx/packet/AdHocCommandData;
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$4;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    #calls: Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->processAdHocCommand(Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V
    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$4(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V

    .line 308
    return-void
.end method
