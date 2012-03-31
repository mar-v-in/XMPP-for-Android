.class Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;
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

.field private final synthetic val$process:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;->val$process:Ljava/lang/Thread;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 95
    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    iget-object v7, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->serverTcpSocket:Ljava/net/ServerSocket;
    invoke-static {v7}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$3(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)Ljava/net/ServerSocket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v7

    #setter for: Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localTcpSocket:Ljava/net/Socket;
    invoke-static {v6, v7}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$4(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;Ljava/net/Socket;)V

    .line 96
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;->val$process:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 97
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localTcpSocket:Ljava/net/Socket;
    invoke-static {v6}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$0(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 99
    .local v2, in:Ljava/io/InputStream;
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->remoteUdpHost:Ljava/lang/String;
    invoke-static {v6}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$5(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 102
    .local v3, remoteHost:Ljava/net/InetAddress;
    :goto_0
    const/16 v6, 0x1f4

    new-array v0, v6, [B

    .line 104
    .local v0, b:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 107
    .local v4, s:I
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$2()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "TCP Server:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v8, v0, v9, v4, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-virtual {v6, v7}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 110
    new-instance v5, Ljava/net/DatagramPacket;

    invoke-direct {v5, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 113
    .local v5, udpPacket:Ljava/net/DatagramPacket;
    invoke-virtual {v5, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 114
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->remoteUdpPort:I
    invoke-static {v6}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$6(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 116
    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer$2;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;

    #getter for: Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->localUdpSocket:Ljava/net/DatagramSocket;
    invoke-static {v6}, Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;->access$1(Lorg/jivesoftware/smackx/jingle/nat/TcpUdpBridgeServer;)Ljava/net/DatagramSocket;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v0           #b:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #remoteHost:Ljava/net/InetAddress;
    .end local v4           #s:I
    .end local v5           #udpPacket:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    return-void
.end method
