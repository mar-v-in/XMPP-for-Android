.class public Lorg/apache/harmony/javax/naming/Binding;
.super Lorg/apache/harmony/javax/naming/NameClassPair;
.source "Binding.java"


# static fields
.field private static final serialVersionUID:J = 0x7aab35cbb5f12f02L


# instance fields
.field private boundObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "name"
    .parameter "obj"
    .parameter "relative"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "className"
    .parameter "obj"

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "name"
    .parameter "className"
    .parameter "obj"
    .parameter "relative"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/harmony/javax/naming/NameClassPair;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    iput-object p3, p0, Lorg/apache/harmony/javax/naming/Binding;->boundObj:Ljava/lang/Object;

    .line 95
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lorg/apache/harmony/javax/naming/NameClassPair;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-super {p0}, Lorg/apache/harmony/javax/naming/NameClassPair;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Binding;->boundObj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Binding;->boundObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Binding;->boundObj:Ljava/lang/Object;

    return-object v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/Binding;->boundObj:Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/harmony/javax/naming/NameClassPair;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/Binding;->boundObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
