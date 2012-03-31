.class public Lorg/apache/harmony/javax/naming/NamingException;
.super Ljava/lang/Exception;
.source "NamingException.java"


# static fields
.field private static final serialVersionUID:J = -0x12079f1c75c118c9L


# instance fields
.field protected remainingName:Lorg/apache/harmony/javax/naming/Name;

.field protected resolvedName:Lorg/apache/harmony/javax/naming/Name;

.field protected resolvedObj:Ljava/lang/Object;

.field protected rootException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 64
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->resolvedName:Lorg/apache/harmony/javax/naming/Name;

    .line 69
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 74
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->resolvedObj:Ljava/lang/Object;

    .line 80
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->rootException:Ljava/lang/Throwable;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->resolvedName:Lorg/apache/harmony/javax/naming/Name;

    .line 69
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 74
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->resolvedObj:Ljava/lang/Object;

    .line 80
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->rootException:Ljava/lang/Throwable;

    .line 99
    return-void
.end method

.method private toStringImpl(Z)Ljava/lang/String;
    .locals 3
    .parameter "flag"

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->rootException:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 305
    const-string v1, " [Root exception is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/NamingException;->rootException:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    if-eqz v1, :cond_1

    .line 309
    const-string v1, "; Remaining name: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->resolvedObj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 313
    const-string v1, "; Resolved object: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/NamingException;->resolvedObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public appendRemainingComponent(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 112
    if-eqz p1, :cond_1

    .line 114
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Lorg/apache/harmony/javax/naming/CompositeName;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 117
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    invoke-interface {v1, p1}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 121
    const-string v2, "jndi.10"

    .line 120
    invoke-static {v2, v0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public appendRemainingName(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 3
    .parameter "n"

    .prologue
    .line 138
    if-eqz p1, :cond_1

    .line 140
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lorg/apache/harmony/javax/naming/CompositeName;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 143
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    invoke-interface {v1, p1}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_1
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 147
    const-string v2, "jndi.10"

    .line 146
    invoke-static {v2, v0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/NamingException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getExplanation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemainingName()Lorg/apache/harmony/javax/naming/Name;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    return-object v0
.end method

.method public getResolvedName()Lorg/apache/harmony/javax/naming/Name;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->resolvedName:Lorg/apache/harmony/javax/naming/Name;

    return-object v0
.end method

.method public getResolvedObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->resolvedObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->rootException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .parameter "cause"

    .prologue
    .line 217
    invoke-super {p0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 218
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/NamingException;->rootException:Ljava/lang/Throwable;

    .line 219
    return-object p0
.end method

.method public setRemainingName(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 231
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->remainingName:Lorg/apache/harmony/javax/naming/Name;

    .line 232
    return-void

    .line 231
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0
.end method

.method public setResolvedName(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 243
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/NamingException;->resolvedName:Lorg/apache/harmony/javax/naming/Name;

    .line 244
    return-void

    .line 243
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0
.end method

.method public setResolvedObj(Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 253
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/NamingException;->resolvedObj:Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public setRootCause(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 264
    if-eq p1, p0, :cond_0

    .line 265
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/NamingException;->rootException:Ljava/lang/Throwable;

    .line 267
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/NamingException;->toStringImpl(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1
    .parameter "flag"

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;->toStringImpl(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
