.class Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$3;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "AgentSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V
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
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$3;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;

    .line 791
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    return-object v0
.end method
