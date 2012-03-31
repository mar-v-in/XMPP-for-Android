.class public Lorg/apache/harmony/jndi/internal/UrlParser;
.super Ljava/lang/Object;
.source "UrlParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static getScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 36
    if-nez p0, :cond_1

    move-object v4, v5

    .line 55
    :cond_0
    :goto_0
    return-object v4

    .line 39
    :cond_1
    const/16 v7, 0x3a

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 40
    .local v1, colPos:I
    if-gez v1, :cond_2

    move-object v4, v5

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, scheme:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 47
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 48
    .local v0, c:C
    const/16 v7, 0x41

    if-lt v0, v7, :cond_3

    const/16 v7, 0x5a

    if-le v0, v7, :cond_6

    :cond_3
    const/16 v7, 0x61

    if-lt v0, v7, :cond_4

    const/16 v7, 0x7a

    if-le v0, v7, :cond_6

    .line 49
    :cond_4
    const/16 v7, 0x30

    if-lt v0, v7, :cond_5

    const/16 v7, 0x39

    if-le v0, v7, :cond_6

    :cond_5
    const/16 v7, 0x2b

    if-eq v0, v7, :cond_6

    const/16 v7, 0x2e

    if-eq v0, v7, :cond_6

    .line 50
    const/16 v7, 0x2d

    if-eq v0, v7, :cond_6

    const/16 v7, 0x5f

    if-eq v0, v7, :cond_6

    move v3, v6

    .line 51
    .local v3, inCharSet:Z
    :goto_2
    if-nez v3, :cond_7

    move-object v4, v5

    .line 52
    goto :goto_0

    .line 50
    .end local v3           #inCharSet:Z
    :cond_6
    const/4 v3, 0x1

    goto :goto_2

    .line 46
    .restart local v3       #inCharSet:Z
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
