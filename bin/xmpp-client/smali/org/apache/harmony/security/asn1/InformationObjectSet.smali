.class public Lorg/apache/harmony/security/asn1/InformationObjectSet;
.super Ljava/lang/Object;
.source "InformationObjectSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;
    }
.end annotation


# instance fields
.field private final capacity:I

.field private final pool:[[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    const/16 v0, 0x40

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/asn1/InformationObjectSet;-><init>(II)V

    .line 53
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "capacity"
    .parameter "size"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->capacity:I

    .line 57
    filled-new-array {p1, p2}, [I

    move-result-object v0

    const-class v1, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->pool:[[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    .line 58
    return-void
.end method

.method private hashIntArray([I)I
    .locals 4
    .parameter "array"

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, intHash:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 80
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2

    .line 77
    :cond_1
    aget v2, p1, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get([I)Ljava/lang/Object;
    .locals 5
    .parameter "oid"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/InformationObjectSet;->hashIntArray([I)I

    move-result v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->capacity:I

    rem-int v1, v3, v4

    .line 64
    .local v1, index:I
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->pool:[[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    aget-object v2, v3, v1

    .line 65
    .local v2, list:[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    aget-object v3, v2, v0

    if-nez v3, :cond_0

    .line 70
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 66
    :cond_0
    aget-object v3, v2, v0

    iget-object v3, v3, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->oid:[I

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    aget-object v3, v2, v0

    iget-object v3, v3, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->object:Ljava/lang/Object;

    goto :goto_1

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public put(Lorg/apache/harmony/security/x501/AttributeType;)V
    .locals 1
    .parameter "at"

    .prologue
    .line 84
    iget-object v0, p1, Lorg/apache/harmony/security/x501/AttributeType;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->getOid()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/security/asn1/InformationObjectSet;->put([ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public put([ILjava/lang/Object;)V
    .locals 5
    .parameter "oid"
    .parameter "object"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/InformationObjectSet;->hashIntArray([I)I

    move-result v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->capacity:I

    rem-int v1, v3, v4

    .line 91
    .local v1, index:I
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->pool:[[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    aget-object v2, v3, v1

    .line 92
    .local v2, list:[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;
    const/4 v0, 0x0

    .line 93
    .local v0, i:I
    :goto_0
    aget-object v3, v2, v0

    if-nez v3, :cond_0

    .line 102
    iget v3, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->capacity:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    .line 103
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    throw v3

    .line 96
    :cond_0
    aget-object v3, v2, v0

    iget-object v3, v3, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->oid:[I

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    throw v3

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_2
    new-instance v3, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    invoke-direct {v3, p1, p2}, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;-><init>([ILjava/lang/Object;)V

    aput-object v3, v2, v0

    .line 106
    return-void
.end method
