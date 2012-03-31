.class Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener$1;
.super Ljava/lang/Object;
.source "InitiationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

.field private final synthetic val$packet:Lorg/jivesoftware/smack/packet/Packet;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener$1;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    iput-object p2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener$1;->val$packet:Lorg/jivesoftware/smack/packet/Packet;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener$1;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener$1;->val$packet:Lorg/jivesoftware/smack/packet/Packet;

    #calls: Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->processRequest(Lorg/jivesoftware/smack/packet/Packet;)V
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->access$0(Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;Lorg/jivesoftware/smack/packet/Packet;)V

    .line 78
    return-void
.end method
