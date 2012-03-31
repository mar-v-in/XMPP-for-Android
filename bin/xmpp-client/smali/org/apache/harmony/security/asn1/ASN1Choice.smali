.class public abstract Lorg/apache/harmony/security/asn1/ASN1Choice;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Choice.java"


# instance fields
.field private final identifiers:[[I

.field public final type:[Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 13
    .parameter "type"

    .prologue
    const/4 v12, 0x0

    .line 176
    invoke-direct {p0, v12}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    .line 178
    array-length v10, p1

    if-nez v10, :cond_0

    .line 179
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 180
    const-string v11, "security.10E"

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 179
    invoke-static {v11, v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 185
    :cond_0
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 186
    .local v7, map:Ljava/util/TreeMap;
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    array-length v10, p1

    if-lt v4, v10, :cond_1

    .line 218
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v8

    .line 219
    .local v8, size:I
    const/4 v10, 0x2

    filled-new-array {v10, v8}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    iput-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    .line 220
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 222
    .local v5, it:Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v8, :cond_7

    .line 230
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 231
    return-void

    .line 188
    .end local v2           #i:I
    .end local v5           #it:Ljava/util/Iterator;
    .end local v8           #size:I
    :cond_1
    aget-object v9, p1, v4

    .line 190
    .local v9, t:Lorg/apache/harmony/security/asn1/ASN1Type;
    instance-of v10, v9, Lorg/apache/harmony/security/asn1/ASN1Any;

    if-eqz v10, :cond_2

    .line 193
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 194
    const-string v11, "security.10F"

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 193
    invoke-static {v11, v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 196
    :cond_2
    instance-of v10, v9, Lorg/apache/harmony/security/asn1/ASN1Choice;

    if-eqz v10, :cond_5

    .line 199
    check-cast v9, Lorg/apache/harmony/security/asn1/ASN1Choice;

    .end local v9           #t:Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v0, v9, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    .line 200
    .local v0, choiceToAdd:[[I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    aget-object v10, v0, v12

    array-length v10, v10

    if-lt v6, v10, :cond_4

    .line 186
    .end local v0           #choiceToAdd:[[I
    .end local v6           #j:I
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    .restart local v0       #choiceToAdd:[[I
    .restart local v6       #j:I
    :cond_4
    aget-object v10, v0, v12

    aget v10, v10, v6

    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    .line 200
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 207
    .end local v0           #choiceToAdd:[[I
    .end local v6           #j:I
    .restart local v9       #t:Lorg/apache/harmony/security/asn1/ASN1Type;
    :cond_5
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-virtual {v9, v10}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 208
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    .line 212
    :cond_6
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-virtual {v9, v10}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 213
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    goto :goto_3

    .line 223
    .end local v9           #t:Lorg/apache/harmony/security/asn1/ASN1Type;
    .restart local v2       #i:I
    .restart local v5       #it:Ljava/util/Iterator;
    .restart local v8       #size:I
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 226
    .local v3, identifier:Ljava/math/BigInteger;
    iget-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    aget-object v10, v10, v12

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v10, v2

    .line 227
    iget-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/math/BigInteger;

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    aput v10, v11, v2

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private addIdentifier(Ljava/util/TreeMap;II)V
    .locals 3
    .parameter "map"
    .parameter "identifier"
    .parameter "index"

    .prologue
    .line 234
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, p3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 236
    const-string v1, "security.10F"

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 2
    .parameter "identifier"

    .prologue
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 264
    .local v0, index:I
    if-gez v0, :cond_0

    .line 265
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.110"

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget v0, v1, v0

    .line 271
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 274
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    .line 276
    iget-boolean v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v1, :cond_1

    .line 277
    const/4 v1, 0x0

    .line 279
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 291
    return-void
.end method

.method public final encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 295
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V

    .line 296
    return-void
.end method

.method public abstract getIndex(Ljava/lang/Object;)I
.end method

.method public abstract getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 311
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V

    .line 312
    return-void
.end method
