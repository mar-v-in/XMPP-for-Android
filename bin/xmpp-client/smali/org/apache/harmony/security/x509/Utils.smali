.class public Lorg/apache/harmony/security/x509/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrintableString(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 38
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 47
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 39
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 40
    .local v0, ch:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    const/16 v2, 0x27

    if-lt v0, v2, :cond_1

    const/16 v2, 0x29

    if-le v0, v2, :cond_5

    .line 41
    :cond_1
    const/16 v2, 0x2b

    if-lt v0, v2, :cond_2

    const/16 v2, 0x3a

    if-le v0, v2, :cond_5

    .line 42
    :cond_2
    const/16 v2, 0x3d

    if-eq v0, v2, :cond_5

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_5

    const/16 v2, 0x41

    if-lt v0, v2, :cond_3

    const/16 v2, 0x5a

    if-le v0, v2, :cond_5

    :cond_3
    const/16 v2, 0x61

    if-lt v0, v2, :cond_4

    .line 43
    const/16 v2, 0x7a

    if-le v0, v2, :cond_5

    .line 44
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 38
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
