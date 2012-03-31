.class public interface abstract Lorg/apache/harmony/luni/platform/INetworkSystem;
.super Ljava/lang/Object;
.source "INetworkSystem.java"


# static fields
.field public static final SOCKET_CONNECT_STEP_CHECK:I = 0x1

.field public static final SOCKET_CONNECT_STEP_START:I


# virtual methods
.method public abstract accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract acceptStreamSocket(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract availableStream(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connectDatagram(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract connectStreamWithTimeoutSocket(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connectWithTimeout(Ljava/io/FileDescriptor;IILjava/net/InetAddress;IILjava/lang/Long;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createDatagramSocket(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract createServerStreamSocket(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract createStreamSocket(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract disconnectDatagram(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract getHostByAddr([B)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract getHostByName(Ljava/lang/String;Z)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract getSocketFlags()I
.end method

.method public abstract getSocketLocalAddress(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;
.end method

.method public abstract getSocketLocalPort(Ljava/io/FileDescriptor;Z)I
.end method

.method public abstract getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract inheritedChannel()Ljava/nio/channels/Channel;
.end method

.method public abstract isReachableByICMP(Ljava/net/InetAddress;Ljava/net/InetAddress;II)Z
.end method

.method public abstract listenStreamSocket(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract oneTimeInitialization(Z)V
.end method

.method public abstract peekDatagram(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readDirect(Ljava/io/FileDescriptor;JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract receiveDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;JIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract receiveStream(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract recvConnectedDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;JIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;IIJ[I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract sendConnectedDatagram(Ljava/io/FileDescriptor;[BIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendConnectedDatagramDirect(Ljava/io/FileDescriptor;JIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendDatagram(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendDatagram2(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendDatagramDirect(Ljava/io/FileDescriptor;JIIIZILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendUrgentData(Ljava/io/FileDescriptor;B)V
.end method

.method public abstract setInetAddress(Ljava/net/InetAddress;[B)V
.end method

.method public abstract setNonBlocking(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract shutdownInput(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shutdownOutput(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract socketClose(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract supportsUrgentData(Ljava/io/FileDescriptor;)Z
.end method

.method public abstract write(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeDirect(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
