.class public Lde/javawi/jstun/test/DiscoveryTest;
.super Ljava/lang/Object;
.source "DiscoveryTest.java"


# instance fields
.field ca:Lde/javawi/jstun/attribute/ChangedAddress;

.field di:Lde/javawi/jstun/test/DiscoveryInfo;

.field iaddress:Ljava/net/InetAddress;

.field ma:Lde/javawi/jstun/attribute/MappedAddress;

.field nodeNatted:Z

.field port:I

.field socketTest1:Ljava/net/DatagramSocket;

.field stunServer:Ljava/lang/String;

.field timeoutInitValue:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;I)V
    .locals 2
    .parameter "iaddress"
    .parameter "stunServer"
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x12c

    iput v0, p0, Lde/javawi/jstun/test/DiscoveryTest;->timeoutInitValue:I

    .line 39
    iput-object v1, p0, Lde/javawi/jstun/test/DiscoveryTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    .line 40
    iput-object v1, p0, Lde/javawi/jstun/test/DiscoveryTest;->ca:Lde/javawi/jstun/attribute/ChangedAddress;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryTest;->nodeNatted:Z

    .line 42
    iput-object v1, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    .line 43
    iput-object v1, p0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    .line 47
    iput-object p1, p0, Lde/javawi/jstun/test/DiscoveryTest;->iaddress:Ljava/net/InetAddress;

    .line 48
    iput-object p2, p0, Lde/javawi/jstun/test/DiscoveryTest;->stunServer:Ljava/lang/String;

    .line 49
    iput p3, p0, Lde/javawi/jstun/test/DiscoveryTest;->port:I

    .line 50
    return-void
.end method

.method private test1()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;,
            Lde/javawi/jstun/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v8, 0x0

    .line 79
    .local v8, timeSinceFirstTransmission:I
    iget v9, p0, Lde/javawi/jstun/test/DiscoveryTest;->timeoutInitValue:I

    .line 83
    .local v9, timeout:I
    :goto_0
    :try_start_0
    new-instance v11, Ljava/net/DatagramSocket;

    new-instance v12, Ljava/net/InetSocketAddress;

    .line 84
    iget-object v13, p0, Lde/javawi/jstun/test/DiscoveryTest;->iaddress:Ljava/net/InetAddress;

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v11, v12}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 83
    iput-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    .line 85
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 86
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->stunServer:Ljava/lang/String;

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    iget v13, p0, Lde/javawi/jstun/test/DiscoveryTest;->port:I

    invoke-virtual {v11, v12, v13}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 87
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v11, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 89
    new-instance v6, Lde/javawi/jstun/header/MessageHeader;

    .line 90
    sget-object v11, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    .line 89
    invoke-direct {v6, v11}, Lde/javawi/jstun/header/MessageHeader;-><init>(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 91
    .local v6, sendMH:Lde/javawi/jstun/header/MessageHeader;
    invoke-virtual {v6}, Lde/javawi/jstun/header/MessageHeader;->generateTransactionID()V

    .line 93
    new-instance v0, Lde/javawi/jstun/attribute/ChangeRequest;

    invoke-direct {v0}, Lde/javawi/jstun/attribute/ChangeRequest;-><init>()V

    .line 94
    .local v0, changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    invoke-virtual {v6, v0}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 96
    invoke-virtual {v6}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v1

    .line 97
    .local v1, data:[B
    new-instance v5, Ljava/net/DatagramPacket;

    .line 98
    array-length v11, v1

    .line 97
    invoke-direct {v5, v1, v11}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 99
    .local v5, send:Ljava/net/DatagramPacket;
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v11, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 101
    new-instance v4, Lde/javawi/jstun/header/MessageHeader;

    invoke-direct {v4}, Lde/javawi/jstun/header/MessageHeader;-><init>()V

    .line 102
    .local v4, receiveMH:Lde/javawi/jstun/header/MessageHeader;
    :goto_1
    invoke-virtual {v4, v6}, Lde/javawi/jstun/header/MessageHeader;->equalTransactionID(Lde/javawi/jstun/header/MessageHeader;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 111
    sget-object v11, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v4, v11}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v11

    check-cast v11, Lde/javawi/jstun/attribute/MappedAddress;

    .line 110
    iput-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    .line 113
    sget-object v11, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ChangedAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v4, v11}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v11

    check-cast v11, Lde/javawi/jstun/attribute/ChangedAddress;

    .line 112
    iput-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->ca:Lde/javawi/jstun/attribute/ChangedAddress;

    .line 115
    sget-object v11, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v4, v11}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v2

    .line 114
    check-cast v2, Lde/javawi/jstun/attribute/ErrorCode;

    .line 116
    .local v2, ec:Lde/javawi/jstun/attribute/ErrorCode;
    if-eqz v2, :cond_2

    .line 117
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    invoke-virtual {v2}, Lde/javawi/jstun/attribute/ErrorCode;->getResponseCode()I

    move-result v12

    invoke-virtual {v2}, Lde/javawi/jstun/attribute/ErrorCode;->getReason()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lde/javawi/jstun/test/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 118
    const/4 v11, 0x0

    .line 146
    .end local v0           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v1           #data:[B
    .end local v2           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .end local v4           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v5           #send:Ljava/net/DatagramPacket;
    .end local v6           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :goto_2
    return v11

    .line 103
    .restart local v0       #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v1       #data:[B
    .restart local v4       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v5       #send:Ljava/net/DatagramPacket;
    .restart local v6       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :cond_0
    new-instance v3, Ljava/net/DatagramPacket;

    .line 104
    const/16 v11, 0xc8

    new-array v11, v11, [B

    const/16 v12, 0xc8

    .line 103
    invoke-direct {v3, v11, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 105
    .local v3, receive:Ljava/net/DatagramPacket;
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v11, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 106
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    invoke-static {v11}, Lde/javawi/jstun/header/MessageHeader;->parseHeader([B)Lde/javawi/jstun/header/MessageHeader;

    move-result-object v4

    .line 107
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Lde/javawi/jstun/header/MessageHeader;->parseAttributes([B)V

    goto :goto_1

    .line 135
    .end local v0           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v1           #data:[B
    .end local v3           #receive:Ljava/net/DatagramPacket;
    .end local v4           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v5           #send:Ljava/net/DatagramPacket;
    .end local v6           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :catch_0
    move-exception v7

    .line 136
    .local v7, ste:Ljava/net/SocketTimeoutException;
    const/16 v11, 0x1edc

    if-ge v8, v11, :cond_6

    .line 137
    add-int/2addr v8, v9

    .line 138
    mul-int/lit8 v10, v8, 0x2

    .line 139
    .local v10, timeoutAddValue:I
    const/16 v11, 0x640

    if-le v10, v11, :cond_1

    .line 140
    const/16 v10, 0x640

    .line 142
    :cond_1
    move v9, v10

    goto/16 :goto_0

    .line 120
    .end local v7           #ste:Ljava/net/SocketTimeoutException;
    .end local v10           #timeoutAddValue:I
    .restart local v0       #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v1       #data:[B
    .restart local v2       #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .restart local v4       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v5       #send:Ljava/net/DatagramPacket;
    .restart local v6       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :cond_2
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->ca:Lde/javawi/jstun/attribute/ChangedAddress;

    if-nez v11, :cond_4

    .line 121
    :cond_3
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    .line 122
    const/16 v12, 0x2bc

    .line 123
    const-string v13, "The server is sending an incomplete response (Mapped Address and Changed Address message attributes are missing). The client should not retry."

    .line 121
    invoke-virtual {v11, v12, v13}, Lde/javawi/jstun/test/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 124
    const/4 v11, 0x0

    goto :goto_2

    .line 126
    :cond_4
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    invoke-virtual {v12}, Lde/javawi/jstun/attribute/MappedAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v12

    invoke-virtual {v12}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Lde/javawi/jstun/test/DiscoveryInfo;->setPublicIP(Ljava/net/InetAddress;)V

    .line 127
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    invoke-virtual {v11}, Lde/javawi/jstun/attribute/MappedAddress;->getPort()I

    move-result v11

    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v12

    if-ne v11, v12, :cond_5

    .line 128
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    invoke-virtual {v11}, Lde/javawi/jstun/attribute/MappedAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v11

    invoke-virtual {v11}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v11

    .line 129
    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 130
    const/4 v11, 0x0

    iput-boolean v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->nodeNatted:Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    .line 145
    .end local v0           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v1           #data:[B
    .end local v2           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .end local v4           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v5           #send:Ljava/net/DatagramPacket;
    .end local v6           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v7       #ste:Ljava/net/SocketTimeoutException;
    :cond_6
    iget-object v11, p0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    invoke-virtual {v11}, Lde/javawi/jstun/test/DiscoveryInfo;->setBlockedUDP()V

    .line 146
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method private test1Redo()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;,
            Lde/javawi/jstun/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v9, 0x0

    .line 156
    .local v9, timeSinceFirstTransmission:I
    iget v10, p0, Lde/javawi/jstun/test/DiscoveryTest;->timeoutInitValue:I

    .line 162
    .local v10, timeout:I
    :goto_0
    :try_start_0
    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    iget-object v13, p0, Lde/javawi/jstun/test/DiscoveryTest;->ca:Lde/javawi/jstun/attribute/ChangedAddress;

    invoke-virtual {v13}, Lde/javawi/jstun/attribute/ChangedAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v13

    invoke-virtual {v13}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v13

    .line 163
    iget-object v14, p0, Lde/javawi/jstun/test/DiscoveryTest;->ca:Lde/javawi/jstun/attribute/ChangedAddress;

    invoke-virtual {v14}, Lde/javawi/jstun/attribute/ChangedAddress;->getPort()I

    move-result v14

    .line 162
    invoke-virtual {v12, v13, v14}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 164
    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v12, v10}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 166
    new-instance v7, Lde/javawi/jstun/header/MessageHeader;

    .line 167
    sget-object v12, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    .line 166
    invoke-direct {v7, v12}, Lde/javawi/jstun/header/MessageHeader;-><init>(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 168
    .local v7, sendMH:Lde/javawi/jstun/header/MessageHeader;
    invoke-virtual {v7}, Lde/javawi/jstun/header/MessageHeader;->generateTransactionID()V

    .line 170
    new-instance v0, Lde/javawi/jstun/attribute/ChangeRequest;

    invoke-direct {v0}, Lde/javawi/jstun/attribute/ChangeRequest;-><init>()V

    .line 171
    .local v0, changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    invoke-virtual {v7, v0}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 173
    invoke-virtual {v7}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v1

    .line 174
    .local v1, data:[B
    new-instance v6, Ljava/net/DatagramPacket;

    .line 175
    array-length v12, v1

    .line 174
    invoke-direct {v6, v1, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 176
    .local v6, send:Ljava/net/DatagramPacket;
    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v12, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 178
    new-instance v5, Lde/javawi/jstun/header/MessageHeader;

    invoke-direct {v5}, Lde/javawi/jstun/header/MessageHeader;-><init>()V

    .line 179
    .local v5, receiveMH:Lde/javawi/jstun/header/MessageHeader;
    :goto_1
    invoke-virtual {v5, v7}, Lde/javawi/jstun/header/MessageHeader;->equalTransactionID(Lde/javawi/jstun/header/MessageHeader;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 187
    sget-object v12, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v5, v12}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v3

    .line 186
    check-cast v3, Lde/javawi/jstun/attribute/MappedAddress;

    .line 189
    .local v3, ma2:Lde/javawi/jstun/attribute/MappedAddress;
    sget-object v12, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v5, v12}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v2

    .line 188
    check-cast v2, Lde/javawi/jstun/attribute/ErrorCode;

    .line 190
    .local v2, ec:Lde/javawi/jstun/attribute/ErrorCode;
    if-eqz v2, :cond_2

    .line 191
    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    invoke-virtual {v2}, Lde/javawi/jstun/attribute/ErrorCode;->getResponseCode()I

    move-result v13

    invoke-virtual {v2}, Lde/javawi/jstun/attribute/ErrorCode;->getReason()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lde/javawi/jstun/test/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 192
    const/4 v12, 0x0

    .line 217
    .end local v0           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v1           #data:[B
    .end local v2           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .end local v3           #ma2:Lde/javawi/jstun/attribute/MappedAddress;
    .end local v5           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v6           #send:Ljava/net/DatagramPacket;
    .end local v7           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :goto_2
    return v12

    .line 180
    .restart local v0       #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v1       #data:[B
    .restart local v5       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v6       #send:Ljava/net/DatagramPacket;
    .restart local v7       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :cond_0
    new-instance v4, Ljava/net/DatagramPacket;

    .line 181
    const/16 v12, 0xc8

    new-array v12, v12, [B

    const/16 v13, 0xc8

    .line 180
    invoke-direct {v4, v12, v13}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 182
    .local v4, receive:Ljava/net/DatagramPacket;
    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v12, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 183
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v12

    invoke-static {v12}, Lde/javawi/jstun/header/MessageHeader;->parseHeader([B)Lde/javawi/jstun/header/MessageHeader;

    move-result-object v5

    .line 184
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v12

    invoke-virtual {v5, v12}, Lde/javawi/jstun/header/MessageHeader;->parseAttributes([B)V

    goto :goto_1

    .line 208
    .end local v0           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v1           #data:[B
    .end local v4           #receive:Ljava/net/DatagramPacket;
    .end local v5           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v6           #send:Ljava/net/DatagramPacket;
    .end local v7           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :catch_0
    move-exception v8

    .line 209
    .local v8, ste2:Ljava/net/SocketTimeoutException;
    const/16 v12, 0x1edc

    if-ge v9, v12, :cond_6

    .line 210
    add-int/2addr v9, v10

    .line 211
    mul-int/lit8 v11, v9, 0x2

    .line 212
    .local v11, timeoutAddValue:I
    const/16 v12, 0x640

    if-le v11, v12, :cond_1

    .line 213
    const/16 v11, 0x640

    .line 215
    :cond_1
    move v10, v11

    goto/16 :goto_0

    .line 194
    .end local v8           #ste2:Ljava/net/SocketTimeoutException;
    .end local v11           #timeoutAddValue:I
    .restart local v0       #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v1       #data:[B
    .restart local v2       #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .restart local v3       #ma2:Lde/javawi/jstun/attribute/MappedAddress;
    .restart local v5       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v6       #send:Ljava/net/DatagramPacket;
    .restart local v7       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :cond_2
    if-nez v3, :cond_3

    .line 195
    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    .line 196
    const/16 v13, 0x2bc

    .line 197
    const-string v14, "The server is sending an incomplete response (Mapped Address message attribute is missing). The client should not retry."

    .line 195
    invoke-virtual {v12, v13, v14}, Lde/javawi/jstun/test/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 198
    const/4 v12, 0x0

    goto :goto_2

    .line 200
    :cond_3
    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    invoke-virtual {v12}, Lde/javawi/jstun/attribute/MappedAddress;->getPort()I

    move-result v12

    invoke-virtual {v3}, Lde/javawi/jstun/attribute/MappedAddress;->getPort()I

    move-result v13

    if-ne v12, v13, :cond_4

    .line 201
    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    invoke-virtual {v12}, Lde/javawi/jstun/attribute/MappedAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v12

    invoke-virtual {v12}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v12

    .line 202
    invoke-virtual {v3}, Lde/javawi/jstun/attribute/MappedAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v13

    invoke-virtual {v13}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v13

    .line 201
    invoke-virtual {v12, v13}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 203
    :cond_4
    iget-object v12, p0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    invoke-virtual {v12}, Lde/javawi/jstun/test/DiscoveryInfo;->setSymmetric()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    const/4 v12, 0x0

    goto :goto_2

    .line 207
    :cond_5
    const/4 v12, 0x1

    goto :goto_2

    .line 217
    .end local v0           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v1           #data:[B
    .end local v2           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .end local v3           #ma2:Lde/javawi/jstun/attribute/MappedAddress;
    .end local v5           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v6           #send:Ljava/net/DatagramPacket;
    .end local v7           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v8       #ste2:Ljava/net/SocketTimeoutException;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private test2()Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;,
            Lde/javawi/jstun/attribute/MessageAttributeException;,
            Lde/javawi/jstun/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v14, 0x0

    .line 228
    .local v14, timeSinceFirstTransmission:I
    move-object/from16 v0, p0

    iget v15, v0, Lde/javawi/jstun/test/DiscoveryTest;->timeoutInitValue:I

    .line 232
    .local v15, timeout:I
    :goto_0
    :try_start_0
    new-instance v12, Ljava/net/DatagramSocket;

    .line 233
    new-instance v17, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->iaddress:Ljava/net/InetAddress;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 232
    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 234
    .local v12, sendSocket:Ljava/net/DatagramSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->stunServer:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->port:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 235
    invoke-virtual {v12, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 237
    new-instance v11, Lde/javawi/jstun/header/MessageHeader;

    .line 238
    sget-object v17, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    .line 237
    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lde/javawi/jstun/header/MessageHeader;-><init>(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 239
    .local v11, sendMH:Lde/javawi/jstun/header/MessageHeader;
    invoke-virtual {v11}, Lde/javawi/jstun/header/MessageHeader;->generateTransactionID()V

    .line 241
    new-instance v2, Lde/javawi/jstun/attribute/ChangeRequest;

    invoke-direct {v2}, Lde/javawi/jstun/attribute/ChangeRequest;-><init>()V

    .line 242
    .local v2, changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    invoke-virtual {v2}, Lde/javawi/jstun/attribute/ChangeRequest;->setChangeIP()V

    .line 243
    invoke-virtual {v2}, Lde/javawi/jstun/attribute/ChangeRequest;->setChangePort()V

    .line 244
    invoke-virtual {v11, v2}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 246
    invoke-virtual {v11}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v3

    .line 247
    .local v3, data:[B
    new-instance v10, Ljava/net/DatagramPacket;

    .line 248
    array-length v0, v3

    move/from16 v17, v0

    .line 247
    move/from16 v0, v17

    invoke-direct {v10, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 249
    .local v10, send:Ljava/net/DatagramPacket;
    invoke-virtual {v12, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 251
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v6

    .line 252
    .local v6, localPort:I
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 254
    .local v5, localAddress:Ljava/net/InetAddress;
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->close()V

    .line 256
    new-instance v9, Ljava/net/DatagramSocket;

    invoke-direct {v9, v6, v5}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 258
    .local v9, receiveSocket:Ljava/net/DatagramSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->ca:Lde/javawi/jstun/attribute/ChangedAddress;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lde/javawi/jstun/attribute/ChangedAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v17

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->ca:Lde/javawi/jstun/attribute/ChangedAddress;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lde/javawi/jstun/attribute/ChangedAddress;->getPort()I

    move-result v18

    .line 258
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 260
    invoke-virtual {v9, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 262
    new-instance v8, Lde/javawi/jstun/header/MessageHeader;

    invoke-direct {v8}, Lde/javawi/jstun/header/MessageHeader;-><init>()V

    .line 263
    .local v8, receiveMH:Lde/javawi/jstun/header/MessageHeader;
    :goto_1
    invoke-virtual {v8, v11}, Lde/javawi/jstun/header/MessageHeader;->equalTransactionID(Lde/javawi/jstun/header/MessageHeader;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 271
    sget-object v17, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v4

    .line 270
    check-cast v4, Lde/javawi/jstun/attribute/ErrorCode;

    .line 272
    .local v4, ec:Lde/javawi/jstun/attribute/ErrorCode;
    if-eqz v4, :cond_2

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ErrorCode;->getResponseCode()I

    move-result v18

    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ErrorCode;->getReason()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lde/javawi/jstun/test/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 274
    const/16 v17, 0x0

    .line 298
    .end local v2           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v3           #data:[B
    .end local v4           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .end local v5           #localAddress:Ljava/net/InetAddress;
    .end local v6           #localPort:I
    .end local v8           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v9           #receiveSocket:Ljava/net/DatagramSocket;
    .end local v10           #send:Ljava/net/DatagramPacket;
    .end local v11           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v12           #sendSocket:Ljava/net/DatagramSocket;
    :goto_2
    return v17

    .line 264
    .restart local v2       #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v3       #data:[B
    .restart local v5       #localAddress:Ljava/net/InetAddress;
    .restart local v6       #localPort:I
    .restart local v8       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v9       #receiveSocket:Ljava/net/DatagramSocket;
    .restart local v10       #send:Ljava/net/DatagramPacket;
    .restart local v11       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v12       #sendSocket:Ljava/net/DatagramSocket;
    :cond_0
    new-instance v7, Ljava/net/DatagramPacket;

    .line 265
    const/16 v17, 0xc8

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v18, 0xc8

    .line 264
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 266
    .local v7, receive:Ljava/net/DatagramPacket;
    invoke-virtual {v9, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 267
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lde/javawi/jstun/header/MessageHeader;->parseHeader([B)Lde/javawi/jstun/header/MessageHeader;

    move-result-object v8

    .line 268
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lde/javawi/jstun/header/MessageHeader;->parseAttributes([B)V

    goto :goto_1

    .line 282
    .end local v2           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v3           #data:[B
    .end local v5           #localAddress:Ljava/net/InetAddress;
    .end local v6           #localPort:I
    .end local v7           #receive:Ljava/net/DatagramPacket;
    .end local v8           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v9           #receiveSocket:Ljava/net/DatagramSocket;
    .end local v10           #send:Ljava/net/DatagramPacket;
    .end local v11           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v12           #sendSocket:Ljava/net/DatagramSocket;
    :catch_0
    move-exception v13

    .line 283
    .local v13, ste:Ljava/net/SocketTimeoutException;
    const/16 v17, 0x1edc

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 284
    add-int/2addr v14, v15

    .line 285
    mul-int/lit8 v16, v14, 0x2

    .line 286
    .local v16, timeoutAddValue:I
    const/16 v17, 0x640

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 287
    const/16 v16, 0x640

    .line 289
    :cond_1
    move/from16 v15, v16

    goto/16 :goto_0

    .line 276
    .end local v13           #ste:Ljava/net/SocketTimeoutException;
    .end local v16           #timeoutAddValue:I
    .restart local v2       #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v3       #data:[B
    .restart local v4       #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .restart local v5       #localAddress:Ljava/net/InetAddress;
    .restart local v6       #localPort:I
    .restart local v8       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v9       #receiveSocket:Ljava/net/DatagramSocket;
    .restart local v10       #send:Ljava/net/DatagramPacket;
    .restart local v11       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v12       #sendSocket:Ljava/net/DatagramSocket;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->nodeNatted:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lde/javawi/jstun/test/DiscoveryInfo;->setOpenAccess()V

    .line 281
    :goto_3
    const/16 v17, 0x0

    goto :goto_2

    .line 279
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lde/javawi/jstun/test/DiscoveryInfo;->setFullCone()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 291
    .end local v2           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v3           #data:[B
    .end local v4           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .end local v5           #localAddress:Ljava/net/InetAddress;
    .end local v6           #localPort:I
    .end local v8           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v9           #receiveSocket:Ljava/net/DatagramSocket;
    .end local v10           #send:Ljava/net/DatagramPacket;
    .end local v11           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v12           #sendSocket:Ljava/net/DatagramSocket;
    .restart local v13       #ste:Ljava/net/SocketTimeoutException;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->nodeNatted:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lde/javawi/jstun/test/DiscoveryInfo;->setSymmetricUDPFirewall()V

    .line 293
    const/16 v17, 0x0

    goto :goto_2

    .line 298
    :cond_5
    const/16 v17, 0x1

    goto :goto_2
.end method

.method private test3()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;,
            Lde/javawi/jstun/attribute/MessageAttributeException;,
            Lde/javawi/jstun/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v14, 0x0

    .line 310
    .local v14, timeSinceFirstTransmission:I
    move-object/from16 v0, p0

    iget v15, v0, Lde/javawi/jstun/test/DiscoveryTest;->timeoutInitValue:I

    .line 314
    .local v15, timeout:I
    :cond_0
    :goto_0
    :try_start_0
    new-instance v12, Ljava/net/DatagramSocket;

    .line 315
    new-instance v17, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->iaddress:Ljava/net/InetAddress;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 314
    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 316
    .local v12, sendSocket:Ljava/net/DatagramSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->stunServer:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->port:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 317
    invoke-virtual {v12, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 319
    new-instance v11, Lde/javawi/jstun/header/MessageHeader;

    .line 320
    sget-object v17, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    .line 319
    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lde/javawi/jstun/header/MessageHeader;-><init>(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 321
    .local v11, sendMH:Lde/javawi/jstun/header/MessageHeader;
    invoke-virtual {v11}, Lde/javawi/jstun/header/MessageHeader;->generateTransactionID()V

    .line 323
    new-instance v2, Lde/javawi/jstun/attribute/ChangeRequest;

    invoke-direct {v2}, Lde/javawi/jstun/attribute/ChangeRequest;-><init>()V

    .line 324
    .local v2, changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    invoke-virtual {v2}, Lde/javawi/jstun/attribute/ChangeRequest;->setChangePort()V

    .line 325
    invoke-virtual {v11, v2}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 327
    invoke-virtual {v11}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v3

    .line 328
    .local v3, data:[B
    new-instance v10, Ljava/net/DatagramPacket;

    .line 329
    array-length v0, v3

    move/from16 v17, v0

    .line 328
    move/from16 v0, v17

    invoke-direct {v10, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 330
    .local v10, send:Ljava/net/DatagramPacket;
    invoke-virtual {v12, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 332
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v6

    .line 333
    .local v6, localPort:I
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 335
    .local v5, localAddress:Ljava/net/InetAddress;
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->close()V

    .line 337
    new-instance v9, Ljava/net/DatagramSocket;

    invoke-direct {v9, v6, v5}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 339
    .local v9, receiveSocket:Ljava/net/DatagramSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->stunServer:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->ca:Lde/javawi/jstun/attribute/ChangedAddress;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lde/javawi/jstun/attribute/ChangedAddress;->getPort()I

    move-result v18

    .line 339
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 341
    invoke-virtual {v9, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 343
    new-instance v8, Lde/javawi/jstun/header/MessageHeader;

    invoke-direct {v8}, Lde/javawi/jstun/header/MessageHeader;-><init>()V

    .line 344
    .local v8, receiveMH:Lde/javawi/jstun/header/MessageHeader;
    :goto_1
    invoke-virtual {v8, v11}, Lde/javawi/jstun/header/MessageHeader;->equalTransactionID(Lde/javawi/jstun/header/MessageHeader;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 352
    sget-object v17, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v4

    .line 351
    check-cast v4, Lde/javawi/jstun/attribute/ErrorCode;

    .line 353
    .local v4, ec:Lde/javawi/jstun/attribute/ErrorCode;
    if-eqz v4, :cond_3

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ErrorCode;->getResponseCode()I

    move-result v18

    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ErrorCode;->getReason()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lde/javawi/jstun/test/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 371
    .end local v2           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v3           #data:[B
    .end local v4           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .end local v5           #localAddress:Ljava/net/InetAddress;
    .end local v6           #localPort:I
    .end local v8           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v9           #receiveSocket:Ljava/net/DatagramSocket;
    .end local v10           #send:Ljava/net/DatagramPacket;
    .end local v11           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v12           #sendSocket:Ljava/net/DatagramSocket;
    :goto_2
    return-void

    .line 345
    .restart local v2       #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v3       #data:[B
    .restart local v5       #localAddress:Ljava/net/InetAddress;
    .restart local v6       #localPort:I
    .restart local v8       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v9       #receiveSocket:Ljava/net/DatagramSocket;
    .restart local v10       #send:Ljava/net/DatagramPacket;
    .restart local v11       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v12       #sendSocket:Ljava/net/DatagramSocket;
    :cond_1
    new-instance v7, Ljava/net/DatagramPacket;

    .line 346
    const/16 v17, 0xc8

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v18, 0xc8

    .line 345
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 347
    .local v7, receive:Ljava/net/DatagramPacket;
    invoke-virtual {v9, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 348
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lde/javawi/jstun/header/MessageHeader;->parseHeader([B)Lde/javawi/jstun/header/MessageHeader;

    move-result-object v8

    .line 349
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lde/javawi/jstun/header/MessageHeader;->parseAttributes([B)V

    goto :goto_1

    .line 361
    .end local v2           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v3           #data:[B
    .end local v5           #localAddress:Ljava/net/InetAddress;
    .end local v6           #localPort:I
    .end local v7           #receive:Ljava/net/DatagramPacket;
    .end local v8           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v9           #receiveSocket:Ljava/net/DatagramSocket;
    .end local v10           #send:Ljava/net/DatagramPacket;
    .end local v11           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v12           #sendSocket:Ljava/net/DatagramSocket;
    :catch_0
    move-exception v13

    .line 362
    .local v13, ste:Ljava/net/SocketTimeoutException;
    const/16 v17, 0x1edc

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 363
    add-int/2addr v14, v15

    .line 364
    mul-int/lit8 v16, v14, 0x2

    .line 365
    .local v16, timeoutAddValue:I
    const/16 v17, 0x640

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 366
    const/16 v16, 0x640

    .line 368
    :cond_2
    move/from16 v15, v16

    goto/16 :goto_0

    .line 357
    .end local v13           #ste:Ljava/net/SocketTimeoutException;
    .end local v16           #timeoutAddValue:I
    .restart local v2       #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v3       #data:[B
    .restart local v4       #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .restart local v5       #localAddress:Ljava/net/InetAddress;
    .restart local v6       #localPort:I
    .restart local v8       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v9       #receiveSocket:Ljava/net/DatagramSocket;
    .restart local v10       #send:Ljava/net/DatagramPacket;
    .restart local v11       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v12       #sendSocket:Ljava/net/DatagramSocket;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->nodeNatted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lde/javawi/jstun/test/DiscoveryInfo;->setRestrictedCone()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 370
    .end local v2           #changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v3           #data:[B
    .end local v4           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    .end local v5           #localAddress:Ljava/net/InetAddress;
    .end local v6           #localPort:I
    .end local v8           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v9           #receiveSocket:Ljava/net/DatagramSocket;
    .end local v10           #send:Ljava/net/DatagramPacket;
    .end local v11           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v12           #sendSocket:Ljava/net/DatagramSocket;
    .restart local v13       #ste:Ljava/net/SocketTimeoutException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lde/javawi/jstun/test/DiscoveryInfo;->setPortRestrictedCone()V

    goto :goto_2
.end method


# virtual methods
.method public test()Lde/javawi/jstun/test/DiscoveryInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;,
            Lde/javawi/jstun/attribute/MessageAttributeException;,
            Lde/javawi/jstun/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lde/javawi/jstun/test/DiscoveryTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    .line 57
    iput-object v1, p0, Lde/javawi/jstun/test/DiscoveryTest;->ca:Lde/javawi/jstun/attribute/ChangedAddress;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/test/DiscoveryTest;->nodeNatted:Z

    .line 59
    iput-object v1, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    .line 60
    new-instance v0, Lde/javawi/jstun/test/DiscoveryInfo;

    iget-object v1, p0, Lde/javawi/jstun/test/DiscoveryTest;->iaddress:Ljava/net/InetAddress;

    invoke-direct {v0, v1}, Lde/javawi/jstun/test/DiscoveryInfo;-><init>(Ljava/net/InetAddress;)V

    iput-object v0, p0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    .line 62
    invoke-direct {p0}, Lde/javawi/jstun/test/DiscoveryTest;->test1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lde/javawi/jstun/test/DiscoveryTest;->test2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lde/javawi/jstun/test/DiscoveryTest;->test1Redo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lde/javawi/jstun/test/DiscoveryTest;->test3()V

    .line 70
    :cond_0
    iget-object v0, p0, Lde/javawi/jstun/test/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 72
    iget-object v0, p0, Lde/javawi/jstun/test/DiscoveryTest;->di:Lde/javawi/jstun/test/DiscoveryInfo;

    return-object v0
.end method
