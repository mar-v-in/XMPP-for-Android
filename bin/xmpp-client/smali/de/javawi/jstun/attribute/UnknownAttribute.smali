.class public Lde/javawi/jstun/attribute/UnknownAttribute;
.super Lde/javawi/jstun/attribute/MessageAttribute;
.source "UnknownAttribute.java"


# instance fields
.field unkown:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->UnknownAttribute:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lde/javawi/jstun/attribute/MessageAttribute;-><init>(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/javawi/jstun/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    .line 54
    return-void
.end method

.method public static parse([B)Lde/javawi/jstun/attribute/UnknownAttribute;
    .locals 8
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    new-instance v3, Lde/javawi/jstun/attribute/UnknownAttribute;

    invoke-direct {v3}, Lde/javawi/jstun/attribute/UnknownAttribute;-><init>()V

    .line 34
    .local v3, result:Lde/javawi/jstun/attribute/UnknownAttribute;
    array-length v6, p0

    rem-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_0

    .line 35
    new-instance v6, Lde/javawi/jstun/attribute/MessageAttributeParsingException;

    .line 36
    const-string v7, "Data array too short"

    .line 35
    invoke-direct {v6, v7}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v3           #result:Lde/javawi/jstun/attribute/UnknownAttribute;
    :catch_0
    move-exception v5

    .line 46
    .local v5, ue:Lde/javawi/jstun/util/UtilityException;
    new-instance v6, Lde/javawi/jstun/attribute/MessageAttributeParsingException;

    const-string v7, "Parsing error"

    invoke-direct {v6, v7}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 38
    .end local v5           #ue:Lde/javawi/jstun/util/UtilityException;
    .restart local v3       #result:Lde/javawi/jstun/attribute/UnknownAttribute;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    array-length v6, p0

    if-lt v2, v6, :cond_1

    .line 44
    return-object v3

    .line 39
    :cond_1
    const/4 v6, 0x4

    new-array v4, v6, [B

    .line 40
    .local v4, temp:[B
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p0, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    invoke-static {v4}, Lde/javawi/jstun/util/Utility;->fourBytesToLong([B)J

    move-result-wide v0

    .line 42
    .local v0, attri:J
    invoke-static {v0, v1}, Lde/javawi/jstun/attribute/MessageAttribute;->intToType(J)Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lde/javawi/jstun/attribute/UnknownAttribute;->addAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V
    :try_end_1
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    add-int/lit8 v2, v2, 0x4

    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V
    .locals 1
    .parameter "attribute"

    .prologue
    .line 57
    iget-object v0, p0, Lde/javawi/jstun/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public getBytes()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, length:I
    iget-object v4, p0, Lde/javawi/jstun/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_1

    .line 64
    iget-object v4, p0, Lde/javawi/jstun/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, 0x4

    .line 68
    :goto_0
    new-array v3, v2, [B

    .line 71
    .local v3, result:[B
    iget-object v4, p0, Lde/javawi/jstun/attribute/UnknownAttribute;->type:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v4}, Lde/javawi/jstun/attribute/UnknownAttribute;->typeToInteger(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v4

    invoke-static {v4}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v4

    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    add-int/lit8 v4, v2, -0x4

    invoke-static {v4}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v4

    invoke-static {v4, v5, v3, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v4, p0, Lde/javawi/jstun/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 84
    iget-object v4, p0, Lde/javawi/jstun/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_0

    .line 85
    iget-object v4, p0, Lde/javawi/jstun/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    .line 86
    invoke-virtual {v4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    .line 85
    invoke-static {v4}, Lde/javawi/jstun/attribute/UnknownAttribute;->typeToInteger(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v4

    invoke-static {v4}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v4

    invoke-static {v4, v5, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_0
    return-object v3

    .line 66
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;>;"
    .end local v3           #result:[B
    :cond_1
    iget-object v4, p0, Lde/javawi/jstun/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, 0x4

    goto :goto_0

    .line 79
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;>;"
    .restart local v3       #result:[B
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    .line 80
    .local v0, attri:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;
    invoke-static {v0}, Lde/javawi/jstun/attribute/UnknownAttribute;->typeToInteger(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v4

    invoke-static {v4}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v4

    invoke-static {v4, v5, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
