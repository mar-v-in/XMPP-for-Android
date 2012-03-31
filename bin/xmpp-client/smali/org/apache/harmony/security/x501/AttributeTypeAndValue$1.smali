.class Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "AttributeTypeAndValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    .line 1
    return-void
.end method


# virtual methods
.method public checkTag(I)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, str:Ljava/lang/String;
    sget-object v2, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    sget-object v2, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #str:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 292
    .restart local v1       #str:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getOffset()I

    move-result v2

    .line 293
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getTagOffset()I

    move-result v3

    .line 292
    sub-int/2addr v2, v3

    new-array v0, v2, [B

    .line 294
    .local v0, bytesEncoded:[B
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getBuffer()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getTagOffset()I

    move-result v3

    .line 295
    const/4 v4, 0x0

    array-length v5, v0

    .line 294
    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    new-instance v2, Lorg/apache/harmony/security/x501/AttributeValue;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;[BI)V

    return-object v2

    .line 289
    .end local v0           #bytesEncoded:[B
    :cond_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 306
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 308
    .local v0, av:Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 310
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    .line 316
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 313
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 314
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeString()V

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "security.17A"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "security.179"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .locals 2
    .parameter "out"

    .prologue
    .line 333
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 335
    .local v0, av:Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    if-eqz v1, :cond_0

    .line 336
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 338
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v1

    goto :goto_0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 345
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 347
    .local v0, av:Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v2, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v2, v2

    iput v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 368
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 353
    iget-object v2, v0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    iput-object v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 355
    sget-object v2, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 357
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v2, [B

    iput-object v2, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    .line 358
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    goto :goto_0

    .line 361
    :cond_1
    :try_start_0
    iget-object v2, v0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    iget-object v2, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    array-length v2, v2

    iput v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
