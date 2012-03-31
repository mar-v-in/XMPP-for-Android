.class Lorg/jivesoftware/smackx/workgroup/user/Workgroup$2;
.super Ljava/lang/Object;
.source "Workgroup.java"

# interfaces
.implements Lorg/jivesoftware/smackx/muc/InvitationListener;


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
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$2;->this$0:Lorg/jivesoftware/smackx/workgroup/user/Workgroup;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invitationReceived(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 3
    .parameter "conn"
    .parameter "room"
    .parameter "inviter"
    .parameter "reason"
    .parameter "password"
    .parameter "message"

    .prologue
    const/4 v2, -0x1

    .line 183
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$2;->this$0:Lorg/jivesoftware/smackx/workgroup/user/Workgroup;

    const/4 v1, 0x0

    #setter for: Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->access$1(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;Z)V

    .line 184
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$2;->this$0:Lorg/jivesoftware/smackx/workgroup/user/Workgroup;

    #setter for: Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queuePosition:I
    invoke-static {v0, v2}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->access$2(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;I)V

    .line 185
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$2;->this$0:Lorg/jivesoftware/smackx/workgroup/user/Workgroup;

    #setter for: Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueRemainingTime:I
    invoke-static {v0, v2}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->access$3(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;I)V

    .line 186
    return-void
.end method
