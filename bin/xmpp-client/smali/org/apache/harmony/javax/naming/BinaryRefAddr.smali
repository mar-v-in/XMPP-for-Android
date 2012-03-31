.class public Lorg/apache/harmony/javax/naming/BinaryRefAddr;
.super Lorg/apache/harmony/javax/naming/RefAddr;
.source "BinaryRefAddr.java"


# static fields
.field private static final serialVersionUID:J = -0x2f656c4d214c77b9L


# instance fields
.field private final buf:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .parameter "type"
    .parameter "address"

    .prologue
    .line 47
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/harmony/javax/naming/BinaryRefAddr;-><init>(Ljava/lang/String;[BII)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 2
    .parameter "type"
    .parameter "address"
    .parameter "index"
    .parameter "size"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/RefAddr;-><init>(Ljava/lang/String;)V

    .line 74
    new-array v0, p4, [B

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->buf:[B

    .line 75
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->buf:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 90
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/BinaryRefAddr;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 91
    check-cast v0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;

    .line 92
    .local v0, a:Lorg/apache/harmony/javax/naming/BinaryRefAddr;
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->addrType:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->addrType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->buf:[B

    iget-object v3, v0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->buf:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 94
    .end local v0           #a:Lorg/apache/harmony/javax/naming/BinaryRefAddr;
    :cond_0
    return v1
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->buf:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 115
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->addrType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 117
    .local v1, i:I
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->buf:[B

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 120
    return v1

    .line 117
    :cond_0
    aget-byte v0, v3, v2

    .line 118
    .local v0, element:B
    add-int/2addr v1, v0

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v1, 0x80

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The type of the address is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->addrType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nThe content of the address is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->buf:[B

    array-length v3, v3

    if-le v3, v1, :cond_0

    .line 136
    .local v1, max:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    return-object v2

    .line 134
    .end local v0           #i:I
    .end local v1           #max:I
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->buf:[B

    array-length v1, v3

    goto :goto_0

    .line 137
    .restart local v0       #i:I
    .restart local v1       #max:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/harmony/javax/naming/BinaryRefAddr;->buf:[B

    aget-byte v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
