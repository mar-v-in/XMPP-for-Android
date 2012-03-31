.class public final Lorg/apache/harmony/security/asn1/DerOutputStream;
.super Lorg/apache/harmony/security/asn1/BerOutputStream;
.source "DerOutputStream.java"


# static fields
.field private static final initSize:I = 0x20


# instance fields
.field private index:I

.field private len:[[I

.field private val:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;Ljava/lang/Object;)V
    .locals 2
    .parameter "asn1"
    .parameter "object"

    .prologue
    const/16 v1, 0x20

    .line 41
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;-><init>()V

    .line 36
    new-array v0, v1, [[I

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    .line 38
    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 46
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 48
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->encoded:[B

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 51
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 52
    return-void
.end method

.method private final encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 5
    .parameter "collection"

    .prologue
    .line 115
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v2, v3, v4

    .line 116
    .local v2, values:[Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v3, v4

    .line 118
    .local v0, compLens:[I
    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 119
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 126
    return-void

    .line 121
    :cond_0
    aget-object v3, v2, v1

    iput-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 122
    aget v3, v0, v1

    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 124
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 6
    .parameter "collection"

    .prologue
    .line 226
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->getValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 228
    .local v1, cv:[Ljava/lang/Object;
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/Object;

    .line 229
    .local v4, values:[Ljava/lang/Object;
    array-length v5, v4

    new-array v0, v5, [I

    .line 231
    .local v0, compLens:[I
    invoke-direct {p0, v0, v4}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 232
    const/4 v3, 0x0

    .line 233
    .local v3, seqLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-lt v2, v5, :cond_0

    .line 247
    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 248
    return-void

    .line 235
    :cond_0
    aget-object v5, v1, v2

    iput-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 237
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 239
    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    aput v5, v0, v2

    .line 243
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v5, v4, v2

    .line 245
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v5

    add-int/2addr v3, v5

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private push([I[Ljava/lang/Object;)V
    .locals 5
    .parameter "lengths"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 252
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 253
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 255
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [[I

    .line 256
    .local v0, newLen:[[I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    .line 259
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [[Ljava/lang/Object;

    .line 260
    .local v1, newVal:[[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    .line 263
    .end local v0           #newLen:[[I
    .end local v1           #newVal:[[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aput-object p1, v2, v3

    .line 264
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aput-object p2, v2, v3

    .line 265
    return-void
.end method


# virtual methods
.method public encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 3
    .parameter "choice"

    .prologue
    .line 57
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 59
    .local v0, type:Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 61
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 63
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 64
    return-void
.end method

.method public encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 3
    .parameter "explicit"

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v0, v1

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 72
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 74
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 75
    return-void
.end method

.method public encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 6
    .parameter "sequence"

    .prologue
    .line 84
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 86
    .local v2, type:[Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v3, v4, v5

    .line 87
    .local v3, values:[Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v4, v5

    .line 89
    .local v0, compLens:[I
    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 90
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 101
    return-void

    .line 92
    :cond_0
    aget-object v4, v3, v1

    if-nez v4, :cond_1

    .line 90
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    aget-object v4, v3, v1

    iput-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 97
    aget v4, v0, v1

    iput v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 99
    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    goto :goto_1
.end method

.method public encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 0
    .parameter "sequenceOf"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 106
    return-void
.end method

.method public encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 0
    .parameter "setOf"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 111
    return-void
.end method

.method public getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x1

    .line 131
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getIndex(Ljava/lang/Object;)I

    move-result v0

    .line 132
    .local v0, i:I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 134
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 136
    .local v1, values:[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 138
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 142
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 143
    return-void
.end method

.method public getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 4
    .parameter "explicit"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    new-array v1, v2, [Ljava/lang/Object;

    .line 153
    .local v1, values:[Ljava/lang/Object;
    new-array v0, v2, [I

    .line 155
    .local v0, compLens:[I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 157
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 159
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 163
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 164
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    aput v2, v0, v3

    .line 166
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 167
    return-void
.end method

.method public getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 7
    .parameter "sequence"

    .prologue
    .line 172
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 174
    .local v3, type:[Lorg/apache/harmony/security/asn1/ASN1Type;
    array-length v5, v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 175
    .local v4, values:[Ljava/lang/Object;
    array-length v5, v3

    new-array v0, v5, [I

    .line 177
    .local v0, compLens:[I
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->getValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0, v0, v4}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, seqLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_0

    .line 210
    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 211
    return-void

    .line 184
    :cond_0
    aget-object v5, v4, v1

    if-nez v5, :cond_2

    .line 185
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_1

    .line 182
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 192
    :cond_2
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v5, v5, v1

    if-eqz v5, :cond_3

    .line 193
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    const/4 v5, 0x0

    aput-object v5, v4, v1

    goto :goto_1

    .line 198
    :cond_3
    aget-object v5, v4, v1

    iput-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 200
    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 202
    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    aput v5, v0, v1

    .line 206
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 208
    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1
.end method

.method public getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 0
    .parameter "sequence"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 216
    return-void
.end method

.method public getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 0
    .parameter "setOf"

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 221
    return-void
.end method
