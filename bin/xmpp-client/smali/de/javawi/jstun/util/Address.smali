.class public Lde/javawi/jstun/util/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field firstOctet:I

.field fourthOctet:I

.field secondOctet:I

.field thirdOctet:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .parameter "firstOctet"
    .parameter "secondOctet"
    .parameter "thirdOctet"
    .parameter "fourthOctet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    const/16 v0, 0xff

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    .line 37
    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    .line 38
    if-gt p3, v0, :cond_0

    if-ltz p4, :cond_0

    .line 39
    if-le p4, v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Lde/javawi/jstun/util/UtilityException;

    const-string v1, "Address is malformed."

    invoke-direct {v0, v1}, Lde/javawi/jstun/util/UtilityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iput p1, p0, Lde/javawi/jstun/util/Address;->firstOctet:I

    .line 43
    iput p2, p0, Lde/javawi/jstun/util/Address;->secondOctet:I

    .line 44
    iput p3, p0, Lde/javawi/jstun/util/Address;->thirdOctet:I

    .line 45
    iput p4, p0, Lde/javawi/jstun/util/Address;->fourthOctet:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v1, st:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 51
    new-instance v3, Lde/javawi/jstun/util/UtilityException;

    .line 52
    const-string v4, "4 octets in address string are required."

    .line 51
    invoke-direct {v3, v4}, Lde/javawi/jstun/util/UtilityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    return-void

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 57
    .local v2, temp:I
    if-ltz v2, :cond_2

    const/16 v3, 0xff

    if-le v2, v3, :cond_3

    .line 58
    :cond_2
    new-instance v3, Lde/javawi/jstun/util/UtilityException;

    const-string v4, "Address is in incorrect format."

    invoke-direct {v3, v4}, Lde/javawi/jstun/util/UtilityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 62
    :pswitch_0
    iput v2, p0, Lde/javawi/jstun/util/Address;->firstOctet:I

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    goto :goto_0

    .line 66
    :pswitch_1
    iput v2, p0, Lde/javawi/jstun/util/Address;->secondOctet:I

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 70
    :pswitch_2
    iput v2, p0, Lde/javawi/jstun/util/Address;->thirdOctet:I

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    goto :goto_0

    .line 74
    :pswitch_3
    iput v2, p0, Lde/javawi/jstun/util/Address;->fourthOctet:I

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 26
    new-instance v0, Lde/javawi/jstun/util/UtilityException;

    const-string v1, "4 bytes are required."

    invoke-direct {v0, v1}, Lde/javawi/jstun/util/UtilityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->oneByteToInteger(B)I

    move-result v0

    iput v0, p0, Lde/javawi/jstun/util/Address;->firstOctet:I

    .line 29
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->oneByteToInteger(B)I

    move-result v0

    iput v0, p0, Lde/javawi/jstun/util/Address;->secondOctet:I

    .line 30
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->oneByteToInteger(B)I

    move-result v0

    iput v0, p0, Lde/javawi/jstun/util/Address;->thirdOctet:I

    .line 31
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->oneByteToInteger(B)I

    move-result v0

    iput v0, p0, Lde/javawi/jstun/util/Address;->fourthOctet:I

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    if-nez p1, :cond_1

    .line 95
    .end local p1
    :cond_0
    :goto_0
    return v3

    .line 87
    .restart local p1
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lde/javawi/jstun/util/Address;->getBytes()[B

    move-result-object v0

    .line 88
    .local v0, data1:[B
    check-cast p1, Lde/javawi/jstun/util/Address;

    .end local p1
    invoke-virtual {p1}, Lde/javawi/jstun/util/Address;->getBytes()[B

    move-result-object v1

    .line 89
    .local v1, data2:[B
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    if-ne v5, v6, :cond_0

    .line 90
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x3

    aget-byte v5, v0, v5

    const/4 v6, 0x3

    aget-byte v6, v1, v6
    :try_end_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_0

    move v3, v4

    .line 91
    goto :goto_0

    .line 94
    .end local v0           #data1:[B
    .end local v1           #data2:[B
    :catch_0
    move-exception v2

    .line 95
    .local v2, ue:Lde/javawi/jstun/util/UtilityException;
    goto :goto_0
.end method

.method public getBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 101
    .local v0, result:[B
    const/4 v1, 0x0

    iget v2, p0, Lde/javawi/jstun/util/Address;->firstOctet:I

    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 102
    const/4 v1, 0x1

    iget v2, p0, Lde/javawi/jstun/util/Address;->secondOctet:I

    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 103
    const/4 v1, 0x2

    iget v2, p0, Lde/javawi/jstun/util/Address;->thirdOctet:I

    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 104
    const/4 v1, 0x3

    iget v2, p0, Lde/javawi/jstun/util/Address;->fourthOctet:I

    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 105
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 111
    .local v0, address:[B
    const/4 v1, 0x0

    iget v2, p0, Lde/javawi/jstun/util/Address;->firstOctet:I

    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 112
    const/4 v1, 0x1

    iget v2, p0, Lde/javawi/jstun/util/Address;->secondOctet:I

    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 113
    const/4 v1, 0x2

    iget v2, p0, Lde/javawi/jstun/util/Address;->thirdOctet:I

    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 114
    const/4 v1, 0x3

    iget v2, p0, Lde/javawi/jstun/util/Address;->fourthOctet:I

    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 115
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lde/javawi/jstun/util/Address;->firstOctet:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lde/javawi/jstun/util/Address;->secondOctet:I

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p0, Lde/javawi/jstun/util/Address;->thirdOctet:I

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 121
    iget v1, p0, Lde/javawi/jstun/util/Address;->fourthOctet:I

    .line 120
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lde/javawi/jstun/util/Address;->firstOctet:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/javawi/jstun/util/Address;->secondOctet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/javawi/jstun/util/Address;->thirdOctet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    iget v1, p0, Lde/javawi/jstun/util/Address;->fourthOctet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
