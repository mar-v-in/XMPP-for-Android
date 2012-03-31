.class Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;
.super Ljava/lang/Object;
.source "Socks5Client.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->getSocket(I)Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/net/Socket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;->call()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 178
    .local v0, socket:Ljava/net/Socket;
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 179
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;

    iget-object v2, v2, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;

    iget-object v3, v3, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getPort()I

    move-result v3

    .line 178
    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 180
    .local v1, socketAddress:Ljava/net/SocketAddress;
    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 183
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->establish(Ljava/net/Socket;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 187
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    .line 188
    const-string v3, "establishing connection to SOCKS5 proxy failed"

    .line 187
    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_0
    return-object v0
.end method
