.class public Lorg/apache/harmony/security/asn1/BerOutputStream;
.super Ljava/lang/Object;
.source "BerOutputStream.java"


# instance fields
.field public content:Ljava/lang/Object;

.field public encoded:[B

.field public length:I

.field protected offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public encodeANY()V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 58
    return-void
.end method

.method public encodeBitString()V
    .locals 6

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    .line 63
    .local v0, bStr:Lorg/apache/harmony/security/asn1/BitString;
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v3, v0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 64
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 66
    return-void
.end method

.method public encodeBoolean()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 74
    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 75
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 2
    .parameter "choice"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 2
    .parameter "explicit"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeGeneralizedTime()V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 88
    return-void
.end method

.method public encodeInteger()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 93
    return-void
.end method

.method public encodeOID()V
    .locals 9

    .prologue
    const/16 v8, 0x7f

    const/4 v7, 0x1

    .line 102
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v2, [I

    .line 104
    .local v2, oid:[I
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 108
    .local v3, oidLen:I
    array-length v4, v2

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-gt v1, v7, :cond_0

    .line 124
    const/4 v4, 0x0

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x28

    aget v5, v2, v7

    add-int v0, v4, v5

    .line 125
    .local v0, elem:I
    if-le v0, v8, :cond_4

    .line 126
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v6, v0, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 127
    shr-int/lit8 v0, v0, 0x7

    .line 128
    :goto_1
    if-gtz v0, :cond_3

    .line 137
    :goto_2
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 138
    return-void

    .line 109
    .end local v0           #elem:I
    :cond_0
    aget v0, v2, v1

    .line 110
    .restart local v0       #elem:I
    if-le v0, v8, :cond_2

    .line 111
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v6, v0, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 112
    shr-int/lit8 v0, v0, 0x7

    .line 113
    :goto_3
    if-gtz v0, :cond_1

    .line 108
    :goto_4
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 114
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 115
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    or-int/lit16 v6, v0, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 116
    shr-int/lit8 v0, v0, 0x7

    goto :goto_3

    .line 119
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    goto :goto_4

    .line 129
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 130
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    or-int/lit16 v6, v0, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 131
    shr-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 134
    :cond_4
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    goto :goto_2
.end method

.method public encodeOctetString()V
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 98
    return-void
.end method

.method public encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "sequence"

    .prologue
    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 2
    .parameter "sequenceOf"

    .prologue
    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .locals 2
    .parameter "set"

    .prologue
    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 2
    .parameter "setOf"

    .prologue
    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeString()V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 159
    return-void
.end method

.method public final encodeTag(I)V
    .locals 7
    .parameter "tag"

    .prologue
    .line 163
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 165
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    const/16 v5, 0x7f

    if-le v4, v5, :cond_2

    .line 166
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    shr-int/lit8 v0, v4, 0x8

    .line 167
    .local v0, eLen:I
    const/4 v2, 0x1

    .line 168
    .local v2, numOctets:B
    :goto_0
    if-gtz v0, :cond_0

    .line 172
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    or-int/lit16 v6, v2, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 173
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 175
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 176
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v4, v2

    add-int/lit8 v3, v4, -0x1

    .line 177
    .local v3, numOffset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 180
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 184
    .end local v0           #eLen:I
    .end local v1           #i:I
    .end local v2           #numOctets:B
    .end local v3           #numOffset:I
    :goto_2
    return-void

    .line 169
    .restart local v0       #eLen:I
    .restart local v2       #numOctets:B
    :cond_0
    add-int/lit8 v4, v2, 0x1

    int-to-byte v2, v4

    .line 168
    shr-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 178
    .restart local v1       #i:I
    .restart local v3       #numOffset:I
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    sub-int v5, v3, v1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 177
    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 182
    .end local v0           #eLen:I
    .end local v1           #i:I
    .end local v2           #numOctets:B
    .end local v3           #numOffset:I
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2
.end method

.method public encodeUTCTime()V
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 189
    return-void
.end method

.method public getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 2
    .parameter "choice"

    .prologue
    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 2
    .parameter "sequence"

    .prologue
    .line 200
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "sequence"

    .prologue
    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 2
    .parameter "sequence"

    .prologue
    .line 208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetLength(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .locals 2
    .parameter "set"

    .prologue
    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 2
    .parameter "setOf"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringLength(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 220
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
