.class public abstract Lorg/apache/harmony/jndi/provider/GenericURLContext;
.super Ljava/lang/Object;
.source "GenericURLContext.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/Context;


# instance fields
.field protected environment:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/GenericURLContext;-><init>(Ljava/util/Hashtable;)V

    .line 111
    return-void
.end method

.method protected constructor <init>(Ljava/util/Hashtable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, environment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method protected static final decodeURLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 69
    .local v7, length:I
    new-array v0, v7, [B

    .line 70
    .local v0, bytes:[B
    const/4 v5, 0x0

    .line 72
    .local v5, index:I
    const/4 v3, 0x0

    .local v3, i:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    move v6, v5

    .end local v5           #index:I
    .local v6, index:I
    :goto_0
    if-lt v4, v7, :cond_0

    .line 98
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([BII)V

    return-object v9

    .line 73
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 75
    .local v1, c:C
    const/16 v9, 0x25

    if-ne v1, v9, :cond_2

    .line 76
    add-int/lit8 v8, v3, 0x2

    .line 78
    .local v8, next:I
    if-le v8, v7, :cond_1

    .line 80
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 81
    const-string v10, "jndi.2B"

    .line 80
    invoke-static {v10, p0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 85
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .line 86
    .end local v6           #index:I
    .restart local v5       #index:I
    :try_start_0
    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    .line 85
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v0, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    move v3, v8

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    move v6, v5

    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_0

    .line 87
    .end local v4           #i:I
    .end local v6           #index:I
    .restart local v3       #i:I
    .restart local v5       #index:I
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 90
    const-string v10, "jndi.2B"

    invoke-static {v10, p0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 89
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v9, v2}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    .line 89
    check-cast v9, Ljava/lang/IllegalArgumentException;

    throw v9

    .line 95
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v5           #index:I
    .end local v8           #next:I
    .restart local v6       #index:I
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    int-to-byte v9, v1

    aput-byte v9, v0, v6

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    move v6, v5

    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_0
.end method


# virtual methods
.method public addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "propName"
    .parameter "propVal"

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 166
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 169
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lorg/apache/harmony/javax/naming/Context;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 173
    return-void

    .line 170
    :catchall_0
    move-exception v2

    .line 171
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 172
    throw v2
.end method

.method public bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 142
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 148
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->bind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 153
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/javax/naming/Context;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v1

    .line 155
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 156
    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    .line 181
    return-void
.end method

.method public composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "prefix"

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    move-object p1, p2

    goto :goto_0

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "name"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Name;

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    return-object v0
.end method

.method protected final createCannotProceedException(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/CannotProceedException;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lorg/apache/harmony/javax/naming/CannotProceedException;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/CannotProceedException;-><init>()V

    .line 216
    .local v0, cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setResolvedObj(Ljava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setEnvironment(Ljava/util/Hashtable;)V

    .line 218
    return-object v0
.end method

.method public createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 248
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 251
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/Context;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 253
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 251
    return-object v2

    .line 252
    :catchall_0
    move-exception v2

    .line 253
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 254
    throw v2
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 226
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 232
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    .line 234
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 236
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 238
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v1

    .line 238
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 239
    throw v1
.end method

.method public destroySubcontext(Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 286
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 289
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/Context;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 293
    return-void

    .line 290
    :catchall_0
    move-exception v2

    .line 291
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 292
    throw v2
.end method

.method public destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 262
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 268
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->destroySubcontext(Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 273
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v1

    .line 275
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 276
    throw v1
.end method

.method protected getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->createCannotProceedException(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/CannotProceedException;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getContinuationContext(Lorg/apache/harmony/javax/naming/CannotProceedException;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 316
    return-object v0
.end method

.method public getEnvironment()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0
.end method

.method public getNameInNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string v0, ""

    return-object v0
.end method

.method public getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 363
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 366
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/Context;->getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 368
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 366
    return-object v2

    .line 367
    :catchall_0
    move-exception v2

    .line 368
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 369
    throw v2
.end method

.method public getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 341
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 343
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 347
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;

    move-result-object v1

    .line 351
    :goto_0
    return-object v1

    .line 349
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 351
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 353
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v1

    .line 353
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 354
    throw v1
.end method

.method protected abstract getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/spi/ResolveResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method protected getURLPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 422
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 423
    .local v0, index:I
    if-gez v0, :cond_0

    .line 425
    new-instance v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    .line 426
    const-string v3, "jndi.2A"

    .line 425
    invoke-static {v3, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 430
    const-string v2, "//"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    const/16 v2, 0x2f

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 432
    .local v1, slashPos:I
    if-ltz v1, :cond_2

    move v0, v1

    .line 434
    .end local v1           #slashPos:I
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 432
    .restart local v1       #slashPos:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method protected getURLSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 5
    .parameter "prefix"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 469
    .local v1, length:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_0

    .line 472
    new-instance v3, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v3}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 479
    .end local v1           #length:I
    :goto_0
    return-object v3

    .line 476
    .restart local v1       #length:I
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .end local v1           #length:I
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, suffix:Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v3}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    invoke-static {v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->decodeURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/javax/naming/CompositeName;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/apache/harmony/javax/naming/InvalidNameException;

    invoke-direct {v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>()V

    .line 482
    invoke-virtual {v3, v0}, Lorg/apache/harmony/javax/naming/InvalidNameException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 481
    check-cast v3, Lorg/apache/harmony/javax/naming/InvalidNameException;

    throw v3
.end method

.method public list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 516
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 519
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/Context;->list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 521
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 519
    return-object v2

    .line 520
    :catchall_0
    move-exception v2

    .line 521
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 522
    throw v2
.end method

.method public list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 492
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 494
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 498
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    .line 503
    :goto_0
    return-object v1

    .line 500
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 503
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 505
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_0

    .line 504
    :catchall_0
    move-exception v1

    .line 505
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 506
    throw v1
.end method

.method public listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 555
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 558
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/Context;->listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 560
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 558
    return-object v2

    .line 559
    :catchall_0
    move-exception v2

    .line 560
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 561
    throw v2
.end method

.method public listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 531
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 533
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 537
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    .line 542
    :goto_0
    return-object v1

    .line 539
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 542
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 544
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v1

    .line 544
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 545
    throw v1
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 591
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 594
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/Context;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 596
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 594
    return-object v2

    .line 595
    :catchall_0
    move-exception v2

    .line 596
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 597
    throw v2
.end method

.method public lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 569
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 571
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 575
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 579
    :goto_0
    return-object v1

    .line 577
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 579
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 581
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v1

    .line 581
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 582
    throw v1
.end method

.method public lookupLink(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 626
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 627
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 630
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/Context;->lookupLink(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 632
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 630
    return-object v2

    .line 631
    :catchall_0
    move-exception v2

    .line 632
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 633
    throw v2
.end method

.method public lookupLink(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 605
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 607
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 610
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 611
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->lookupLink(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 615
    :goto_0
    return-object v1

    .line 613
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 615
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->lookupLink(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 617
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v1

    .line 617
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 618
    throw v1
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 664
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 665
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 668
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lorg/apache/harmony/javax/naming/Context;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 672
    return-void

    .line 669
    :catchall_0
    move-exception v2

    .line 670
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 671
    throw v2
.end method

.method public rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 641
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 643
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 647
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->rebind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    :goto_0
    return-void

    .line 649
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 652
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/javax/naming/Context;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v1

    .line 654
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 655
    throw v1
.end method

.method public removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "propName"

    .prologue
    .line 679
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getURLPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, oldPrefix:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getURLPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, newPrefix:Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->urlEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 745
    new-instance v4, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    .line 746
    const-string v5, "jndi.29"

    .line 745
    invoke-static {v5, p1, p2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 748
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v4}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v3

    .line 749
    .local v3, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v3}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 752
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v4

    .line 753
    invoke-virtual {p0, v1, p2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getURLSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v5

    .line 752
    invoke-interface {v0, v4, v5}, Lorg/apache/harmony/javax/naming/Context;->rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 757
    return-void

    .line 754
    :catchall_0
    move-exception v4

    .line 755
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 756
    throw v4
.end method

.method public rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V
    .locals 5
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 690
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 692
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    .line 693
    const-string v2, "jndi.26"

    .line 692
    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :cond_0
    instance-of v1, p2, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_1

    .line 698
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    .line 699
    const-string v2, "jndi.26"

    .line 698
    invoke-static {v2, p2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :cond_1
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v4

    if-eq v4, v2, :cond_3

    move v4, v2

    :goto_1
    xor-int/2addr v1, v4

    if-eqz v1, :cond_4

    .line 706
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    .line 707
    const-string v2, "jndi.27"

    .line 706
    invoke-static {v2, p1, p2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v1, v3

    .line 702
    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    .line 710
    :cond_4
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 711
    invoke-interface {p1, v3}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :goto_2
    return-void

    .line 713
    :cond_5
    invoke-interface {p1, v3}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->urlEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 716
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    .line 717
    const-string v2, "jndi.28"

    .line 716
    invoke-static {v2, p1, p2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 719
    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 722
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/javax/naming/Context;->rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_2

    .line 723
    :catchall_0
    move-exception v1

    .line 724
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 725
    throw v1
.end method

.method public unbind(Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 787
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/GenericURLContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getRootURLContext(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;

    move-result-object v1

    .line 788
    .local v1, result:Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getResolvedObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .line 791
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/spi/ResolveResult;->getRemainingName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/Context;->unbind(Lorg/apache/harmony/javax/naming/Name;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 795
    return-void

    .line 792
    :catchall_0
    move-exception v2

    .line 793
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 794
    throw v2
.end method

.method public unbind(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 764
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_0

    .line 766
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.26"

    invoke-static {v2, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 769
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 770
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->unbind(Ljava/lang/String;)V

    .line 780
    :goto_0
    return-void

    .line 772
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/GenericURLContext;->getContinuationContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 775
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->unbind(Lorg/apache/harmony/javax/naming/Name;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    goto :goto_0

    .line 776
    :catchall_0
    move-exception v1

    .line 777
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Context;->close()V

    .line 778
    throw v1
.end method

.method protected urlEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url1"
    .parameter "url2"

    .prologue
    .line 816
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
