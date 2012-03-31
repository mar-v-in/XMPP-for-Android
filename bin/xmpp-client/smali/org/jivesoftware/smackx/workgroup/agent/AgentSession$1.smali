.class Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$1;
.super Ljava/lang/Object;
.source "AgentSession.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$1;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$1;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;

    #calls: Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V
    invoke-static {v1, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->access$0(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
