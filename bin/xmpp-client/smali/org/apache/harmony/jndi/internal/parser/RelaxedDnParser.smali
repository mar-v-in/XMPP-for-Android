.class public Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;
.super Lorg/apache/harmony/security/x509/DNParser;
.source "RelaxedDnParser.java"


# static fields
.field private static final specialChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->specialChars:[C

    .line 31
    return-void

    .line 33
    :array_0
    .array-data 0x2
        0x21t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x5bt 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x5ct 0x0t
        0x3bt 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "dn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/DNParser;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static hexToUTF8(Ljava/lang/String;)Ljava/lang/Character;
    .locals 3
    .parameter "hex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "ldap.20"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected getEscaped()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget v0, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    .line 68
    iget v0, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->length:I

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ldap.1F"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 94
    invoke-super {p0}, Lorg/apache/harmony/security/x509/DNParser;->getUTF8()C

    move-result v0

    :goto_0
    return v0

    .line 74
    :sswitch_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v0, v0, v1

    goto :goto_0

    .line 76
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->hasQE:Z

    .line 77
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->hexToUTF8(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_0

    .line 88
    :sswitch_2
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v0, v0, v1

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x22 -> :sswitch_0
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

.method protected hexAV()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->beg:I

    .line 100
    iget v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    .line 105
    :goto_0
    iget v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    iget v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->length:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_0

    .line 106
    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_2

    .line 107
    :cond_0
    iget v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->end:I

    .line 117
    :goto_1
    iget v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->end:I

    iget v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->beg:I

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->end:I

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_4

    .line 123
    :cond_1
    iget v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->end:I

    iget v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->beg:I

    sub-int v0, v3, v4

    .line 125
    .local v0, hexLen:I
    div-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->encoded:[B

    .line 126
    const/4 v1, 0x0

    .local v1, i:I
    iget v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->beg:I

    add-int/lit8 v2, v3, 0x1

    .local v2, p:I
    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->encoded:[B

    array-length v3, v3

    if-lt v1, v3, :cond_5

    .line 129
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->beg:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 111
    .end local v0           #hexLen:I
    .end local v1           #i:I
    .end local v2           #p:I
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_3

    .line 112
    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v5, v3, v4

    add-int/lit8 v5, v5, 0x20

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 114
    :cond_3
    iget v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    goto/16 :goto_0

    .line 118
    :cond_4
    iget v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->end:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->end:I

    goto :goto_1

    .line 127
    .restart local v0       #hexLen:I
    .restart local v1       #i:I
    .restart local v2       #p:I
    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->encoded:[B

    invoke-virtual {p0, v2}, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 126
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected nextAT()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget v1, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    .line 137
    .local v1, equalIndex:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    aget-char v4, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_0

    .line 146
    iget v2, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 156
    invoke-super {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 138
    .end local v2           #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ldap.1C"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2       #i:I
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    aget-char v4, v4, v2

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 148
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ldap.1D"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    :cond_2
    sget-object v5, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->specialChars:[C

    array-length v6, v5

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v6, :cond_3

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    :cond_3
    aget-char v3, v5, v4

    .line 151
    .local v3, specialChar:C
    iget-object v7, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    aget-char v7, v7, v2

    if-ne v7, v3, :cond_4

    .line 152
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ldap.1E"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public parse()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v4, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, attType:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, atav:Ljava/util/List;
    new-instance v3, Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([C)V

    .line 171
    .local v3, charCopy:Ljava/lang/String;
    :goto_0
    iget v6, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    iget v7, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->length:I

    if-ne v6, v7, :cond_0

    .line 173
    new-instance v6, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    const-string v7, ""

    invoke-direct {v6, v1, v7}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v4, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 222
    :goto_1
    return-object v4

    .line 178
    :cond_0
    iget-object v6, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v7, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v6, v6, v7

    sparse-switch v6, :sswitch_data_0

    .line 205
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, attValue:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 207
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_2

    .line 208
    iget v6, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    add-int/lit8 v5, v6, -0x1

    .line 209
    .local v5, p:I
    :goto_2
    if-ltz v5, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_6

    .line 212
    :cond_1
    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 213
    add-int/lit8 v6, v5, -0x2

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\20"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 217
    .end local v5           #p:I
    :cond_2
    new-instance v6, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    invoke-direct {v6, v1, v2}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v2           #attValue:Ljava/lang/String;
    :goto_3
    iget v6, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    iget v7, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->length:I

    if-lt v6, v7, :cond_7

    .line 221
    invoke-interface {v4, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 180
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2       #attValue:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_4

    .line 183
    iget v6, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    add-int/lit8 v5, v6, -0x1

    .line 184
    .restart local v5       #p:I
    :goto_4
    if-ltz v5, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_5

    .line 187
    :cond_3
    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    .line 188
    add-int/lit8 v6, v5, -0x3

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 189
    const-string v7, "\\20\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 190
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 193
    .end local v5           #p:I
    :cond_4
    new-instance v6, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    invoke-direct {v6, v1, v2}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 185
    .restart local v5       #p:I
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 196
    .end local v2           #attValue:Ljava/lang/String;
    .end local v5           #p:I
    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    .line 197
    .restart local v2       #attValue:Ljava/lang/String;
    new-instance v6, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    .line 198
    invoke-static {v2}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->unescapeValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 202
    .end local v2           #attValue:Ljava/lang/String;
    :sswitch_2
    new-instance v6, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    const-string v7, ""

    invoke-direct {v6, v1, v7}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 210
    .restart local v2       #attValue:Ljava/lang/String;
    .restart local v5       #p:I
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    .line 225
    .end local v2           #attValue:Ljava/lang/String;
    .end local v5           #p:I
    :cond_7
    iget-object v6, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v7, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v6, v6, v7

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_8

    iget-object v6, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->chars:[C

    iget v7, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    aget-char v6, v6, v7

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_9

    .line 226
    :cond_8
    new-instance v6, Ljava/io/IOException;

    const-string v7, "ldap.1F"

    invoke-static {v7}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 229
    :cond_9
    iget v6, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->pos:I

    .line 230
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    .line 170
    goto/16 :goto_0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2b -> :sswitch_2
    .end sparse-switch
.end method
