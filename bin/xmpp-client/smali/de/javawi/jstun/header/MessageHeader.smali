.class public Lde/javawi/jstun/header/MessageHeader;
.super Ljava/lang/Object;
.source "MessageHeader.java"

# interfaces
.implements Lde/javawi/jstun/header/MessageHeaderInterface;


# instance fields
.field id:[B

.field ma:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;",
            "Lde/javawi/jstun/attribute/MessageAttribute;",
            ">;"
        }
    .end annotation
.end field

.field type:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    .line 98
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lde/javawi/jstun/header/MessageHeader;->ma:Ljava/util/TreeMap;

    .line 102
    return-void
.end method

.method public constructor <init>(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    .line 98
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lde/javawi/jstun/header/MessageHeader;->ma:Ljava/util/TreeMap;

    .line 106
    invoke-virtual {p0, p1}, Lde/javawi/jstun/header/MessageHeader;->setType(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 107
    return-void
.end method

.method public static parseHeader([B)Lde/javawi/jstun/header/MessageHeader;
    .locals 7
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Lde/javawi/jstun/header/MessageHeader;

    invoke-direct {v0}, Lde/javawi/jstun/header/MessageHeader;-><init>()V

    .line 40
    .local v0, mh:Lde/javawi/jstun/header/MessageHeader;
    const/4 v4, 0x2

    new-array v2, v4, [B

    .line 41
    .local v2, typeArray:[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {p0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->twoBytesToInteger([B)I

    move-result v1

    .line 43
    .local v1, type:I
    sparse-switch v1, :sswitch_data_0

    .line 63
    new-instance v4, Lde/javawi/jstun/header/MessageHeaderParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 64
    const-string v6, "is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-direct {v4, v5}, Lde/javawi/jstun/header/MessageHeaderParsingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0           #mh:Lde/javawi/jstun/header/MessageHeader;
    .end local v1           #type:I
    .end local v2           #typeArray:[B
    :catch_0
    move-exception v3

    .line 68
    .local v3, ue:Lde/javawi/jstun/util/UtilityException;
    new-instance v4, Lde/javawi/jstun/header/MessageHeaderParsingException;

    const-string v5, "Parsing error"

    invoke-direct {v4, v5}, Lde/javawi/jstun/header/MessageHeaderParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    .end local v3           #ue:Lde/javawi/jstun/util/UtilityException;
    .restart local v0       #mh:Lde/javawi/jstun/header/MessageHeader;
    .restart local v1       #type:I
    .restart local v2       #typeArray:[B
    :sswitch_0
    :try_start_1
    sget-object v4, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    invoke-virtual {v0, v4}, Lde/javawi/jstun/header/MessageHeader;->setType(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 66
    :goto_0
    return-object v0

    .line 48
    :sswitch_1
    sget-object v4, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    invoke-virtual {v0, v4}, Lde/javawi/jstun/header/MessageHeader;->setType(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    goto :goto_0

    .line 51
    :sswitch_2
    sget-object v4, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    invoke-virtual {v0, v4}, Lde/javawi/jstun/header/MessageHeader;->setType(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    goto :goto_0

    .line 54
    :sswitch_3
    sget-object v4, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    invoke-virtual {v0, v4}, Lde/javawi/jstun/header/MessageHeader;->setType(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    goto :goto_0

    .line 57
    :sswitch_4
    sget-object v4, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    invoke-virtual {v0, v4}, Lde/javawi/jstun/header/MessageHeader;->setType(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V

    goto :goto_0

    .line 60
    :sswitch_5
    sget-object v4, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    invoke-virtual {v0, v4}, Lde/javawi/jstun/header/MessageHeader;->setType(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V
    :try_end_1
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x101 -> :sswitch_1
        0x102 -> :sswitch_4
        0x111 -> :sswitch_2
        0x112 -> :sswitch_5
    .end sparse-switch
.end method

.method public static typeToInteger(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 73
    sget-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    if-ne p0, v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 76
    :cond_0
    sget-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    if-ne p0, v0, :cond_1

    .line 77
    const/16 v0, 0x101

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    if-ne p0, v0, :cond_2

    .line 80
    const/16 v0, 0x111

    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    if-ne p0, v0, :cond_3

    .line 83
    const/4 v0, 0x2

    goto :goto_0

    .line 85
    :cond_3
    sget-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    if-ne p0, v0, :cond_4

    .line 86
    const/16 v0, 0x102

    goto :goto_0

    .line 88
    :cond_4
    sget-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    if-ne p0, v0, :cond_5

    .line 89
    const/16 v0, 0x112

    goto :goto_0

    .line 91
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V
    .locals 2
    .parameter "attri"

    .prologue
    .line 110
    iget-object v0, p0, Lde/javawi/jstun/header/MessageHeader;->ma:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lde/javawi/jstun/attribute/MessageAttribute;->getType()Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public equalTransactionID(Lde/javawi/jstun/header/MessageHeader;)Z
    .locals 8
    .parameter "header"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1}, Lde/javawi/jstun/header/MessageHeader;->getTransactionID()[B

    move-result-object v0

    .line 115
    .local v0, idHeader:[B
    array-length v3, v0

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    aget-byte v3, v0, v1

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    aget-byte v4, v4, v1

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    aget-byte v4, v4, v2

    if-ne v3, v4, :cond_0

    .line 119
    aget-byte v3, v0, v5

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v6

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_0

    .line 120
    aget-byte v3, v0, v7

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_0

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 121
    const/4 v3, 0x6

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    const/4 v3, 0x7

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 122
    const/16 v3, 0x8

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v5, 0x8

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    const/16 v3, 0x9

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v5, 0x9

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 123
    const/16 v3, 0xa

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v5, 0xa

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    const/16 v3, 0xb

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v5, 0xb

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 124
    const/16 v3, 0xc

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v5, 0xc

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    const/16 v3, 0xd

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v5, 0xd

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 125
    const/16 v3, 0xe

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v5, 0xe

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    const/16 v3, 0xf

    aget-byte v3, v0, v3

    iget-object v4, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v5, 0xf

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 126
    goto/16 :goto_0
.end method

.method public generateTransactionID()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    const-wide/high16 v5, 0x40f0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 134
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v0

    .line 135
    iget-object v1, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    .line 133
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v0

    .line 138
    iget-object v1, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    .line 136
    invoke-static {v0, v3, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v0

    .line 141
    iget-object v1, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/4 v2, 0x4

    .line 139
    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v0

    .line 144
    iget-object v1, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/4 v2, 0x6

    .line 142
    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v0

    .line 147
    iget-object v1, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v2, 0x8

    .line 145
    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v0

    .line 150
    iget-object v1, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v2, 0xa

    .line 148
    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v0

    .line 153
    iget-object v1, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v2, 0xc

    .line 151
    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-static {v0}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v0

    .line 156
    iget-object v1, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v2, 0xe

    .line 154
    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    return-void
.end method

.method public getBytes()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 160
    const/16 v2, 0x14

    .line 161
    .local v2, length:I
    iget-object v5, p0, Lde/javawi/jstun/header/MessageHeader;->ma:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 162
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 168
    new-array v4, v2, [B

    .line 169
    .local v4, result:[B
    iget-object v5, p0, Lde/javawi/jstun/header/MessageHeader;->type:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    invoke-static {v5}, Lde/javawi/jstun/header/MessageHeader;->typeToInteger(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)I

    move-result v5

    invoke-static {v5}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v5

    invoke-static {v5, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    add-int/lit8 v5, v2, -0x14

    invoke-static {v5}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v5

    invoke-static {v5, v8, v4, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object v5, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/4 v6, 0x4

    const/16 v7, 0x10

    invoke-static {v5, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    const/16 v3, 0x14

    .line 177
    .local v3, offset:I
    iget-object v5, p0, Lde/javawi/jstun/header/MessageHeader;->ma:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    return-object v4

    .line 164
    .end local v3           #offset:I
    .end local v4           #result:[B
    :cond_0
    iget-object v5, p0, Lde/javawi/jstun/header/MessageHeader;->ma:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/javawi/jstun/attribute/MessageAttribute;

    .line 165
    .local v0, attri:Lde/javawi/jstun/attribute/MessageAttribute;
    invoke-virtual {v0}, Lde/javawi/jstun/attribute/MessageAttribute;->getLength()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 179
    .end local v0           #attri:Lde/javawi/jstun/attribute/MessageAttribute;
    .restart local v3       #offset:I
    .restart local v4       #result:[B
    :cond_1
    iget-object v5, p0, Lde/javawi/jstun/header/MessageHeader;->ma:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/javawi/jstun/attribute/MessageAttribute;

    .line 180
    .restart local v0       #attri:Lde/javawi/jstun/attribute/MessageAttribute;
    invoke-virtual {v0}, Lde/javawi/jstun/attribute/MessageAttribute;->getBytes()[B

    move-result-object v5

    .line 181
    invoke-virtual {v0}, Lde/javawi/jstun/attribute/MessageAttribute;->getLength()I

    move-result v6

    .line 180
    invoke-static {v5, v8, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    invoke-virtual {v0}, Lde/javawi/jstun/attribute/MessageAttribute;->getLength()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public getLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lde/javawi/jstun/header/MessageHeader;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getMessageAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)Lde/javawi/jstun/attribute/MessageAttribute;
    .locals 1
    .parameter "type"

    .prologue
    .line 193
    iget-object v0, p0, Lde/javawi/jstun/header/MessageHeader;->ma:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/javawi/jstun/attribute/MessageAttribute;

    return-object v0
.end method

.method public getTransactionID()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v1, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 198
    .local v0, idCopy:[B
    iget-object v1, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    iget-object v2, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    return-object v0
.end method

.method public getType()Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lde/javawi/jstun/header/MessageHeader;->type:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    return-object v0
.end method

.method public parseAttributes([B)V
    .locals 10
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v6, 0x2

    :try_start_0
    new-array v2, v6, [B

    .line 210
    .local v2, lengthArray:[B
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {p1, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->twoBytesToInteger([B)I

    move-result v1

    .line 212
    .local v1, length:I
    const/4 v6, 0x4

    iget-object v7, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {p1, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    const/16 v4, 0x14

    .line 215
    .local v4, offset:I
    :goto_0
    if-gtz v1, :cond_0

    .line 227
    return-void

    .line 216
    :cond_0
    new-array v0, v1, [B

    .line 217
    .local v0, cuttedData:[B
    const/4 v6, 0x0

    invoke-static {p1, v4, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    invoke-static {v0}, Lde/javawi/jstun/attribute/MessageAttribute;->parseCommonHeader([B)Lde/javawi/jstun/attribute/MessageAttribute;

    move-result-object v3

    .line 220
    .local v3, ma:Lde/javawi/jstun/attribute/MessageAttribute;
    invoke-virtual {p0, v3}, Lde/javawi/jstun/header/MessageHeader;->addMessageAttribute(Lde/javawi/jstun/attribute/MessageAttribute;)V

    .line 221
    invoke-virtual {v3}, Lde/javawi/jstun/attribute/MessageAttribute;->getLength()I

    move-result v6

    sub-int/2addr v1, v6

    .line 222
    invoke-virtual {v3}, Lde/javawi/jstun/attribute/MessageAttribute;->getLength()I
    :try_end_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0

    .line 224
    .end local v0           #cuttedData:[B
    .end local v1           #length:I
    .end local v2           #lengthArray:[B
    .end local v3           #ma:Lde/javawi/jstun/attribute/MessageAttribute;
    .end local v4           #offset:I
    :catch_0
    move-exception v5

    .line 225
    .local v5, ue:Lde/javawi/jstun/util/UtilityException;
    new-instance v6, Lde/javawi/jstun/attribute/MessageAttributeParsingException;

    const-string v7, "Parsing error"

    invoke-direct {v6, v7}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public setTransactionID([B)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lde/javawi/jstun/header/MessageHeader;->id:[B

    const/16 v1, 0x10

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    return-void
.end method

.method public setType(Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 234
    iput-object p1, p0, Lde/javawi/jstun/header/MessageHeader;->type:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    .line 235
    return-void
.end method
