.class Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;
.super Ljava/util/TimerTask;
.source "BindingLifetimeTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/javawi/jstun/test/BindingLifetimeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindingLifetimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lde/javawi/jstun/test/BindingLifetimeTest;


# direct methods
.method public constructor <init>(Lde/javawi/jstun/test/BindingLifetimeTest;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    .line 39
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public lifetimeQuery()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;,
            Lde/javawi/jstun/attribute/MessageAttributeException;,
            Lde/javawi/jstun/header/MessageHeaderParsingException;,
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 46
    :try_start_0
    new-instance v8, Ljava/net/DatagramSocket;

    invoke-direct {v8}, Ljava/net/DatagramSocket;-><init>()V

    .line 47
    .local v8, socket:Ljava/net/DatagramSocket;
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->stunServer:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->port:I

    invoke-virtual {v8, v11, v12}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 48
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->timeout:I

    invoke-virtual {v8, v11}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 50
    new-instance v7, Lde/javawi/jstun/header/MessageHeader;

    .line 51
    sget-object v11, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    .line 50
    invoke-direct {v7, v11}, Lde/javawi/jstun/header/MessageHeader;-><init>(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 52
    .local v7, sendMH:Lde/javawi/jstun/header/MessageHeader;
    invoke-virtual {v7}, Lde/javawi/jstun/header/MessageHeader;->generateTransactionID()V

    .line 53
    new-instance v0, Lde/javawi/jstun/attribute/ChangeRequest;

    invoke-direct {v0}, Lde/javawi/jstun/attribute/ChangeRequest;-><init>()V

    .line 54
    .local v0, changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    new-instance v5, Lde/javawi/jstun/attribute/ResponseAddress;

    invoke-direct {v5}, Lde/javawi/jstun/attribute/ResponseAddress;-><init>()V

    .line 55
    .local v5, responseAddress:Lde/javawi/jstun/attribute/ResponseAddress;
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    invoke-virtual {v11}, Lde/javawi/jstun/attribute/MappedAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v11

    invoke-virtual {v5, v11}, Lde/javawi/jstun/attribute/ResponseAddress;->setAddress(Lde/javawi/jstun/util/Address;)V

    .line 56
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    invoke-virtual {v11}, Lde/javawi/jstun/attribute/MappedAddress;->getPort()I

    move-result v11

    invoke-virtual {v5, v11}, Lde/javawi/jstun/attribute/ResponseAddress;->setPort(I)V

    .line 57
    invoke-virtual {v7, v0}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 58
    invoke-virtual {v7, v5}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 59
    invoke-virtual {v7}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v1

    .line 61
    .local v1, data:[B
    new-instance v6, Ljava/net/DatagramPacket;

    .line 62
    array-length v11, v1

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->stunServer:Ljava/lang/String;

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    iget-object v13, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v13, v13, Lde/javawi/jstun/test/BindingLifetimeTest;->port:I

    .line 61
    invoke-direct {v6, v1, v11, v12, v13}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 63
    .local v6, send:Ljava/net/DatagramPacket;
    invoke-virtual {v8, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 65
    new-instance v4, Lde/javawi/jstun/header/MessageHeader;

    invoke-direct {v4}, Lde/javawi/jstun/header/MessageHeader;-><init>()V

    .line 66
    .local v4, receiveMH:Lde/javawi/jstun/header/MessageHeader;
    :goto_0
    invoke-virtual {v4, v7}, Lde/javawi/jstun/header/MessageHeader;->equalTransactionID(Lde/javawi/jstun/header/MessageHeader;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 74
    sget-object v11, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v4, v11}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v2

    .line 73
    check-cast v2, Lde/javawi/jstun/attribute/ErrorCode;

    .line 75
    .local v2, ec:Lde/javawi/jstun/attribute/ErrorCode;
    if-eqz v2, :cond_2

    .line 108
    .end local v0           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v1           #data:[B
    .end local v2           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .end local v4           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v5           #responseAddress:Lde/javawi/jstun/attribute/ResponseAddress;
    .end local v6           #send:Ljava/net/DatagramPacket;
    .end local v7           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v8           #socket:Ljava/net/DatagramSocket;
    :cond_0
    :goto_1
    return-void

    .line 67
    .restart local v0       #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v1       #data:[B
    .restart local v4       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v5       #responseAddress:Lde/javawi/jstun/attribute/ResponseAddress;
    .restart local v6       #send:Ljava/net/DatagramPacket;
    .restart local v7       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v8       #socket:Ljava/net/DatagramSocket;
    :cond_1
    new-instance v3, Ljava/net/DatagramPacket;

    .line 68
    const/16 v11, 0xc8

    new-array v11, v11, [B

    const/16 v12, 0xc8

    .line 67
    invoke-direct {v3, v11, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 69
    .local v3, receive:Ljava/net/DatagramPacket;
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->initialSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v11, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 70
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    invoke-static {v11}, Lde/javawi/jstun/header/MessageHeader;->parseHeader([B)Lde/javawi/jstun/header/MessageHeader;

    move-result-object v4

    .line 71
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Lde/javawi/jstun/header/MessageHeader;->parseAttributes([B)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v0           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v1           #data:[B
    .end local v3           #receive:Ljava/net/DatagramPacket;
    .end local v4           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v5           #responseAddress:Lde/javawi/jstun/attribute/ResponseAddress;
    .end local v6           #send:Ljava/net/DatagramPacket;
    .end local v7           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v8           #socket:Ljava/net/DatagramSocket;
    :catch_0
    move-exception v9

    .line 92
    .local v9, ste:Ljava/net/SocketTimeoutException;
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->upperBinarySearchLifetime:I

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->lowerBinarySearchLifetime:I

    add-int/lit8 v12, v12, 0x1

    if-ne v11, v12, :cond_5

    .line 93
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iput-boolean v14, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->completed:Z

    goto :goto_1

    .line 78
    .end local v9           #ste:Ljava/net/SocketTimeoutException;
    .restart local v0       #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v1       #data:[B
    .restart local v2       #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .restart local v4       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v5       #responseAddress:Lde/javawi/jstun/attribute/ResponseAddress;
    .restart local v6       #send:Ljava/net/DatagramPacket;
    .restart local v7       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v8       #socket:Ljava/net/DatagramSocket;
    :cond_2
    :try_start_1
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->upperBinarySearchLifetime:I

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->lowerBinarySearchLifetime:I

    add-int/lit8 v12, v12, 0x1

    if-ne v11, v12, :cond_3

    .line 79
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->completed:Z

    goto :goto_1

    .line 82
    :cond_3
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    iput v12, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->lifetime:I

    .line 83
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    iput v12, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->lowerBinarySearchLifetime:I

    .line 84
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->upperBinarySearchLifetime:I

    iget-object v13, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v13, v13, Lde/javawi/jstun/test/BindingLifetimeTest;->lowerBinarySearchLifetime:I

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    iput v12, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    .line 85
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    if-lez v11, :cond_4

    .line 86
    new-instance v10, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;

    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    invoke-direct {v10, v11}, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;-><init>(Lde/javawi/jstun/test/BindingLifetimeTest;)V

    .line 87
    .local v10, task:Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->timer:Ljava/util/Timer;

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    int-to-long v12, v12

    invoke-virtual {v11, v10, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 89
    .end local v10           #task:Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;
    :cond_4
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->completed:Z
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 96
    .end local v0           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v1           #data:[B
    .end local v2           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .end local v4           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v5           #responseAddress:Lde/javawi/jstun/attribute/ResponseAddress;
    .end local v6           #send:Ljava/net/DatagramPacket;
    .end local v7           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v8           #socket:Ljava/net/DatagramSocket;
    .restart local v9       #ste:Ljava/net/SocketTimeoutException;
    :cond_5
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    iput v12, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->upperBinarySearchLifetime:I

    .line 97
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->upperBinarySearchLifetime:I

    iget-object v13, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v13, v13, Lde/javawi/jstun/test/BindingLifetimeTest;->lowerBinarySearchLifetime:I

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    iput v12, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    .line 98
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    if-lez v11, :cond_6

    .line 99
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    #calls: Lde/javawi/jstun/test/BindingLifetimeTest;->bindingCommunicationInitialSocket()Z
    invoke-static {v11}, Lde/javawi/jstun/test/BindingLifetimeTest;->access$0(Lde/javawi/jstun/test/BindingLifetimeTest;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 102
    new-instance v10, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;

    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    invoke-direct {v10, v11}, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;-><init>(Lde/javawi/jstun/test/BindingLifetimeTest;)V

    .line 103
    .restart local v10       #task:Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget-object v11, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->timer:Ljava/util/Timer;

    iget-object v12, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iget v12, v12, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    int-to-long v12, v12

    invoke-virtual {v11, v10, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 105
    .end local v10           #task:Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;
    :cond_6
    iget-object v11, p0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->this$0:Lde/javawi/jstun/test/BindingLifetimeTest;

    iput-boolean v14, v11, Lde/javawi/jstun/test/BindingLifetimeTest;->completed:Z

    goto/16 :goto_1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;->lifetimeQuery()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
