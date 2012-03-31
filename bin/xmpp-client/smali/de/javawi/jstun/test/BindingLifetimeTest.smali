.class public Lde/javawi/jstun/test/BindingLifetimeTest;
.super Ljava/lang/Object;
.source "BindingLifetimeTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;
    }
.end annotation


# instance fields
.field binarySearchLifetime:I

.field completed:Z

.field initialSocket:Ljava/net/DatagramSocket;

.field lifetime:I

.field lowerBinarySearchLifetime:I

.field ma:Lde/javawi/jstun/attribute/MappedAddress;

.field port:I

.field stunServer:Ljava/lang/String;

.field timeout:I

.field timer:Ljava/util/Timer;

.field upperBinarySearchLifetime:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "stunServer"
    .parameter "port"

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/16 v0, 0x12c

    iput v0, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->timeout:I

    .line 128
    const v0, 0x543a8

    iput v0, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->upperBinarySearchLifetime:I

    .line 129
    iput v2, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->lowerBinarySearchLifetime:I

    .line 131
    iget v0, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->upperBinarySearchLifetime:I

    iget v1, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->lowerBinarySearchLifetime:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->lifetime:I

    .line 135
    iput-boolean v2, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->completed:Z

    .line 139
    iput-object p1, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->stunServer:Ljava/lang/String;

    .line 140
    iput p2, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->port:I

    .line 141
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->timer:Ljava/util/Timer;

    .line 142
    return-void
.end method

.method static synthetic access$0(Lde/javawi/jstun/test/BindingLifetimeTest;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;,
            Ljava/io/IOException;,
            Lde/javawi/jstun/header/MessageHeaderParsingException;,
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Lde/javawi/jstun/test/BindingLifetimeTest;->bindingCommunicationInitialSocket()Z

    move-result v0

    return v0
.end method

.method private bindingCommunicationInitialSocket()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;,
            Ljava/io/IOException;,
            Lde/javawi/jstun/header/MessageHeaderParsingException;,
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xc8

    const/4 v8, 0x1

    .line 147
    new-instance v6, Lde/javawi/jstun/header/MessageHeader;

    .line 148
    sget-object v7, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    .line 147
    invoke-direct {v6, v7}, Lde/javawi/jstun/header/MessageHeader;-><init>(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 149
    .local v6, sendMH:Lde/javawi/jstun/header/MessageHeader;
    invoke-virtual {v6}, Lde/javawi/jstun/header/MessageHeader;->generateTransactionID()V

    .line 150
    new-instance v0, Lde/javawi/jstun/attribute/ChangeRequest;

    invoke-direct {v0}, Lde/javawi/jstun/attribute/ChangeRequest;-><init>()V

    .line 151
    .local v0, changeRequest:Lde/javawi/jstun/attribute/ChangeRequest;
    invoke-virtual {v6, v0}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 152
    invoke-virtual {v6}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v1

    .line 154
    .local v1, data:[B
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v7, v1

    .line 155
    iget-object v9, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->stunServer:Ljava/lang/String;

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    iget v10, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->port:I

    .line 154
    invoke-direct {v5, v1, v7, v9, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 156
    .local v5, send:Ljava/net/DatagramPacket;
    iget-object v7, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->initialSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 158
    new-instance v4, Lde/javawi/jstun/header/MessageHeader;

    invoke-direct {v4}, Lde/javawi/jstun/header/MessageHeader;-><init>()V

    .line 159
    .local v4, receiveMH:Lde/javawi/jstun/header/MessageHeader;
    :goto_0
    invoke-virtual {v4, v6}, Lde/javawi/jstun/header/MessageHeader;->equalTransactionID(Lde/javawi/jstun/header/MessageHeader;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 167
    sget-object v7, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v4, v7}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v7

    check-cast v7, Lde/javawi/jstun/attribute/MappedAddress;

    .line 166
    iput-object v7, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    .line 169
    sget-object v7, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v4, v7}, Lde/javawi/jstun/header/MessageHeader;->getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v2

    .line 168
    check-cast v2, Lde/javawi/jstun/attribute/ErrorCode;

    .line 170
    .local v2, ec:Lde/javawi/jstun/attribute/ErrorCode;
    if-eqz v2, :cond_1

    move v7, v8

    .line 176
    :goto_1
    return v7

    .line 160
    .end local v2           #ec:Lde/javawi/jstun/attribute/ErrorCode;
    :cond_0
    new-instance v3, Ljava/net/DatagramPacket;

    new-array v7, v11, [B

    invoke-direct {v3, v7, v11}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 162
    .local v3, receive:Ljava/net/DatagramPacket;
    iget-object v7, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->initialSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 163
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    invoke-static {v7}, Lde/javawi/jstun/header/MessageHeader;->parseHeader([B)Lde/javawi/jstun/header/MessageHeader;

    move-result-object v4

    .line 164
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lde/javawi/jstun/header/MessageHeader;->parseAttributes([B)V

    goto :goto_0

    .line 173
    .end local v3           #receive:Ljava/net/DatagramPacket;
    .restart local v2       #ec:Lde/javawi/jstun/attribute/ErrorCode;
    :cond_1
    iget-object v7, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->ma:Lde/javawi/jstun/attribute/MappedAddress;

    if-nez v7, :cond_2

    move v7, v8

    .line 174
    goto :goto_1

    .line 176
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getLifetime()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->lifetime:I

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->completed:Z

    return v0
.end method

.method public setUpperBinarySearchLifetime(I)V
    .locals 1
    .parameter "upperBinarySearchLifetime"

    .prologue
    .line 188
    iput p1, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->upperBinarySearchLifetime:I

    .line 189
    iget v0, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->lowerBinarySearchLifetime:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    .line 190
    return-void
.end method

.method public test()V
    .locals 4
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
    .line 196
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->initialSocket:Ljava/net/DatagramSocket;

    .line 197
    iget-object v1, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->initialSocket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->stunServer:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget v3, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->port:I

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 198
    iget-object v1, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->initialSocket:Ljava/net/DatagramSocket;

    iget v2, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->timeout:I

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 200
    invoke-direct {p0}, Lde/javawi/jstun/test/BindingLifetimeTest;->bindingCommunicationInitialSocket()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v0, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;

    invoke-direct {v0, p0}, Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;-><init>(Lde/javawi/jstun/test/BindingLifetimeTest;)V

    .line 204
    .local v0, task:Lde/javawi/jstun/test/BindingLifetimeTest$BindingLifetimeTask;
    iget-object v1, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->timer:Ljava/util/Timer;

    iget v2, p0, Lde/javawi/jstun/test/BindingLifetimeTest;->binarySearchLifetime:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
