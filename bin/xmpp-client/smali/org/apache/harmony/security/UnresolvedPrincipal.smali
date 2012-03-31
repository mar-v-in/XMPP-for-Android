.class public final Lorg/apache/harmony/security/UnresolvedPrincipal;
.super Ljava/lang/Object;
.source "UnresolvedPrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# static fields
.field public static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field private final klass:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "klass"
    .parameter "name"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    const-string v1, "security.91"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 81
    instance-of v2, p1, Lorg/apache/harmony/security/UnresolvedPrincipal;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 82
    check-cast v0, Lorg/apache/harmony/security/UnresolvedPrincipal;

    .line 83
    .local v0, up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    iget-object v2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_0
    const/4 v1, 0x1

    .line 89
    .end local v0           #up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    .end local p1
    :cond_0
    :goto_1
    return v1

    .line 84
    .restart local v0       #up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    .restart local p1
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 86
    .end local v0           #up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    :cond_2
    instance-of v2, p1, Ljava/security/Principal;

    if-eqz v2, :cond_0

    .line 87
    check-cast p1, Ljava/security/Principal;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/UnresolvedPrincipal;->implies(Ljava/security/Principal;)Z

    move-result v1

    goto :goto_1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 118
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 121
    :cond_1
    return v0
.end method

.method public implies(Ljava/security/Principal;)Z
    .locals 2
    .parameter "another"

    .prologue
    .line 133
    if-eqz p1, :cond_2

    .line 134
    const-string v0, "*"

    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    const-string v0, "*"

    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 137
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    .line 138
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    .line 133
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Principal "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
