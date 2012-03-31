.class final Lorg/apache/harmony/luni/platform/OSNetworkSystem;
.super Ljava/lang/Object;
.source "OSNetworkSystem.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/INetworkSystem;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ERRORCODE_SOCKET_INTERRUPTED:I = -0xd0

.field private static final ERRORCODE_SOCKET_TIMEOUT:I = -0xd1

.field private static final INETADDR_REACHABLE:I

.field private static isNetworkInited:Z

.field private static singleton:Lorg/apache/harmony/luni/platform/OSNetworkSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-class v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->$assertionsDisabled:Z

    .line 39
    sput-boolean v1, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->isNetworkInited:Z

    .line 41
    new-instance v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->singleton:Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    return-void

    :cond_0
    move v0, v1

    .line 32
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getOSNetworkSystem()Lorg/apache/harmony/luni/platform/OSNetworkSystem;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->singleton:Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    return-object v0
.end method

.method private native isReachableByICMPImpl(Ljava/net/InetAddress;Ljava/net/InetAddress;II)I
.end method

.method private native oneTimeInitializationImpl(Z)V
.end method

.method private native selectImpl([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;II[IJ)I
.end method

.method private validateFDs([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;)Z
    .locals 5
    .parameter "readFDs"
    .parameter "writeFDs"

    .prologue
    const/4 v1, 0x0

    .line 509
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    .line 515
    array-length v3, p2

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_2

    .line 520
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 509
    :cond_1
    aget-object v0, p1, v2

    .line 511
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    .end local v0           #fd:Ljava/io/FileDescriptor;
    :cond_2
    aget-object v0, p2, v2

    .line 516
    .restart local v0       #fd:Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private validateFDs([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;II)Z
    .locals 3
    .parameter "readFDs"
    .parameter "writeFDs"
    .parameter "countRead"
    .parameter "countWrite"

    .prologue
    const/4 v1, 0x0

    .line 525
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 531
    const/4 v0, 0x0

    :goto_1
    if-lt v0, p4, :cond_2

    .line 536
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 527
    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_2
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public native accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native acceptStreamSocket(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native availableStream(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native connectDatagram(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native connectStreamWithTimeoutSocket(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native connectWithTimeout(Ljava/io/FileDescriptor;IILjava/net/InetAddress;IILjava/lang/Long;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native createDatagramSocket(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native createServerStreamSocket(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native createStreamSocket(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native disconnectDatagram(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native getHostByAddr([B)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public native getHostByName(Ljava/lang/String;Z)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public native getSocketFlags()I
.end method

.method public native getSocketLocalAddress(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;
.end method

.method public native getSocketLocalPort(Ljava/io/FileDescriptor;Z)I
.end method

.method public native getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native inheritedChannel()Ljava/nio/channels/Channel;
.end method

.method public isReachableByICMP(Ljava/net/InetAddress;Ljava/net/InetAddress;II)Z
    .locals 1
    .parameter "dest"
    .parameter "source"
    .parameter "ttl"
    .parameter "timeout"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->isReachableByICMPImpl(Ljava/net/InetAddress;Ljava/net/InetAddress;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native listenStreamSocket(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public oneTimeInitialization(Z)V
    .locals 1
    .parameter "jcl_supports_ipv6"

    .prologue
    .line 190
    sget-boolean v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->isNetworkInited:Z

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->oneTimeInitializationImpl(Z)V

    .line 192
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->isNetworkInited:Z

    .line 194
    :cond_0
    return-void
.end method

.method public native peekDatagram(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native read(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native readDirect(Ljava/io/FileDescriptor;JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native receiveDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;JIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native receiveStream(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native recvConnectedDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;JIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;IIJ[I)Z
    .locals 10
    .parameter "readFDs"
    .parameter "writeFDs"
    .parameter "numReadable"
    .parameter "numWritable"
    .parameter "timeout"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 365
    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 369
    :cond_1
    add-int v9, p3, p4

    .line 370
    .local v9, total:I
    if-nez v9, :cond_2

    .line 371
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    .line 374
    :cond_2
    sget-boolean v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->validateFDs([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;II)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid file descriptor arrays"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p7

    move-wide v6, p5

    .line 377
    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->selectImpl([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;II[IJ)I

    move-result v8

    .line 379
    .local v8, result:I
    if-ltz v8, :cond_4

    .line 380
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :cond_4
    const/16 v0, -0xd1

    if-eq v8, v0, :cond_5

    .line 383
    const/16 v0, -0xd0

    if-ne v8, v0, :cond_6

    .line 384
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 386
    :cond_6
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0}, Ljava/net/SocketException;-><init>()V

    throw v0
.end method

.method public native sendConnectedDatagram(Ljava/io/FileDescriptor;[BIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native sendConnectedDatagramDirect(Ljava/io/FileDescriptor;JIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native sendDatagram(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native sendDatagram2(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native sendDatagramDirect(Ljava/io/FileDescriptor;JIIIZILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native sendUrgentData(Ljava/io/FileDescriptor;B)V
.end method

.method public native setInetAddress(Ljava/net/InetAddress;[B)V
.end method

.method public native setNonBlocking(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native shutdownInput(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native shutdownOutput(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native socketClose(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native supportsUrgentData(Ljava/io/FileDescriptor;)Z
.end method

.method public native write(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native writeDirect(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
