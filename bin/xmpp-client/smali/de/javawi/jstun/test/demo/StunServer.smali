.class public Lde/javawi/jstun/test/demo/StunServer;
.super Ljava/lang/Object;
.source "StunServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;
    }
.end annotation


# instance fields
.field sockets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;ILjava/net/InetAddress;)V
    .locals 2
    .parameter "primaryPort"
    .parameter "primary"
    .parameter "secondaryPort"
    .parameter "secondary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/javawi/jstun/test/demo/StunServer;->sockets:Ljava/util/Vector;

    .line 278
    iget-object v0, p0, Lde/javawi/jstun/test/demo/StunServer;->sockets:Ljava/util/Vector;

    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, p1, p2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lde/javawi/jstun/test/demo/StunServer;->sockets:Ljava/util/Vector;

    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, p3, p2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lde/javawi/jstun/test/demo/StunServer;->sockets:Ljava/util/Vector;

    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, p1, p4}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lde/javawi/jstun/test/demo/StunServer;->sockets:Ljava/util/Vector;

    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, p3, p4}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .parameter "args"

    .prologue
    .line 240
    :try_start_0
    array-length v5, p0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 241
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 242
    const-string v6, "usage: java de.javawi.jstun.test.demo.StunServer PORT1 IP1 PORT2 IP2"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 244
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 245
    const-string v6, " PORT1 - the first port that should be used by the server"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 247
    const-string v6, "   IP1 - the first ip address that should be used by the server"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 249
    const-string v6, " PORT2 - the second port that should be used by the server"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 251
    const-string v6, "   IP2 - the second ip address that should be used by the server"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 254
    :cond_0
    new-instance v0, Ljava/util/logging/FileHandler;

    const-string v5, "logging_server.txt"

    invoke-direct {v0, v5}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, fh:Ljava/util/logging/Handler;
    new-instance v5, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v5}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 256
    const-string v5, "de.javawi.jstun"

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    .line 257
    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 258
    const-string v5, "de.javawi.jstun"

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    .line 259
    sget-object v6, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 258
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 260
    new-instance v3, Lde/javawi/jstun/test/demo/StunServer;

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 261
    const/4 v6, 0x1

    aget-object v6, p0, v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 262
    const/4 v8, 0x3

    aget-object v8, p0, v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 260
    invoke-direct {v3, v5, v6, v7, v8}, Lde/javawi/jstun/test/demo/StunServer;-><init>(ILjava/net/InetAddress;ILjava/net/InetAddress;)V

    .line 263
    .local v3, ss:Lde/javawi/jstun/test/demo/StunServer;
    invoke-virtual {v3}, Lde/javawi/jstun/test/demo/StunServer;->start()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 271
    .end local v0           #fh:Ljava/util/logging/Handler;
    .end local v3           #ss:Lde/javawi/jstun/test/demo/StunServer;
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, se:Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v2           #se:Ljava/net/SocketException;
    :catch_1
    move-exception v4

    .line 267
    .local v4, uhe:Ljava/net/UnknownHostException;
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v4           #uhe:Ljava/net/UnknownHostException;
    :catch_2
    move-exception v1

    .line 269
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v2, p0, Lde/javawi/jstun/test/demo/StunServer;->sockets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    return-void

    .line 285
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    .line 286
    .local v0, socket:Ljava/net/DatagramSocket;
    const/16 v3, 0x7d0

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 287
    new-instance v1, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;

    invoke-direct {v1, p0, v0}, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;-><init>(Lde/javawi/jstun/test/demo/StunServer;Ljava/net/DatagramSocket;)V

    .line 289
    .local v1, ssrt:Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;
    invoke-virtual {v1}, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->start()V

    goto :goto_0
.end method
