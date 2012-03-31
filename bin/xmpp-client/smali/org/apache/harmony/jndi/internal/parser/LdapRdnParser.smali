.class public Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;
.super Ljava/lang/Object;
.source "LdapRdnParser.java"

# interfaces
.implements Lorg/apache/harmony/jndi/internal/parser/LdapParser;


# instance fields
.field private attrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;",
            ">;"
        }
    .end annotation
.end field

.field list:Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;

.field private listAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private parser:Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object v1, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->name:Ljava/lang/String;

    .line 214
    new-instance v0, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->list:Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;

    .line 220
    iput-object v1, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->parser:Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;

    .line 226
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    .line 228
    const/4 v0, 0x0

    const/16 v1, 0x2b

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->name:Ljava/lang/String;

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkTypeRestrictions(Ljava/lang/String;)V
    .locals 5
    .parameter "rdn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 235
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 237
    .local v1, in:I
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 238
    new-instance v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ldap.18"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ldap.17"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    .end local v0           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_0
    return-void
.end method

.method public static escapeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 41
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, val:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->getEscaped([C)Ljava/lang/String;

    move-result-object v1

    .line 45
    .end local v0           #val:Ljava/lang/String;
    .end local p0
    :goto_0
    return-object v1

    .line 44
    .restart local p0
    :cond_0
    instance-of v1, p0, [B

    if-eqz v1, :cond_1

    .line 45
    check-cast p0, [B

    .end local p0
    invoke-static {p0}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->getHexValues([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 47
    .restart local p0
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "ldap.19"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getByteFromHexString(Ljava/lang/String;)[B
    .locals 7
    .parameter "val"

    .prologue
    .line 52
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ldap.1A"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_0
    const/4 v2, 0x0

    check-cast v2, [B

    .line 58
    .local v2, ret:[B
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v2, v4, [B

    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    .line 67
    return-object v2

    .line 61
    :cond_1
    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ldap.17"

    invoke-static {v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getEscaped([C)Ljava/lang/String;
    .locals 7
    .parameter "chars"

    .prologue
    const/16 v6, 0x20

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, leftSpaceCnt:I
    const/4 v3, 0x0

    .line 73
    .local v3, rightSpaceCnt:I
    array-length v5, p0

    add-int/lit8 v2, v5, -0x1

    .line 74
    .local v2, pos:I
    :goto_0
    if-ltz v2, :cond_0

    aget-char v5, p0, v2

    if-eq v5, v6, :cond_2

    .line 78
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v2, :cond_1

    aget-char v5, p0, v0

    if-eq v5, v6, :cond_3

    .line 82
    :cond_1
    move v0, v1

    :goto_2
    array-length v5, p0

    sub-int/2addr v5, v3

    if-lt v0, v5, :cond_4

    .line 88
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v3, :cond_6

    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 75
    .end local v0           #i:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 76
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 79
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 80
    const-string v5, "\\ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_4
    invoke-static {p0, v0}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->isSpecialChar([CI)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 84
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_5
    new-instance v5, Ljava/lang/Character;

    aget-char v6, p0, v0

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 89
    :cond_6
    const-string v5, "\\ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static getHexValues([B)Ljava/lang/String;
    .locals 5
    .parameter "byteArray"

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v1, sb:Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 96
    :cond_0
    aget-byte v0, p0, v2

    .line 97
    .local v0, element:B
    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    and-int/lit8 v4, v0, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getUnEscapedValues([C)Ljava/lang/String;
    .locals 9
    .parameter "chars"

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x20

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 106
    .local v3, trailing20h:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_1

    .line 139
    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 107
    :cond_1
    const/4 v3, 0x0

    .line 108
    aget-char v4, p0, v1

    if-eq v4, v8, :cond_3

    .line 109
    aget-char v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_3
    add-int/lit8 v4, v1, 0x1

    :try_start_0
    aget-char v4, p0, v4

    if-eq v4, v7, :cond_2

    .line 115
    add-int/lit8 v4, v1, 0x1

    aget-char v4, p0, v4

    if-ne v4, v8, :cond_4

    .line 116
    const/16 v4, 0x5c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    :cond_4
    add-int/lit8 v4, v1, 0x1

    invoke-static {p0, v4}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->isSpecialChar([CI)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    add-int/lit8 v4, v1, 0x2

    invoke-static {p0, v4}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->isSpecialChar([CI)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_2

    .line 123
    :try_start_1
    new-instance v4, Ljava/lang/String;

    .line 124
    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x2

    invoke-direct {v4, p0, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 123
    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->hexToUTF8(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->charAt(I)C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-ne v4, v7, :cond_5

    .line 126
    const/4 v3, 0x1

    .line 128
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 131
    const-string v5, "ldap.1A"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 134
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-char v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static isSpecialChar([CI)Z
    .locals 1
    .parameter "chars"
    .parameter "index"

    .prologue
    .line 146
    aget-char v0, p0, p1

    sparse-switch v0, :sswitch_data_0

    .line 158
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 156
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static numeralCounter(Ljava/lang/String;)Z
    .locals 5
    .parameter "val"

    .prologue
    const/4 v2, 0x1

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, counter:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 169
    if-ne v0, v2, :cond_2

    :goto_1
    return v2

    .line 165
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_1

    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 164
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static unescapeValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "val"

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x1

    .line 181
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->numeralCounter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    invoke-static {p0}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->getByteFromHexString(Ljava/lang/String;)[B

    move-result-object v4

    .line 207
    :goto_0
    return-object v4

    .line 183
    :cond_0
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    invoke-static {p0}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->getByteFromHexString(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, tmpVal:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    .line 189
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 190
    const-string p0, ""

    .line 196
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 197
    .local v1, pos:I
    const/4 v3, 0x0

    .line 198
    .local v3, trailingSpace:Z
    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_5

    .line 202
    :cond_3
    if-ltz v1, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_6

    if-eqz v3, :cond_6

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 207
    .local v0, chars:[C
    :goto_3
    invoke-static {v0}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->getUnEscapedValues([C)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 192
    .end local v0           #chars:[C
    .end local v1           #pos:I
    .end local v3           #trailingSpace:Z
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 199
    .restart local v1       #pos:I
    .restart local v3       #trailingSpace:Z
    :cond_5
    const/4 v3, 0x1

    .line 200
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 205
    :cond_6
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .restart local v0       #chars:[C
    goto :goto_3
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 252
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->checkTypeRestrictions(Ljava/lang/String;)V

    .line 253
    new-instance v2, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;

    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->name:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->parser:Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;

    .line 254
    iget-object v2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->parser:Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/internal/parser/RelaxedDnParser;->parse()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->listAll:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    iget-object v2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->listAll:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->attrList:Ljava/util/List;

    .line 261
    iget-object v2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->attrList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    iget-object v2, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->list:Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->toAttributeList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ldap.17"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v2, v0}, Lorg/apache/harmony/javax/naming/InvalidNameException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 256
    check-cast v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    throw v2

    .line 261
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    .line 262
    .local v1, element:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;
    iget-object v3, p0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->list:Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
