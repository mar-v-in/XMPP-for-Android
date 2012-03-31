.class Lorg/jivesoftware/smackx/muc/MultiUserChat$4;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$4;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 2300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 2303
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 2305
    .local v0, msg:Lorg/jivesoftware/smack/packet/Message;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$4;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getSubject()Ljava/lang/String;

    move-result-object v2

    #setter for: Lorg/jivesoftware/smackx/muc/MultiUserChat;->subject:Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$1(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;)V

    .line 2307
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$4;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireSubjectUpdatedListeners(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$2(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    return-void
.end method
