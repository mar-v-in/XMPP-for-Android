.class public Lorg/jivesoftware/smackx/jingle/nat/HttpServer;
.super Ljava/lang/Object;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/nat/HttpServer$HttpRequestHandler;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/HttpServer;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 145
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/HttpServer;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .parameter "port"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, p1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 158
    .local v2, server_socket:Ljava/net/ServerSocket;
    sget-object v5, Lorg/jivesoftware/smackx/jingle/nat/HttpServer;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpServer running on port "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-virtual {v5, v6}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 162
    :goto_0
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 163
    .local v3, socket:Ljava/net/Socket;
    sget-object v5, Lorg/jivesoftware/smackx/jingle/nat/HttpServer;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "New connection accepted "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-virtual {v5, v6}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :try_start_1
    new-instance v1, Lorg/jivesoftware/smackx/jingle/nat/HttpServer$HttpRequestHandler;

    invoke-direct {v1, p0, v3}, Lorg/jivesoftware/smackx/jingle/nat/HttpServer$HttpRequestHandler;-><init>(Lorg/jivesoftware/smackx/jingle/nat/HttpServer;Ljava/net/Socket;)V

    .line 170
    .local v1, request:Lorg/jivesoftware/smackx/jingle/nat/HttpServer$HttpRequestHandler;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 172
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 173
    .end local v1           #request:Lorg/jivesoftware/smackx/jingle/nat/HttpServer$HttpRequestHandler;
    .end local v4           #thread:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lorg/jivesoftware/smackx/jingle/nat/HttpServer;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v6, ""

    invoke-virtual {v5, v6, v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #server_socket:Ljava/net/ServerSocket;
    .end local v3           #socket:Ljava/net/Socket;
    :catch_1
    move-exception v0

    .line 180
    .local v0, e:Ljava/io/IOException;
    sget-object v5, Lorg/jivesoftware/smackx/jingle/nat/HttpServer;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v6, ""

    invoke-virtual {v5, v6, v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 183
    return-void
.end method

.method static synthetic access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/HttpServer;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 149
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/HttpServer;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/HttpServer;-><init>(I)V

    .line 150
    return-void
.end method
