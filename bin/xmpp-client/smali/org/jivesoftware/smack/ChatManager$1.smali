.class Lorg/jivesoftware/smack/ChatManager$1;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/ChatManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/ChatManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/ChatManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/ChatManager$1;->this$0:Lorg/jivesoftware/smack/ChatManager;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 3
    .parameter "packet"

    .prologue
    const/4 v1, 0x0

    .line 104
    instance-of v2, p1, Lorg/jivesoftware/smack/packet/Message;

    if-nez v2, :cond_1

    .line 109
    .end local p1
    :cond_0
    :goto_0
    return v1

    .line 107
    .restart local p1
    :cond_1
    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    .end local p1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v0

    .line 108
    .local v0, messageType:Lorg/jivesoftware/smack/packet/Message$Type;
    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v0, v2, :cond_0

    .line 109
    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->headline:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
