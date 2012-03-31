.class Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;
.super Ljava/lang/Object;
.source "ProxyNameAndTypeCache.java"


# instance fields
.field elementSize:I

.field keyTable:[[I

.field threshold:I

.field valueTable:[I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "initialCapacity"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    .line 33
    const/16 p1, 0xd

    .line 35
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->elementSize:I

    .line 36
    int-to-float v0, p1

    const v1, 0x3f28f5c3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->threshold:I

    .line 37
    new-array v0, p1, [[I

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    .line 38
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    .line 39
    return-void
.end method

.method private rehash()V
    .locals 4

    .prologue
    .line 75
    new-instance v1, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

    .line 76
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 75
    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;-><init>(I)V

    .line 77
    .local v1, newHashtable:Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    array-length v0, v2

    .local v0, i:I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 83
    iget-object v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    .line 84
    iget-object v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    .line 85
    iget v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->threshold:I

    iput v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->threshold:I

    .line 86
    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->put([II)I

    goto :goto_0
.end method


# virtual methods
.method get([I)I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->hashCode([I)I

    move-result v0

    .line 43
    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 49
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 44
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    aget v2, p1, v3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    aget v2, p1, v4

    if-ne v1, v2, :cond_1

    .line 45
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    aget v1, v1, v0

    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_0
.end method

.method hashCode([I)I
    .locals 2
    .parameter "key"

    .prologue
    .line 53
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method put([II)I
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->hashCode([I)I

    move-result v0

    .line 58
    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aput-object p1, v1, v0

    .line 65
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    aput p2, v1, v0

    .line 68
    iget v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->elementSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->elementSize:I

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->threshold:I

    if-le v1, v2, :cond_0

    .line 69
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->rehash()V

    .line 71
    :cond_0
    :goto_1
    return p2

    .line 59
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    aget v2, p1, v3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    aget v2, p1, v4

    if-ne v1, v2, :cond_2

    .line 60
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    aput p2, v1, v0

    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->size()I

    move-result v2

    .line 96
    .local v2, max:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 107
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 99
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    :cond_1
    if-ge v1, v2, :cond_2

    .line 104
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
