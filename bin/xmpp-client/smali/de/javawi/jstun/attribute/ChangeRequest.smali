.class public Lde/javawi/jstun/attribute/ChangeRequest;
.super Lde/javawi/jstun/attribute/MessageAttribute;
.source "ChangeRequest.java"


# instance fields
.field changeIP:Z

.field changePort:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    sget-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ChangeRequest:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lde/javawi/jstun/attribute/MessageAttribute;-><init>(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 56
    iput-boolean v1, p0, Lde/javawi/jstun/attribute/ChangeRequest;->changeIP:Z

    .line 58
    iput-boolean v1, p0, Lde/javawi/jstun/attribute/ChangeRequest;->changePort:Z

    .line 62
    return-void
.end method

.method public static parse([B)Lde/javawi/jstun/attribute/ChangeRequest;
    .locals 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    .line 21
    :try_start_0
    array-length v3, p0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 22
    new-instance v3, Lde/javawi/jstun/attribute/MessageAttributeParsingException;

    .line 23
    const-string v4, "Data array too short"

    .line 22
    invoke-direct {v3, v4}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, ue:Lde/javawi/jstun/util/UtilityException;
    new-instance v3, Lde/javawi/jstun/attribute/MessageAttributeParsingException;

    const-string v4, "Parsing error"

    invoke-direct {v3, v4}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 25
    .end local v2           #ue:Lde/javawi/jstun/util/UtilityException;
    :cond_0
    :try_start_1
    new-instance v0, Lde/javawi/jstun/attribute/ChangeRequest;

    invoke-direct {v0}, Lde/javawi/jstun/attribute/ChangeRequest;-><init>()V

    .line 26
    .local v0, cr:Lde/javawi/jstun/attribute/ChangeRequest;
    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v3}, Lde/javawi/jstun/util/Utility;->oneByteToInteger(B)I

    move-result v1

    .line 27
    .local v1, status:I
    packed-switch v1, :pswitch_data_0

    .line 41
    :pswitch_0
    new-instance v3, Lde/javawi/jstun/attribute/MessageAttributeParsingException;

    .line 42
    const-string v4, "Status parsing error"

    .line 41
    invoke-direct {v3, v4}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 31
    :pswitch_1
    invoke-virtual {v0}, Lde/javawi/jstun/attribute/ChangeRequest;->setChangePort()V

    .line 44
    :goto_0
    :pswitch_2
    return-object v0

    .line 34
    :pswitch_3
    invoke-virtual {v0}, Lde/javawi/jstun/attribute/ChangeRequest;->setChangeIP()V

    goto :goto_0

    .line 37
    :pswitch_4
    invoke-virtual {v0}, Lde/javawi/jstun/attribute/ChangeRequest;->setChangeIP()V

    .line 38
    invoke-virtual {v0}, Lde/javawi/jstun/attribute/ChangeRequest;->setChangePort()V
    :try_end_1
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getBytes()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/util/UtilityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 66
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 69
    .local v0, result:[B
    iget-object v1, p0, Lde/javawi/jstun/attribute/ChangeRequest;->type:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v1}, Lde/javawi/jstun/attribute/ChangeRequest;->typeToInteger(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v1

    invoke-static {v1}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-static {v5}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-boolean v1, p0, Lde/javawi/jstun/attribute/ChangeRequest;->changeIP:Z

    if-eqz v1, :cond_0

    .line 76
    invoke-static {v5}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v1

    aput-byte v1, v0, v4

    .line 78
    :cond_0
    iget-boolean v1, p0, Lde/javawi/jstun/attribute/ChangeRequest;->changePort:Z

    if-eqz v1, :cond_1

    .line 79
    invoke-static {v2}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v1

    aput-byte v1, v0, v4

    .line 81
    :cond_1
    iget-boolean v1, p0, Lde/javawi/jstun/attribute/ChangeRequest;->changeIP:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lde/javawi/jstun/attribute/ChangeRequest;->changePort:Z

    if-eqz v1, :cond_2

    .line 82
    const/4 v1, 0x6

    invoke-static {v1}, Lde/javawi/jstun/util/Utility;->integerToOneByte(I)B

    move-result v1

    aput-byte v1, v0, v4

    .line 84
    :cond_2
    return-object v0
.end method

.method public isChangeIP()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lde/javawi/jstun/attribute/ChangeRequest;->changeIP:Z

    return v0
.end method

.method public isChangePort()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lde/javawi/jstun/attribute/ChangeRequest;->changePort:Z

    return v0
.end method

.method public setChangeIP()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/attribute/ChangeRequest;->changeIP:Z

    .line 97
    return-void
.end method

.method public setChangePort()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/javawi/jstun/attribute/ChangeRequest;->changePort:Z

    .line 101
    return-void
.end method
