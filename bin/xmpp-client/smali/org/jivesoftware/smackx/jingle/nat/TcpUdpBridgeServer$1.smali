.class Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$1;
.super Ljava/lang/Object;
.source "TcpUdpBridgeServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->startBridge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 61
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localTcpSocket:Ljava/net/Socket;
    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$0(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 65
    .local v2, out:Ljava/io/OutputStream;
    :cond_0
    :goto_0
    const/16 v4, 0x1f4

    new-array v0, v4, [B

    .line 66
    .local v0, b:[B
    new-instance v3, Ljava/net/DatagramPacket;

    const/16 v4, 0x1f4

    invoke-direct {v3, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 68
    .local v3, p:Ljava/net/DatagramPacket;
    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localUdpSocket:Ljava/net/DatagramSocket;
    invoke-static {v4}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$1(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)Ljava/net/DatagramSocket;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 69
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$2()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UDP Server Received and Sending to TCP Client:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    .line 75
    const-string v10, "UTF-8"

    .line 74
    invoke-direct {v6, v7, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 79
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$2()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v4

    const-string v5, "Server Flush"

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0           #b:[B
    .end local v2           #out:Ljava/io/OutputStream;
    .end local v3           #p:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    return-void
.end method
