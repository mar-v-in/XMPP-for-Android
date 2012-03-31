.class public Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;
.super Lde/javawi/jstun/attribute/MessageAttribute;
.source "MappedResponseChangedSourceAddressReflectedFrom.java"


# instance fields
.field address:Lde/javawi/jstun/util/Address;

.field port:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Lde/javawi/jstun/attribute/MessageAttribute;-><init>()V

    .line 65
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->port:I

    .line 66
    new-instance v1, Lde/javawi/jstun/util/Address;

    const-string v2, "0.0.0.0"

    invoke-direct {v1, v2}, Lde/javawi/jstun/util/Address;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->address:Lde/javawi/jstun/util/Address;
    :try_end_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, ue:Lde/javawi/jstun/util/UtilityException;
    invoke-virtual {v0}, Lde/javawi/jstun/util/UtilityException;->getMessage()Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Lde/javawi/jstun/util/UtilityException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lde/javawi/jstun/attribute/MessageAttribute;-><init>(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 76
    return-void
.end method

.method protected static parse(Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;[B)Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;
    .locals 11
    .parameter "ma"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 24
    :try_start_0
    array-length v8, p1

    const/16 v9, 0x8

    if-ge v8, v9, :cond_0

    .line 25
    new-instance v8, Lde/javawi/jstun/attribute/MessageAttributeParsingException;

    .line 26
    const-string v9, "Data array too short"

    .line 25
    invoke-direct {v8, v9}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :catch_0
    move-exception v7

    .line 44
    .local v7, ue:Lde/javawi/jstun/util/UtilityException;
    new-instance v8, Lde/javawi/jstun/attribute/MessageAttributeParsingException;

    const-string v9, "Parsing error"

    invoke-direct {v8, v9}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 28
    .end local v7           #ue:Lde/javawi/jstun/util/UtilityException;
    :cond_0
    const/4 v8, 0x1

    :try_start_1
    aget-byte v8, p1, v8

    invoke-static {v8}, Lde/javawi/jstun/util/Utility;->oneByteToInteger(B)I

    move-result v0

    .line 29
    .local v0, family:I
    if-eq v0, v10, :cond_1

    .line 30
    new-instance v8, Lde/javawi/jstun/attribute/MessageAttributeParsingException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Family "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 31
    const-string v10, " is not supported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 30
    invoke-direct {v8, v9}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .end local v0           #family:I
    :catch_1
    move-exception v3

    .line 46
    .local v3, mae:Lde/javawi/jstun/attribute/MessageAttributeException;
    new-instance v8, Lde/javawi/jstun/attribute/MessageAttributeParsingException;

    const-string v9, "Port parsing error"

    invoke-direct {v8, v9}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 33
    .end local v3           #mae:Lde/javawi/jstun/attribute/MessageAttributeException;
    .restart local v0       #family:I
    :cond_1
    const/4 v8, 0x2

    :try_start_2
    new-array v4, v8, [B

    .line 34
    .local v4, portArray:[B
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {p1, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    invoke-static {v4}, Lde/javawi/jstun/util/Utility;->twoBytesToInteger([B)I

    move-result v8

    invoke-virtual {p0, v8}, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->setPort(I)V

    .line 36
    const/4 v8, 0x4

    aget-byte v8, p1, v8

    invoke-static {v8}, Lde/javawi/jstun/util/Utility;->oneByteToInteger(B)I

    move-result v1

    .line 37
    .local v1, firstOctet:I
    const/4 v8, 0x5

    aget-byte v8, p1, v8

    invoke-static {v8}, Lde/javawi/jstun/util/Utility;->oneByteToInteger(B)I

    move-result v5

    .line 38
    .local v5, secondOctet:I
    const/4 v8, 0x6

    aget-byte v8, p1, v8

    invoke-static {v8}, Lde/javawi/jstun/util/Utility;->oneByteToInteger(B)I

    move-result v6

    .line 39
    .local v6, thirdOctet:I
    const/4 v8, 0x7

    aget-byte v8, p1, v8

    invoke-static {v8}, Lde/javawi/jstun/util/Utility;->oneByteToInteger(B)I

    move-result v2

    .line 40
    .local v2, fourthOctet:I
    new-instance v8, Lde/javawi/jstun/util/Address;

    .line 41
    invoke-direct {v8, v1, v5, v6, v2}, Lde/javawi/jstun/util/Address;-><init>(IIII)V

    .line 40
    invoke-virtual {p0, v8}, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->setAddress(Lde/javawi/jstun/util/Address;)V
    :try_end_2
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 42
    return-object p0
.end method


# virtual methods
.method public getAddress()Lde/javawi/jstun/util/Address;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->address:Lde/javawi/jstun/util/Address;

    return-object v0
.end method

.method public getBytes()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 84
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 87
    .local v0, result:[B
    iget-object v1, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->type:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v1}, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->typeToInteger(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v1

    invoke-static {v1}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    invoke-static {v5}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 96
    iget v1, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->port:I

    invoke-static {v1}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v1, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->address:Lde/javawi/jstun/util/Address;

    invoke-virtual {v1}, Lde/javawi/jstun/util/Address;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v3, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->port:I

    return v0
.end method

.method public setAddress(Lde/javawi/jstun/util/Address;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 107
    iput-object p1, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->address:Lde/javawi/jstun/util/Address;

    .line 108
    return-void
.end method

.method public setPort(I)V
    .locals 3
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/attribute/MessageAttributeException;
        }
    .end annotation

    .prologue
    .line 111
    const/high16 v0, 0x1

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 112
    :cond_0
    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Port value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    const-string v2, " out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Lde/javawi/jstun/attribute/MessageAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iput p1, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->port:I

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->address:Lde/javawi/jstun/util/Address;

    invoke-virtual {v1}, Lde/javawi/jstun/util/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
