.class public final Lorg/apache/harmony/security/utils/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"


# instance fields
.field private group:Ljava/lang/Object;

.field private hash:I

.field private name:Ljava/lang/String;

.field private final oid:[I

.field private sOID:Ljava/lang/String;

.field private soid:Ljava/lang/String;


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .parameter "oid"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    .line 118
    invoke-static {p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->validateOid([I)V

    .line 120
    iput-object p1, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    .line 121
    return-void
.end method

.method public constructor <init>([ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "oid"
    .parameter "name"
    .parameter "oidGroup"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    .line 141
    if-nez p3, :cond_0

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.172"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iput-object p3, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->group:Ljava/lang/Object;

    .line 146
    iput-object p2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->name:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toOIDString()Ljava/lang/String;

    .line 148
    return-void
.end method

.method public static hashIntArray([I)I
    .locals 4
    .parameter "array"

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, intHash:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 54
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2

    .line 51
    :cond_1
    aget v2, p0, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static validateOid([I)V
    .locals 3
    .parameter "oid"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 69
    if-nez p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.98"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    array-length v0, p0

    if-ge v0, v1, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    const-string v1, "security.99"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    aget v0, p0, v2

    if-le v0, v1, :cond_2

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    const-string v1, "security.9A"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    aget v0, p0, v2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    aget v0, p0, v0

    const/16 v1, 0x27

    if-le v0, v1, :cond_3

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 83
    const-string v1, "security.9B"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 158
    if-ne p0, p1, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 164
    .end local p1
    :goto_0
    return v0

    .line 161
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    check-cast p1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .end local p1
    iget-object v1, p1, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getGroup()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->group:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOid()[I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    invoke-static {v0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hashIntArray([I)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    .line 202
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    return v0
.end method

.method public toOIDString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OID."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 227
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    .line 231
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    iget-object v3, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 234
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    return-object v2

    .line 228
    .restart local v0       #i:I
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
