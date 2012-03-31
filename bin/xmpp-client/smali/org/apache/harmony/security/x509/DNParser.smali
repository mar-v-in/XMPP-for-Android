.class public Lorg/apache/harmony/security/x509/DNParser;
.super Ljava/lang/Object;
.source "DNParser.java"


# instance fields
.field protected beg:I

.field protected chars:[C

.field protected cur:I

.field protected encoded:[B

.field protected end:I

.field protected hasQE:Z

.field protected final length:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "dn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    .line 72
    return-void
.end method

.method private getEscaped()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 165
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_0

    .line 166
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.192"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 191
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->getUTF8()C

    move-result v0

    :goto_0
    return v0

    .line 172
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    .line 186
    :sswitch_1
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    goto :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x25 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x5c -> :sswitch_0
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method private hexAV()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    .line 245
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x4

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v3, v4, :cond_0

    .line 247
    new-instance v3, Ljava/io/IOException;

    const-string v4, "security.192"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_0
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 251
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 256
    :goto_0
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_1

    .line 257
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_4

    .line 258
    :cond_1
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 279
    :cond_2
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int v0, v3, v4

    .line 280
    .local v0, hexLen:I
    const/4 v3, 0x5

    if-lt v0, v3, :cond_3

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_7

    .line 281
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "security.192"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    .end local v0           #hexLen:I
    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    if-ne v3, v6, :cond_5

    .line 263
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 264
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 267
    :goto_1
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    if-ne v3, v6, :cond_2

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_1

    .line 270
    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x41

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_6

    .line 271
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v5, v3, v4

    add-int/lit8 v5, v5, 0x20

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 274
    :cond_6
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto/16 :goto_0

    .line 285
    .restart local v0       #hexLen:I
    :cond_7
    div-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    .line 286
    const/4 v1, 0x0

    .local v1, i:I
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v2, v3, 0x1

    .local v2, p:I
    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    array-length v3, v3

    if-lt v1, v3, :cond_8

    .line 290
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 287
    :cond_8
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 286
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected escapedAV()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 77
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 78
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 81
    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v0, v1, :cond_1

    .line 83
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 111
    :goto_1
    return-object v0

    .line 86
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 115
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 116
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_0

    .line 91
    :sswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 94
    :sswitch_1
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 95
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_0

    .line 100
    :sswitch_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->cur:I

    .line 102
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 103
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    aput-char v4, v0, v1

    .line 105
    :goto_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v4, :cond_4

    .line 108
    :cond_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    .line 109
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->cur:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 106
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    aput-char v4, v0, v1

    .line 105
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_2

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method protected getByte(I)I
    .locals 9
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x61

    const/16 v7, 0x46

    const/16 v6, 0x41

    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 129
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v2, v3, :cond_0

    .line 131
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.192"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    aget-char v0, v2, p1

    .line 137
    .local v0, b1:I
    if-lt v0, v4, :cond_1

    if-gt v0, v5, :cond_1

    .line 138
    add-int/lit8 v0, v0, -0x30

    .line 147
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v1, v2, v3

    .line 148
    .local v1, b2:I
    if-lt v1, v4, :cond_4

    if-gt v1, v5, :cond_4

    .line 149
    add-int/lit8 v1, v1, -0x30

    .line 158
    :goto_1
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    return v2

    .line 139
    .end local v1           #b2:I
    :cond_1
    if-lt v0, v8, :cond_2

    const/16 v2, 0x66

    if-gt v0, v2, :cond_2

    .line 140
    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    .line 141
    :cond_2
    if-lt v0, v6, :cond_3

    if-gt v0, v7, :cond_3

    .line 142
    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    .line 144
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.192"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    .restart local v1       #b2:I
    :cond_4
    if-lt v1, v8, :cond_5

    const/16 v2, 0x66

    if-gt v1, v2, :cond_5

    .line 151
    add-int/lit8 v1, v1, -0x57

    goto :goto_1

    .line 152
    :cond_5
    if-lt v1, v6, :cond_6

    if-gt v1, v7, :cond_6

    .line 153
    add-int/lit8 v1, v1, -0x37

    goto :goto_1

    .line 155
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.192"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getUTF8()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x80

    const/16 v4, 0x3f

    .line 199
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    invoke-virtual {p0, v5}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v3

    .line 200
    .local v3, res:I
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 202
    if-ge v3, v7, :cond_1

    .line 203
    int-to-char v4, v3

    .line 238
    :cond_0
    :goto_0
    return v4

    .line 204
    :cond_1
    const/16 v5, 0xc0

    if-lt v3, v5, :cond_0

    const/16 v5, 0xf7

    if-gt v3, v5, :cond_0

    .line 207
    const/16 v5, 0xdf

    if-gt v3, v5, :cond_2

    .line 208
    const/4 v1, 0x1

    .line 209
    .local v1, count:I
    and-int/lit8 v3, v3, 0x1f

    .line 219
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-lt v2, v1, :cond_4

    .line 236
    int-to-char v4, v3

    goto :goto_0

    .line 210
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_2
    const/16 v5, 0xef

    if-gt v3, v5, :cond_3

    .line 211
    const/4 v1, 0x2

    .line 212
    .restart local v1       #count:I
    and-int/lit8 v3, v3, 0xf

    goto :goto_1

    .line 214
    .end local v1           #count:I
    :cond_3
    const/4 v1, 0x3

    .line 215
    .restart local v1       #count:I
    and-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 220
    .restart local v2       #i:I
    :cond_4
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 221
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v6, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v6, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_0

    .line 225
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 227
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    invoke-virtual {p0, v5}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v0

    .line 228
    .local v0, b:I
    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 229
    and-int/lit16 v5, v0, 0xc0

    if-ne v5, v7, :cond_0

    .line 234
    shl-int/lit8 v5, v3, 0x6

    and-int/lit8 v6, v0, 0x3f

    add-int v3, v5, v6

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected nextAT()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    .line 300
    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_1

    .line 302
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_2

    .line 303
    const/4 v0, 0x0

    .line 351
    :goto_1
    return-object v0

    .line 300
    :cond_1
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_0

    .line 307
    :cond_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 310
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 311
    :goto_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_4

    .line 315
    :cond_3
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v0, v1, :cond_5

    .line 317
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.192"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_4
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_2

    .line 321
    :cond_5
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 325
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_9

    .line 326
    :goto_3
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_8

    .line 329
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_7

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_9

    .line 331
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.192"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_8
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_3

    .line 335
    :cond_9
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 339
    :goto_4
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_a

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_f

    .line 344
    :cond_a
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_e

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_e

    .line 345
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_e

    .line 346
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_e

    .line 347
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_e

    .line 348
    :cond_d
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 351
    :cond_e
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 339
    :cond_f
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto/16 :goto_4
.end method

.method public parse()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 362
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;>;"
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, attType:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 411
    :goto_0
    return-object v3

    .line 370
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v0, atav:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    :cond_1
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v4, v5, :cond_2

    .line 376
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 377
    const-string v6, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    .line 376
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 404
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, attValue:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 406
    iget-boolean v6, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    invoke-direct {v5, v2, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    .line 405
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v2           #attValue:Ljava/lang/String;
    :goto_1
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v4, v5, :cond_3

    .line 410
    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 385
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 386
    .restart local v2       #attValue:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 387
    iget-boolean v6, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    invoke-direct {v5, v2, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    .line 386
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    .end local v2           #attValue:Ljava/lang/String;
    :sswitch_1
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    .line 392
    .restart local v2       #attValue:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 393
    iget-object v6, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    invoke-direct {v5, v2, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    .line 392
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 400
    .end local v2           #attValue:Ljava/lang/String;
    :sswitch_2
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 401
    const-string v6, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    .line 400
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 414
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_6

    .line 415
    :cond_4
    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #atav:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .restart local v0       #atav:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    :cond_5
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 422
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    .line 423
    if-nez v1, :cond_1

    .line 424
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.192"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 417
    :cond_6
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_5

    .line 418
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.192"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
    .end sparse-switch
.end method

.method protected quotedAV()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 433
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 434
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 437
    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_0

    .line 439
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.192"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 444
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 458
    :goto_1
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    .line 461
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 446
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_3

    .line 447
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 452
    :goto_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 453
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    goto :goto_0

    .line 450
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_2

    .line 458
    :cond_4
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_1
.end method
