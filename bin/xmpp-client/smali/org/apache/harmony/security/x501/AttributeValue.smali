.class public Lorg/apache/harmony/security/x501/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"


# instance fields
.field public bytes:[B

.field public encoded:[B

.field public escapedString:Ljava/lang/String;

.field public hasQE:Z

.field private hexString:Ljava/lang/String;

.field public rawString:Ljava/lang/String;

.field private tag:I

.field public final wasEncoded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "parsedString"
    .parameter "hasQorE"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 55
    iput-boolean p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 57
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5
    .parameter "hexString"
    .parameter "encoded"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 63
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 65
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 69
    :try_start_0
    new-instance v2, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v2, p2}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 71
    .local v2, in:Lorg/apache/harmony/security/asn1/DerInputStream;
    iget v3, v2, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 73
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 87
    :goto_0
    return-void

    .line 78
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v2           #in:Lorg/apache/harmony/security/asn1/DerInputStream;
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 84
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 85
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 1
    .parameter "rawString"
    .parameter "encoded"
    .parameter "tag"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 93
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 94
    iput p3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 96
    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    goto :goto_0
.end method

.method private makeEscaped(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    const/16 v5, 0x5c

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 232
    .local v3, length:I
    if-nez v3, :cond_0

    .line 269
    .end local p1
    :goto_0
    return-object p1

    .line 235
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 237
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 241
    .local v1, ch:C
    sparse-switch v1, :sswitch_data_0

    .line 265
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    :sswitch_0
    if-eqz v2, :cond_2

    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_3

    .line 246
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_3
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 253
    :sswitch_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 262
    :sswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x3d -> :sswitch_2
        0x3e -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public appendQEString(Ljava/lang/StringBuffer;)V
    .locals 5
    .parameter "buf"

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x22

    .line 106
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    iget-boolean v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    if-eqz v2, :cond_3

    .line 109
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 119
    .end local v1           #i:I
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    return-void

    .line 110
    .restart local v1       #i:I
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 111
    .local v0, c:C
    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_2

    .line 112
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getHexString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 123
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 125
    iget-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    if-nez v3, :cond_0

    .line 127
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/harmony/security/x509/Utils;->isPrintableString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 134
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 154
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    return-object v3

    .line 130
    :cond_2
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    goto :goto_0

    .line 138
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    .restart local v2       #i:I
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 139
    .local v1, c:I
    if-ge v1, v5, :cond_4

    .line 140
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    and-int/lit8 v1, v3, 0xf

    .line 146
    if-ge v1, v5, :cond_5

    .line 147
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    :cond_4
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 149
    :cond_5
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/x509/Utils;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 165
    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    return v0

    .line 162
    :cond_1
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    goto :goto_0
.end method

.method public makeCanonical()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x23

    const/16 v7, 0x20

    .line 170
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 171
    .local v4, length:I
    if-nez v4, :cond_0

    .line 172
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 218
    :goto_0
    return-object v5

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v4, 0x2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 176
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 177
    .local v3, index:I
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1

    .line 178
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    add-int/lit8 v3, v3, 0x1

    .line 184
    :cond_1
    :goto_1
    if-lt v3, v4, :cond_3

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, bufLength:I
    :goto_2
    const/4 v5, -0x1

    if-le v1, v5, :cond_2

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_5

    .line 216
    :cond_2
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 186
    .end local v1           #bufLength:I
    :cond_3
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 188
    .local v2, ch:C
    sparse-switch v2, :sswitch_data_0

    .line 208
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 191
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 192
    .restart local v1       #bufLength:I
    if-eqz v1, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    .line 195
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 205
    .end local v1           #bufLength:I
    :sswitch_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 214
    .end local v2           #ch:C
    .restart local v1       #bufLength:I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x3e -> :sswitch_1
        0x5c -> :sswitch_1
    .end sparse-switch
.end method
