.class public Lorg/apache/harmony/luni/util/BinarySearch;
.super Ljava/lang/Object;
.source "BinarySearch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binarySearch(Ljava/lang/String;C)I
    .locals 5
    .parameter "data"
    .parameter "value"

    .prologue
    .line 33
    const/4 v1, 0x0

    .local v1, low:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 34
    .local v0, high:I
    :goto_0
    if-le v1, v0, :cond_1

    .line 45
    const/4 v2, -0x1

    :cond_0
    return v2

    .line 35
    :cond_1
    add-int v4, v1, v0

    shr-int/lit8 v2, v4, 0x1

    .line 36
    .local v2, mid:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 37
    .local v3, target:C
    if-eq p1, v3, :cond_0

    .line 39
    if-ge p1, v3, :cond_2

    .line 40
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 42
    :cond_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0
.end method

.method public static binarySearchRange(Ljava/lang/String;C)I
    .locals 5
    .parameter "data"
    .parameter "c"

    .prologue
    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, value:C
    const/4 v1, 0x0

    .local v1, low:I
    const/4 v2, -0x1

    .local v2, mid:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 60
    .local v0, high:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 71
    if-ge p1, v3, :cond_3

    const/4 v4, 0x1

    :goto_1
    sub-int v4, v2, v4

    :goto_2
    return v4

    .line 61
    :cond_0
    add-int v4, v1, v0

    shr-int/lit8 v2, v4, 0x1

    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 63
    if-le p1, v3, :cond_1

    .line 64
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 65
    :cond_1
    if-ne p1, v3, :cond_2

    move v4, v2

    .line 66
    goto :goto_2

    .line 68
    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 71
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
