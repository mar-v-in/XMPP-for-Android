.class public Lorg/apache/harmony/javax/naming/NameClassPair;
.super Ljava/lang/Object;
.source "NameClassPair.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4e01028bfa76686bL


# instance fields
.field private className:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private isRel:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "className"

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/javax/naming/NameClassPair;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "className"
    .parameter "relative"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jndi.00"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->name:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->className:Ljava/lang/String;

    .line 106
    iput-boolean p3, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->isRel:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->fullName:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameInNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->fullName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 139
    const-string v1, "jndi.01"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public isRelative()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->isRel:Z

    return v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 160
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->className:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jndi.00"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->name:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setNameInNamespace(Ljava/lang/String;)V
    .locals 0
    .parameter "fullName"

    .prologue
    .line 184
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->fullName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setRelative(Z)V
    .locals 0
    .parameter "relative"

    .prologue
    .line 194
    iput-boolean p1, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->isRel:Z

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lorg/apache/harmony/javax/naming/NameClassPair;->isRel:Z

    if-nez v1, :cond_0

    .line 207
    const-string v1, "(not relative)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/NameClassPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/NameClassPair;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
