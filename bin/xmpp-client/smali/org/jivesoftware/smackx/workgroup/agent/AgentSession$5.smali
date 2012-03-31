.class Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$5;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "AgentSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->sendRoomTransfer(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;

.field private final synthetic val$transfer:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$5;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;

    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$5;->val$transfer:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;

    .line 1077
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$5;->val$transfer:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
