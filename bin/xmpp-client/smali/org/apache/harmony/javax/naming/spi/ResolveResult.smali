.class public Lorg/apache/harmony/javax/naming/spi/ResolveResult;
.super Ljava/lang/Object;
.source "ResolveResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3f2c562c62e44c87L


# instance fields
.field protected remainingName:Lorg/apache/harmony/javax/naming/Name;

.field protected resolvedObj:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->resolvedObj:Ljava/lang/Object;

    .line 64
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "o"
    .parameter "s"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->resolvedObj:Ljava/lang/Object;

    .line 100
    :try_start_0
    new-instance v1, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v1, p2}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "o"
    .parameter "n"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->resolvedObj:Ljava/lang/Object;

    .line 79
    if-nez p2, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Name;

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0
.end method


# virtual methods
.method public appendRemainingComponent(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 116
    if-eqz p1, :cond_1

    .line 117
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 121
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    invoke-interface {v1, p1}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_1
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/InvalidNameException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public appendRemainingName(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 3
    .parameter "n"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    if-nez v1, :cond_1

    .line 140
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/Name;

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    invoke-interface {v1, p1}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/InvalidNameException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRemainingName()Lorg/apache/harmony/javax/naming/Name;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    return-object v0
.end method

.method public getResolvedObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->resolvedObj:Ljava/lang/Object;

    return-object v0
.end method

.method public setRemainingName(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Name;

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0
.end method

.method public setResolvedObj(Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 194
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->resolvedObj:Ljava/lang/Object;

    .line 195
    return-void
.end method
