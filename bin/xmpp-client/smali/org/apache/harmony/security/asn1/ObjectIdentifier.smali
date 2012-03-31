.class public final Lorg/apache/harmony/security/asn1/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"


# instance fields
.field private final oid:[I

.field private soid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "strOid"

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    .line 206
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0
    .parameter "oid"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->validate([I)V

    .line 193
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    .line 194
    return-void
.end method

.method public static toIntArray(Ljava/lang/String;)[I
    .locals 11
    .parameter "str"

    .prologue
    const/16 v10, 0x2e

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 57
    if-nez p0, :cond_0

    .line 58
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 59
    const-string v8, "security.9D"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 63
    .local v4, length:I
    if-nez v4, :cond_1

    .line 64
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string v8, "security.9E"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 68
    :cond_1
    const/4 v1, 0x1

    .line 69
    .local v1, count:I
    const/4 v6, 0x1

    .line 71
    .local v6, wasDot:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_2

    .line 88
    if-eqz v6, :cond_6

    .line 90
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 91
    const-string v8, "security.9E"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 72
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 73
    .local v0, c:C
    if-ne v0, v10, :cond_4

    .line 74
    if-eqz v6, :cond_3

    .line 75
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 76
    const-string v8, "security.9E"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 78
    :cond_3
    const/4 v6, 0x1

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 71
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_4
    const/16 v7, 0x30

    if-lt v0, v7, :cond_5

    const/16 v7, 0x39

    if-gt v0, v7, :cond_5

    .line 81
    const/4 v6, 0x0

    goto :goto_1

    .line 83
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 84
    const-string v8, "security.9E"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 94
    .end local v0           #c:C
    :cond_6
    if-ge v1, v8, :cond_7

    .line 95
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 96
    const-string v8, "security.99"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 99
    :cond_7
    new-array v5, v1, [I

    .line 100
    .local v5, oid:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-lt v2, v4, :cond_8

    .line 109
    aget v7, v5, v9

    if-le v7, v8, :cond_a

    .line 110
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 111
    const-string v8, "security.9A"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 101
    :cond_8
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 102
    .restart local v0       #c:C
    if-ne v0, v10, :cond_9

    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 100
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    :cond_9
    aget v7, v5, v3

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x30

    aput v7, v5, v3

    goto :goto_3

    .line 112
    .end local v0           #c:C
    :cond_a
    aget v7, v5, v9

    if-eq v7, v8, :cond_b

    const/4 v7, 0x1

    aget v7, v5, v7

    const/16 v8, 0x27

    if-le v7, v8, :cond_b

    .line 113
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 114
    const-string v8, "security.9B"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 117
    :cond_b
    return-object v5
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 3
    .parameter "oid"

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    .line 137
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 134
    :cond_0
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static validate([I)V
    .locals 4
    .parameter "oid"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 151
    if-nez p0, :cond_0

    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 153
    const-string v2, "security.98"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    array-length v2, p0

    if-ge v2, v3, :cond_1

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 158
    const-string v2, "security.99"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_1
    aget v2, p0, v1

    if-le v2, v3, :cond_2

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 163
    const-string v2, "security.9A"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_2
    aget v2, p0, v1

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    aget v2, p0, v2

    const/16 v3, 0x27

    if-le v2, v3, :cond_3

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 166
    const-string v2, "security.9B"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_3
    array-length v2, p0

    :goto_0
    if-lt v1, v2, :cond_4

    .line 175
    return-void

    .line 169
    :cond_4
    aget v0, p0, v1

    .line 170
    .local v0, element:I
    if-gez v0, :cond_5

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 172
    const-string v2, "security.9C"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 217
    if-ne p0, p1, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 223
    .end local p1
    :goto_0
    return v0

    .line 220
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 221
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    check-cast p1, Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    .end local p1
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getOid()[I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, intHash:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 327
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2

    .line 325
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    aget v2, v2, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    return-object v0
.end method
