.class public abstract Lorg/apache/harmony/javax/naming/RefAddr;
.super Ljava/lang/Object;
.source "RefAddr.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x145ff865fdc750b6L


# instance fields
.field protected addrType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/RefAddr;->addrType:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 69
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/RefAddr;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 70
    check-cast v0, Lorg/apache/harmony/javax/naming/RefAddr;

    .line 71
    .local v0, a:Lorg/apache/harmony/javax/naming/RefAddr;
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/RefAddr;->addrType:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/harmony/javax/naming/RefAddr;->addrType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 73
    :goto_0
    const/4 v1, 0x1

    .line 75
    .end local v0           #a:Lorg/apache/harmony/javax/naming/RefAddr;
    :cond_0
    return v1

    .line 73
    .restart local v0       #a:Lorg/apache/harmony/javax/naming/RefAddr;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public abstract getContent()Ljava/lang/Object;
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/RefAddr;->addrType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/RefAddr;->addrType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 104
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/RefAddr;->addrType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
