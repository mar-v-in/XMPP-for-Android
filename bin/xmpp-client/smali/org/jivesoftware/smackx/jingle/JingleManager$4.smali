.class Lorg/jivesoftware/smackx/jingle/JingleManager$4;
.super Ljava/lang/Object;
.source "JingleManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/JingleManager;->initJingleSessionRequestListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager$4;->this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 547
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager$4;->this$0:Lorg/jivesoftware/smackx/jingle/JingleManager;

    check-cast p1, Lorg/jivesoftware/smackx/packet/Jingle;

    .end local p1
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/jingle/JingleManager;->triggerSessionRequested(Lorg/jivesoftware/smackx/packet/Jingle;)V

    .line 548
    return-void
.end method
