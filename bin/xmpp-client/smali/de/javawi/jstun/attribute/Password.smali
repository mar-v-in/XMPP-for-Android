.class public Lde/javawi/jstun/attribute/Password;
.super Lde/javawi/jstun/attribute/MessageAttribute;
.source "Password.java"


# instance fields
.field password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->Password:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lde/javawi/jstun/attribute/MessageAttribute;-><init>(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 32
    sget-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->Password:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lde/javawi/jstun/attribute/MessageAttribute;-><init>(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 33
    invoke-virtual {p0, p1}, Lde/javawi/jstun/attribute/Password;->setPassword(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static parse([B)Lde/javawi/jstun/attribute/Password;
    .locals 2
    .parameter "data"

    .prologue
    .line 19
    new-instance v1, Lde/javawi/jstun/attribute/Password;

    invoke-direct {v1}, Lde/javawi/jstun/attribute/Password;-><init>()V

    .line 20
    .local v1, result:Lde/javawi/jstun/attribute/Password;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 21
    .local v0, password:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lde/javawi/jstun/attribute/Password;->setPassword(Ljava/lang/String;)V

    .line 22
    return-object v1
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
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 38
    iget-object v3, p0, Lde/javawi/jstun/attribute/Password;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 40
    .local v0, length:I
    rem-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_0

    .line 41
    rem-int/lit8 v3, v0, 0x4

    rsub-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 45
    new-array v1, v0, [B

    .line 48
    .local v1, result:[B
    iget-object v3, p0, Lde/javawi/jstun/attribute/Password;->type:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v3}, Lde/javawi/jstun/attribute/Password;->typeToInteger(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v3

    invoke-static {v3}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    add-int/lit8 v3, v0, -0x4

    invoke-static {v3}, Lde/javawi/jstun/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v3

    invoke-static {v3, v5, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v3, p0, Lde/javawi/jstun/attribute/Password;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 55
    .local v2, temp:[B
    const/4 v3, 0x4

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-object v1
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/javawi/jstun/attribute/Password;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 64
    iput-object p1, p0, Lde/javawi/jstun/attribute/Password;->password:Ljava/lang/String;

    .line 65
    return-void
.end method
