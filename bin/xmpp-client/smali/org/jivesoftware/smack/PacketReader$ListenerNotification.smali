.class Lorg/jivesoftware/smack/PacketReader$ListenerNotification;
.super Ljava/lang/Object;
.source "PacketReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerNotification"
.end annotation


# instance fields
.field private final packet:Lorg/jivesoftware/smack/packet/Packet;

.field final synthetic this$0:Lorg/jivesoftware/smack/PacketReader;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter "packet"

    .prologue
    .line 59
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader$ListenerNotification;->this$0:Lorg/jivesoftware/smack/PacketReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lorg/jivesoftware/smack/PacketReader$ListenerNotification;->packet:Lorg/jivesoftware/smack/packet/Packet;

    .line 61
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader$ListenerNotification;->this$0:Lorg/jivesoftware/smack/PacketReader;

    #getter for: Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lorg/jivesoftware/smack/PacketReader;->access$0(Lorg/jivesoftware/smack/PacketReader;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    iget-object v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->recvListeners:Ljava/util/Map;

    .line 66
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    .line 67
    .local v0, listenerWrapper:Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader$ListenerNotification;->packet:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method
