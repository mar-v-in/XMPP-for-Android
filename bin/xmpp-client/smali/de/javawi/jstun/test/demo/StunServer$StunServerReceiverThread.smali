.class Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;
.super Ljava/lang/Thread;
.source "StunServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/javawi/jstun/test/demo/StunServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StunServerReceiverThread"
.end annotation


# instance fields
.field private changedIP:Ljava/net/DatagramSocket;

.field private changedPort:Ljava/net/DatagramSocket;

.field private changedPortIP:Ljava/net/DatagramSocket;

.field private final receiverSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lde/javawi/jstun/test/demo/StunServer;


# direct methods
.method constructor <init>(Lde/javawi/jstun/test/demo/StunServer;Ljava/net/DatagramSocket;)V
    .locals 4
    .parameter
    .parameter "datagramSocket"

    .prologue
    .line 61
    iput-object p1, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->this$0:Lde/javawi/jstun/test/demo/StunServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    iput-object p2, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    .line 63
    iget-object v1, p1, Lde/javawi/jstun/test/demo/StunServer;->sockets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    return-void

    .line 63
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    .line 64
    .local v0, socket:Ljava/net/DatagramSocket;
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    iget-object v3, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 65
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    .line 66
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    iput-object v0, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedPort:Ljava/net/DatagramSocket;

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    iget-object v3, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 70
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 72
    iput-object v0, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedIP:Ljava/net/DatagramSocket;

    .line 74
    :cond_3
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    iget-object v3, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iput-object v0, p0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedPortIP:Ljava/net/DatagramSocket;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 86
    :cond_0
    :goto_0
    :try_start_0
    new-instance v12, Ljava/net/DatagramPacket;

    .line 87
    const/16 v20, 0xc8

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/16 v21, 0xc8

    .line 86
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 88
    .local v12, receive:Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 90
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lde/javawi/jstun/header/MessageHeader;->parseHeader([B)Lde/javawi/jstun/header/MessageHeader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lde/javawi/jstun/attribute/MessageAttributeParsingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lde/javawi/jstun/header/MessageHeaderParsingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v13

    .line 92
    .local v13, receiveMH:Lde/javawi/jstun/header/MessageHeader;
    :try_start_1
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/javawi/jstun/header/MessageHeader;->parseAttributes([B)V

    .line 93
    invoke-virtual {v13}, Lde/javawi/jstun/header/MessageHeader;->getType()Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    move-result-object v20

    sget-object v21, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 95
    sget-object v20, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ChangeRequest:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v4

    .line 94
    check-cast v4, Lde/javawi/jstun/attribute/ChangeRequest;

    .line 96
    .local v4, cr:Lde/javawi/jstun/attribute/ChangeRequest;
    if-nez v4, :cond_1

    .line 97
    new-instance v20, Lde/javawi/jstun/attribute/MessageAttributeException;

    .line 98
    const-string v21, "Message attribute change request is not set."

    .line 97
    invoke-direct/range {v20 .. v21}, Lde/javawi/jstun/attribute/MessageAttributeException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catch Lde/javawi/jstun/attribute/UnknownMessageAttributeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lde/javawi/jstun/attribute/MessageAttributeParsingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lde/javawi/jstun/header/MessageHeaderParsingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 199
    .end local v4           #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    :catch_0
    move-exception v19

    .line 200
    .local v19, umae:Lde/javawi/jstun/attribute/UnknownMessageAttributeException;
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lde/javawi/jstun/attribute/UnknownMessageAttributeException;->printStackTrace()V

    .line 202
    new-instance v16, Lde/javawi/jstun/header/MessageHeader;

    .line 203
    sget-object v20, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    .line 202
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lde/javawi/jstun/header/MessageHeader;-><init>(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 204
    .local v16, sendMH:Lde/javawi/jstun/header/MessageHeader;
    invoke-virtual {v13}, Lde/javawi/jstun/header/MessageHeader;->getTransactionID()[B

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lde/javawi/jstun/header/MessageHeader;->setTransactionID([B)V

    .line 207
    new-instance v17, Lde/javawi/jstun/attribute/UnknownAttribute;

    invoke-direct/range {v17 .. v17}, Lde/javawi/jstun/attribute/UnknownAttribute;-><init>()V

    .line 208
    .local v17, ua:Lde/javawi/jstun/attribute/UnknownAttribute;
    invoke-virtual/range {v19 .. v19}, Lde/javawi/jstun/attribute/UnknownMessageAttributeException;->getType()Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lde/javawi/jstun/attribute/UnknownAttribute;->addAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 209
    invoke-virtual/range {v16 .. v17}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 211
    invoke-virtual/range {v16 .. v16}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v5

    .line 212
    .local v5, data:[B
    new-instance v15, Ljava/net/DatagramPacket;

    .line 213
    array-length v0, v5

    move/from16 v20, v0

    .line 212
    move/from16 v0, v20

    invoke-direct {v15, v5, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 214
    .local v15, send:Ljava/net/DatagramPacket;
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 215
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lde/javawi/jstun/attribute/MessageAttributeParsingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lde/javawi/jstun/header/MessageHeaderParsingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_0

    .line 218
    .end local v5           #data:[B
    .end local v12           #receive:Ljava/net/DatagramPacket;
    .end local v13           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v15           #send:Ljava/net/DatagramPacket;
    .end local v16           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v17           #ua:Lde/javawi/jstun/attribute/UnknownAttribute;
    .end local v19           #umae:Lde/javawi/jstun/attribute/UnknownMessageAttributeException;
    :catch_1
    move-exception v6

    .line 219
    .local v6, ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 101
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v4       #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v12       #receive:Ljava/net/DatagramPacket;
    .restart local v13       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    :cond_1
    :try_start_3
    sget-object v20, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ResponseAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v11

    .line 100
    check-cast v11, Lde/javawi/jstun/attribute/ResponseAddress;

    .line 103
    .local v11, ra:Lde/javawi/jstun/attribute/ResponseAddress;
    new-instance v16, Lde/javawi/jstun/header/MessageHeader;

    .line 104
    sget-object v20, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    .line 103
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lde/javawi/jstun/header/MessageHeader;-><init>(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 106
    .restart local v16       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    invoke-virtual {v13}, Lde/javawi/jstun/header/MessageHeader;->getTransactionID()[B

    move-result-object v20

    .line 105
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lde/javawi/jstun/header/MessageHeader;->setTransactionID([B)V

    .line 109
    new-instance v7, Lde/javawi/jstun/attribute/MappedAddress;

    invoke-direct {v7}, Lde/javawi/jstun/attribute/MappedAddress;-><init>()V

    .line 110
    .local v7, ma:Lde/javawi/jstun/attribute/MappedAddress;
    new-instance v20, Lde/javawi/jstun/util/Address;

    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v21

    .line 111
    invoke-virtual/range {v21 .. v21}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lde/javawi/jstun/util/Address;-><init>([B)V

    .line 110
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lde/javawi/jstun/attribute/MappedAddress;->setAddress(Lde/javawi/jstun/util/Address;)V

    .line 112
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lde/javawi/jstun/attribute/MappedAddress;->setPort(I)V

    .line 113
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 115
    new-instance v3, Lde/javawi/jstun/attribute/ChangedAddress;

    invoke-direct {v3}, Lde/javawi/jstun/attribute/ChangedAddress;-><init>()V

    .line 116
    .local v3, ca:Lde/javawi/jstun/attribute/ChangedAddress;
    new-instance v20, Lde/javawi/jstun/util/Address;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedPortIP:Ljava/net/DatagramSocket;

    move-object/from16 v21, v0

    .line 117
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lde/javawi/jstun/util/Address;-><init>([B)V

    .line 116
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lde/javawi/jstun/attribute/ChangedAddress;->setAddress(Lde/javawi/jstun/util/Address;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedPortIP:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lde/javawi/jstun/attribute/ChangedAddress;->setPort(I)V

    .line 119
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 120
    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ChangeRequest;->isChangePort()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ChangeRequest;->isChangeIP()Z

    move-result v20

    if-nez v20, :cond_3

    .line 122
    new-instance v14, Lde/javawi/jstun/attribute/SourceAddress;

    invoke-direct {v14}, Lde/javawi/jstun/attribute/SourceAddress;-><init>()V

    .line 123
    .local v14, sa:Lde/javawi/jstun/attribute/SourceAddress;
    new-instance v20, Lde/javawi/jstun/util/Address;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedPort:Ljava/net/DatagramSocket;

    move-object/from16 v21, v0

    .line 124
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lde/javawi/jstun/util/Address;-><init>([B)V

    .line 123
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lde/javawi/jstun/attribute/SourceAddress;->setAddress(Lde/javawi/jstun/util/Address;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedPort:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lde/javawi/jstun/attribute/SourceAddress;->setPort(I)V

    .line 126
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 127
    invoke-virtual/range {v16 .. v16}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v5

    .line 128
    .restart local v5       #data:[B
    new-instance v15, Ljava/net/DatagramPacket;

    .line 129
    array-length v0, v5

    move/from16 v20, v0

    .line 128
    move/from16 v0, v20

    invoke-direct {v15, v5, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 130
    .restart local v15       #send:Ljava/net/DatagramPacket;
    if-eqz v11, :cond_2

    .line 131
    invoke-virtual {v11}, Lde/javawi/jstun/attribute/ResponseAddress;->getPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 132
    invoke-virtual {v11}, Lde/javawi/jstun/attribute/ResponseAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v20

    .line 133
    invoke-virtual/range {v20 .. v20}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v20

    .line 132
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 138
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedPort:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Lde/javawi/jstun/attribute/UnknownMessageAttributeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lde/javawi/jstun/attribute/MessageAttributeParsingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lde/javawi/jstun/header/MessageHeaderParsingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_0

    .line 220
    .end local v3           #ca:Lde/javawi/jstun/attribute/ChangedAddress;
    .end local v4           #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v5           #data:[B
    .end local v7           #ma:Lde/javawi/jstun/attribute/MappedAddress;
    .end local v11           #ra:Lde/javawi/jstun/attribute/ResponseAddress;
    .end local v12           #receive:Ljava/net/DatagramPacket;
    .end local v13           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v14           #sa:Lde/javawi/jstun/attribute/SourceAddress;
    .end local v15           #send:Ljava/net/DatagramPacket;
    .end local v16           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :catch_2
    move-exception v9

    .line 221
    .local v9, mape:Lde/javawi/jstun/attribute/MessageAttributeParsingException;
    invoke-virtual {v9}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;->printStackTrace()V

    goto/16 :goto_0

    .line 135
    .end local v9           #mape:Lde/javawi/jstun/attribute/MessageAttributeParsingException;
    .restart local v3       #ca:Lde/javawi/jstun/attribute/ChangedAddress;
    .restart local v4       #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v5       #data:[B
    .restart local v7       #ma:Lde/javawi/jstun/attribute/MappedAddress;
    .restart local v11       #ra:Lde/javawi/jstun/attribute/ResponseAddress;
    .restart local v12       #receive:Ljava/net/DatagramPacket;
    .restart local v13       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v14       #sa:Lde/javawi/jstun/attribute/SourceAddress;
    .restart local v15       #send:Ljava/net/DatagramPacket;
    .restart local v16       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :cond_2
    :try_start_4
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 136
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_4
    .catch Lde/javawi/jstun/attribute/UnknownMessageAttributeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lde/javawi/jstun/attribute/MessageAttributeParsingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lde/javawi/jstun/header/MessageHeaderParsingException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 222
    .end local v3           #ca:Lde/javawi/jstun/attribute/ChangedAddress;
    .end local v4           #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v5           #data:[B
    .end local v7           #ma:Lde/javawi/jstun/attribute/MappedAddress;
    .end local v11           #ra:Lde/javawi/jstun/attribute/ResponseAddress;
    .end local v12           #receive:Ljava/net/DatagramPacket;
    .end local v13           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v14           #sa:Lde/javawi/jstun/attribute/SourceAddress;
    .end local v15           #send:Ljava/net/DatagramPacket;
    .end local v16           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :catch_3
    move-exception v8

    .line 223
    .local v8, mae:Lde/javawi/jstun/attribute/MessageAttributeException;
    invoke-virtual {v8}, Lde/javawi/jstun/attribute/MessageAttributeException;->printStackTrace()V

    goto/16 :goto_0

    .line 139
    .end local v8           #mae:Lde/javawi/jstun/attribute/MessageAttributeException;
    .restart local v3       #ca:Lde/javawi/jstun/attribute/ChangedAddress;
    .restart local v4       #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v7       #ma:Lde/javawi/jstun/attribute/MappedAddress;
    .restart local v11       #ra:Lde/javawi/jstun/attribute/ResponseAddress;
    .restart local v12       #receive:Ljava/net/DatagramPacket;
    .restart local v13       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v16       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :cond_3
    :try_start_5
    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ChangeRequest;->isChangePort()Z

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ChangeRequest;->isChangeIP()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 141
    new-instance v14, Lde/javawi/jstun/attribute/SourceAddress;

    invoke-direct {v14}, Lde/javawi/jstun/attribute/SourceAddress;-><init>()V

    .line 142
    .restart local v14       #sa:Lde/javawi/jstun/attribute/SourceAddress;
    new-instance v20, Lde/javawi/jstun/util/Address;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedIP:Ljava/net/DatagramSocket;

    move-object/from16 v21, v0

    .line 143
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lde/javawi/jstun/util/Address;-><init>([B)V

    .line 142
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lde/javawi/jstun/attribute/SourceAddress;->setAddress(Lde/javawi/jstun/util/Address;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedIP:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lde/javawi/jstun/attribute/SourceAddress;->setPort(I)V

    .line 145
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 146
    invoke-virtual/range {v16 .. v16}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v5

    .line 147
    .restart local v5       #data:[B
    new-instance v15, Ljava/net/DatagramPacket;

    .line 148
    array-length v0, v5

    move/from16 v20, v0

    .line 147
    move/from16 v0, v20

    invoke-direct {v15, v5, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 149
    .restart local v15       #send:Ljava/net/DatagramPacket;
    if-eqz v11, :cond_4

    .line 150
    invoke-virtual {v11}, Lde/javawi/jstun/attribute/ResponseAddress;->getPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 151
    invoke-virtual {v11}, Lde/javawi/jstun/attribute/ResponseAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v20

    .line 152
    invoke-virtual/range {v20 .. v20}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v20

    .line 151
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 157
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedIP:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_5
    .catch Lde/javawi/jstun/attribute/UnknownMessageAttributeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lde/javawi/jstun/attribute/MessageAttributeParsingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lde/javawi/jstun/header/MessageHeaderParsingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    .line 224
    .end local v3           #ca:Lde/javawi/jstun/attribute/ChangedAddress;
    .end local v4           #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v5           #data:[B
    .end local v7           #ma:Lde/javawi/jstun/attribute/MappedAddress;
    .end local v11           #ra:Lde/javawi/jstun/attribute/ResponseAddress;
    .end local v12           #receive:Ljava/net/DatagramPacket;
    .end local v13           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v14           #sa:Lde/javawi/jstun/attribute/SourceAddress;
    .end local v15           #send:Ljava/net/DatagramPacket;
    .end local v16           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :catch_4
    move-exception v10

    .line 225
    .local v10, mhpe:Lde/javawi/jstun/header/MessageHeaderParsingException;
    invoke-virtual {v10}, Lde/javawi/jstun/header/MessageHeaderParsingException;->printStackTrace()V

    goto/16 :goto_0

    .line 154
    .end local v10           #mhpe:Lde/javawi/jstun/header/MessageHeaderParsingException;
    .restart local v3       #ca:Lde/javawi/jstun/attribute/ChangedAddress;
    .restart local v4       #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v5       #data:[B
    .restart local v7       #ma:Lde/javawi/jstun/attribute/MappedAddress;
    .restart local v11       #ra:Lde/javawi/jstun/attribute/ResponseAddress;
    .restart local v12       #receive:Ljava/net/DatagramPacket;
    .restart local v13       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v14       #sa:Lde/javawi/jstun/attribute/SourceAddress;
    .restart local v15       #send:Ljava/net/DatagramPacket;
    .restart local v16       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :cond_4
    :try_start_6
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 155
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_6
    .catch Lde/javawi/jstun/attribute/UnknownMessageAttributeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lde/javawi/jstun/attribute/MessageAttributeParsingException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lde/javawi/jstun/header/MessageHeaderParsingException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    .line 226
    .end local v3           #ca:Lde/javawi/jstun/attribute/ChangedAddress;
    .end local v4           #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v5           #data:[B
    .end local v7           #ma:Lde/javawi/jstun/attribute/MappedAddress;
    .end local v11           #ra:Lde/javawi/jstun/attribute/ResponseAddress;
    .end local v12           #receive:Ljava/net/DatagramPacket;
    .end local v13           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v14           #sa:Lde/javawi/jstun/attribute/SourceAddress;
    .end local v15           #send:Ljava/net/DatagramPacket;
    .end local v16           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :catch_5
    move-exception v18

    .line 227
    .local v18, ue:Lde/javawi/jstun/util/UtilityException;
    invoke-virtual/range {v18 .. v18}, Lde/javawi/jstun/util/UtilityException;->printStackTrace()V

    goto/16 :goto_0

    .line 158
    .end local v18           #ue:Lde/javawi/jstun/util/UtilityException;
    .restart local v3       #ca:Lde/javawi/jstun/attribute/ChangedAddress;
    .restart local v4       #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v7       #ma:Lde/javawi/jstun/attribute/MappedAddress;
    .restart local v11       #ra:Lde/javawi/jstun/attribute/ResponseAddress;
    .restart local v12       #receive:Ljava/net/DatagramPacket;
    .restart local v13       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v16       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :cond_5
    :try_start_7
    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ChangeRequest;->isChangePort()Z

    move-result v20

    if-nez v20, :cond_7

    .line 159
    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ChangeRequest;->isChangeIP()Z

    move-result v20

    if-nez v20, :cond_7

    .line 161
    new-instance v14, Lde/javawi/jstun/attribute/SourceAddress;

    invoke-direct {v14}, Lde/javawi/jstun/attribute/SourceAddress;-><init>()V

    .line 162
    .restart local v14       #sa:Lde/javawi/jstun/attribute/SourceAddress;
    new-instance v20, Lde/javawi/jstun/util/Address;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v21, v0

    .line 163
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lde/javawi/jstun/util/Address;-><init>([B)V

    .line 162
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lde/javawi/jstun/attribute/SourceAddress;->setAddress(Lde/javawi/jstun/util/Address;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lde/javawi/jstun/attribute/SourceAddress;->setPort(I)V

    .line 165
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 166
    invoke-virtual/range {v16 .. v16}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v5

    .line 167
    .restart local v5       #data:[B
    new-instance v15, Ljava/net/DatagramPacket;

    .line 168
    array-length v0, v5

    move/from16 v20, v0

    .line 167
    move/from16 v0, v20

    invoke-direct {v15, v5, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 169
    .restart local v15       #send:Ljava/net/DatagramPacket;
    if-eqz v11, :cond_6

    .line 170
    invoke-virtual {v11}, Lde/javawi/jstun/attribute/ResponseAddress;->getPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 171
    invoke-virtual {v11}, Lde/javawi/jstun/attribute/ResponseAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v20

    .line 172
    invoke-virtual/range {v20 .. v20}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v20

    .line 171
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 177
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->receiverSocket:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_7
    .catch Lde/javawi/jstun/attribute/UnknownMessageAttributeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lde/javawi/jstun/attribute/MessageAttributeParsingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lde/javawi/jstun/header/MessageHeaderParsingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 228
    .end local v3           #ca:Lde/javawi/jstun/attribute/ChangedAddress;
    .end local v4           #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .end local v5           #data:[B
    .end local v7           #ma:Lde/javawi/jstun/attribute/MappedAddress;
    .end local v11           #ra:Lde/javawi/jstun/attribute/ResponseAddress;
    .end local v12           #receive:Ljava/net/DatagramPacket;
    .end local v13           #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .end local v14           #sa:Lde/javawi/jstun/attribute/SourceAddress;
    .end local v15           #send:Ljava/net/DatagramPacket;
    .end local v16           #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :catch_6
    move-exception v2

    .line 229
    .local v2, aioobe:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 174
    .end local v2           #aioobe:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v3       #ca:Lde/javawi/jstun/attribute/ChangedAddress;
    .restart local v4       #cr:Lde/javawi/jstun/attribute/ChangeRequest;
    .restart local v5       #data:[B
    .restart local v7       #ma:Lde/javawi/jstun/attribute/MappedAddress;
    .restart local v11       #ra:Lde/javawi/jstun/attribute/ResponseAddress;
    .restart local v12       #receive:Ljava/net/DatagramPacket;
    .restart local v13       #receiveMH:Lde/javawi/jstun/header/MessageHeader;
    .restart local v14       #sa:Lde/javawi/jstun/attribute/SourceAddress;
    .restart local v15       #send:Ljava/net/DatagramPacket;
    .restart local v16       #sendMH:Lde/javawi/jstun/header/MessageHeader;
    :cond_6
    :try_start_8
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 175
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 178
    .end local v5           #data:[B
    .end local v14           #sa:Lde/javawi/jstun/attribute/SourceAddress;
    .end local v15           #send:Ljava/net/DatagramPacket;
    :cond_7
    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ChangeRequest;->isChangePort()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual {v4}, Lde/javawi/jstun/attribute/ChangeRequest;->isChangeIP()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 180
    new-instance v14, Lde/javawi/jstun/attribute/SourceAddress;

    invoke-direct {v14}, Lde/javawi/jstun/attribute/SourceAddress;-><init>()V

    .line 181
    .restart local v14       #sa:Lde/javawi/jstun/attribute/SourceAddress;
    new-instance v20, Lde/javawi/jstun/util/Address;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedPortIP:Ljava/net/DatagramSocket;

    move-object/from16 v21, v0

    .line 182
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lde/javawi/jstun/util/Address;-><init>([B)V

    .line 181
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lde/javawi/jstun/attribute/SourceAddress;->setAddress(Lde/javawi/jstun/util/Address;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedPortIP:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lde/javawi/jstun/attribute/SourceAddress;->setPort(I)V

    .line 184
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 185
    invoke-virtual/range {v16 .. v16}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v5

    .line 186
    .restart local v5       #data:[B
    new-instance v15, Ljava/net/DatagramPacket;

    .line 187
    array-length v0, v5

    move/from16 v20, v0

    .line 186
    move/from16 v0, v20

    invoke-direct {v15, v5, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 188
    .restart local v15       #send:Ljava/net/DatagramPacket;
    if-eqz v11, :cond_8

    .line 189
    invoke-virtual {v11}, Lde/javawi/jstun/attribute/ResponseAddress;->getPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 190
    invoke-virtual {v11}, Lde/javawi/jstun/attribute/ResponseAddress;->getAddress()Lde/javawi/jstun/util/Address;

    move-result-object v20

    .line 191
    invoke-virtual/range {v20 .. v20}, Lde/javawi/jstun/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v20

    .line 190
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 196
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/StunServer$StunServerReceiverThread;->changedPortIP:Ljava/net/DatagramSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    goto/16 :goto_0

    .line 193
    :cond_8
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getPort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 194
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_8
    .catch Lde/javawi/jstun/attribute/UnknownMessageAttributeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lde/javawi/jstun/attribute/MessageAttributeParsingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lde/javawi/jstun/header/MessageHeaderParsingException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4
.end method
