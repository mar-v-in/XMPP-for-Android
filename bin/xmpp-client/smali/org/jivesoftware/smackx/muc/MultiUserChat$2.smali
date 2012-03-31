.class Lorg/jivesoftware/smackx/muc/MultiUserChat$2;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat;->changeSubject(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

.field private final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$2;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$2;->val$subject:Ljava/lang/String;

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 3
    .parameter "packet"

    .prologue
    .line 1051
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 1052
    .local v0, msg:Lorg/jivesoftware/smack/packet/Message;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$2;->val$subject:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
