.class public Lorg/apache/harmony/javax/naming/LinkException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "LinkException.java"


# static fields
.field private static final serialVersionUID:J = -0x6e92d2ec862900f0L


# instance fields
.field protected linkExplanation:Ljava/lang/String;

.field protected linkRemainingName:Lorg/apache/harmony/javax/naming/Name;

.field protected linkResolvedName:Lorg/apache/harmony/javax/naming/Name;

.field protected linkResolvedObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private toStringImpl(Z)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/harmony/javax/naming/NamingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "; the link remaining name is - \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkRemainingName:Lorg/apache/harmony/javax/naming/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    const-string v2, "\'"

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkResolvedObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "; the link resolved object is - \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkResolvedObj:Ljava/lang/Object;

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getLinkExplanation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkExplanation:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkRemainingName()Lorg/apache/harmony/javax/naming/Name;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkRemainingName:Lorg/apache/harmony/javax/naming/Name;

    return-object v0
.end method

.method public getLinkResolvedName()Lorg/apache/harmony/javax/naming/Name;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkResolvedName:Lorg/apache/harmony/javax/naming/Name;

    return-object v0
.end method

.method public getLinkResolvedObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkResolvedObj:Ljava/lang/Object;

    return-object v0
.end method

.method public setLinkExplanation(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 119
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkExplanation:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setLinkRemainingName(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 132
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkRemainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 133
    return-void

    .line 132
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0
.end method

.method public setLinkResolvedName(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 144
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkResolvedName:Lorg/apache/harmony/javax/naming/Name;

    .line 145
    return-void

    .line 144
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0
.end method

.method public setLinkResolvedObj(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 154
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/LinkException;->linkResolvedObj:Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/LinkException;->toStringImpl(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/LinkException;->toStringImpl(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
