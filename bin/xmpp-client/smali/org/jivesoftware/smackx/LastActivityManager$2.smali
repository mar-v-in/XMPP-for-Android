.class Lorg/jivesoftware/smackx/LastActivityManager$2;
.super Ljava/lang/Object;
.source "LastActivityManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/LastActivityManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/LastActivityManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/LastActivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/LastActivityManager$2;->this$0:Lorg/jivesoftware/smackx/LastActivityManager;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 154
    iget-object v0, p0, Lorg/jivesoftware/smackx/LastActivityManager$2;->this$0:Lorg/jivesoftware/smackx/LastActivityManager;

    #calls: Lorg/jivesoftware/smackx/LastActivityManager;->resetIdleTime()V
    invoke-static {v0}, Lorg/jivesoftware/smackx/LastActivityManager;->access$1(Lorg/jivesoftware/smackx/LastActivityManager;)V

    .line 155
    return-void
.end method
