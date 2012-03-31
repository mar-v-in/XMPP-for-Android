.class public Lde/javawi/jstun/attribute/Dummy;
.super Lde/javawi/jstun/attribute/MessageAttribute;
.source "Dummy.java"


# instance fields
.field lengthValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->Dummy:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lde/javawi/jstun/attribute/MessageAttribute;-><init>(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 28
    return-void
.end method

.method public static parse([B)Lde/javawi/jstun/attribute/Dummy;
    .locals 2
    .parameter "data"

    .prologue
    .line 19
    new-instance v0, Lde/javawi/jstun/attribute/Dummy;

    invoke-direct {v0}, Lde/javawi/jstun/attribute/Dummy;-><init>()V

    .line 20
    .local v0, dummy:Lde/javawi/jstun/attribute/Dummy;
    array-length v1, p0

    invoke-virtual {v0, v1}, Lde/javawi/jstun/attribute/Dummy;->setLengthValue(I)V

    .line 21
    return-object v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 32
    iget v1, p0, Lde/javawi/jstun/attribute/Dummy;->lengthValue:I

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [B

    .line 35
    .local v0, result:[B
    iget-object v1, p0, Lde/javawi/jstun/attribute/Dummy;->type:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v1}, Lde/javawi/jstun/attribute/Dummy;->typeToInteger(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v1

    invoke-static {v1}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget v1, p0, Lde/javawi/jstun/attribute/Dummy;->lengthValue:I

    invoke-static {v1}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return-object v0
.end method

.method public setLengthValue(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 44
    iput p1, p0, Lde/javawi/jstun/attribute/Dummy;->lengthValue:I

    .line 45
    return-void
.end method
