.class Lorg/jivesoftware/smackx/MessageEventManager$1;
.super Ljava/lang/Object;
.source "MessageEventManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/MessageEventManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/MessageEventManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/MessageEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/MessageEventManager$1;->this$0:Lorg/jivesoftware/smackx/MessageEventManager;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .parameter "packet"

    .prologue
    .line 204
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/Message;

    .line 206
    .local v1, message:Lorg/jivesoftware/smack/packet/Message;
    const-string v3, "x"

    const-string v4, "jabber:x:event"

    invoke-virtual {v1, v3, v4}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    .line 205
    check-cast v2, Lorg/jivesoftware/smackx/packet/MessageEvent;

    .line 207
    .local v2, messageEvent:Lorg/jivesoftware/smackx/packet/MessageEvent;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isMessageEventRequest()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getEventTypes()Ljava/util/Iterator;

    move-result-object v0

    .line 210
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 209
    if-nez v3, :cond_1

    .line 226
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v4, p0, Lorg/jivesoftware/smackx/MessageEventManager$1;->this$0:Lorg/jivesoftware/smackx/MessageEventManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 214
    const-string v7, "NotificationRequested"

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    #calls: Lorg/jivesoftware/smackx/MessageEventManager;->fireMessageEventRequestListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v3}, Lorg/jivesoftware/smackx/MessageEventManager;->access$0(Lorg/jivesoftware/smackx/MessageEventManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getEventTypes()Ljava/util/Iterator;

    move-result-object v0

    .line 219
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 218
    if-eqz v3, :cond_0

    .line 220
    iget-object v4, p0, Lorg/jivesoftware/smackx/MessageEventManager$1;->this$0:Lorg/jivesoftware/smackx/MessageEventManager;

    .line 221
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getPacketID()Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "Notification"

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    #calls: Lorg/jivesoftware/smackx/MessageEventManager;->fireMessageEventNotificationListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v3}, Lorg/jivesoftware/smackx/MessageEventManager;->access$1(Lorg/jivesoftware/smackx/MessageEventManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
