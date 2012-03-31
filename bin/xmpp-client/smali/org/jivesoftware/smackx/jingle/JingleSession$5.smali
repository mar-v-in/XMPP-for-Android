.class Lorg/jivesoftware/smackx/jingle/JingleSession$5;
.super Ljava/lang/Object;
.source "JingleSession.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/JingleSession;->updatePacketListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$5;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 1252
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$5;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    .end local p1
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->receivePacketAndRespond(Lorg/jivesoftware/smack/packet/IQ;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    :goto_0
    return-void

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0
.end method
