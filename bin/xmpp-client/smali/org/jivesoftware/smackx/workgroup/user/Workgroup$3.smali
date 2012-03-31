.class Lorg/jivesoftware/smackx/workgroup/user/Workgroup$3;
.super Ljava/lang/Object;
.source "Workgroup.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/workgroup/user/Workgroup;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/user/Workgroup;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$3;->this$0:Lorg/jivesoftware/smackx/workgroup/user/Workgroup;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 195
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$3;->this$0:Lorg/jivesoftware/smackx/workgroup/user/Workgroup;

    #calls: Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V
    invoke-static {v0, p1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->access$4(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;Lorg/jivesoftware/smack/packet/Packet;)V

    .line 196
    return-void
.end method
