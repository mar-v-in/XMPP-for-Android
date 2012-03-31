.class public Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
.super Ljava/lang/Object;
.source "BasicAttribute.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/directory/Attribute;


# static fields
.field private static final serialVersionUID:J = 0x5d95d32a668565beL


# instance fields
.field protected attrID:Ljava/lang/String;

.field protected ordered:Z

.field protected transient values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "id"
    .parameter "val"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "id"
    .parameter "val"
    .parameter "flag"

    .prologue
    .line 139
    invoke-direct {p0, p1, p3}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Z)V

    .line 140
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "id"
    .parameter "flag"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    .line 109
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->attrID:Ljava/lang/String;

    .line 110
    iput-boolean p2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->ordered:Z

    .line 111
    return-void
.end method

.method private compareValueClasses(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, c1:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local p2, c2:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v0, 0x1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    :cond_1
    :goto_0
    return v0

    .line 198
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private compareValues(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 218
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v3

    .line 221
    :cond_1
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->compareValueClasses(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 228
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 233
    .local v0, i:I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v0, :cond_5

    .line 235
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 236
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 237
    .local v1, val1:Ljava/lang/Object;
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 238
    .local v2, val2:Ljava/lang/Object;
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_2
    move v3, v4

    .line 244
    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #val1:Ljava/lang/Object;
    .end local v2           #val2:Ljava/lang/Object;
    :cond_5
    move v3, v4

    .line 251
    goto :goto_0

    .end local v0           #i:I
    :cond_6
    move v3, v4

    .line 254
    goto :goto_0

    .line 257
    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_8
    move v3, v4

    .line 260
    goto :goto_0
.end method

.method private hashCodeOfValue(Ljava/lang/Object;)I
    .locals 4
    .parameter "obj"

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 405
    .local v1, hashcode:I
    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, element:Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .end local v0           #element:Ljava/lang/Object;
    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 422
    .end local v2           #i:I
    :cond_0
    :goto_1
    return v1

    .line 411
    .restart local v2       #i:I
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 412
    .restart local v0       #element:Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 410
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 418
    .end local v0           #element:Ljava/lang/Object;
    .end local v2           #i:I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 440
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 441
    .local v1, size:I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    .line 442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 445
    return-void

    .line 443
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 510
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 511
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    return-void

    .line 511
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, object:Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "val"

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->ordered:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "jndi.16"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "val"

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->ordered:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 170
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 176
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    .line 177
    .local v0, attr:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    iput-object v2, v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return-object v0

    .line 179
    .end local v0           #attr:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    :catch_0
    move-exception v1

    .line 181
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "jndi.17"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "val"

    .prologue
    .line 266
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 268
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 269
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->compareValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    instance-of v6, p1, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    if-eqz v6, :cond_0

    move-object v0, p1

    .line 294
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    .line 296
    .local v0, a:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->attrID:Ljava/lang/String;

    iget-object v7, v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->attrID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 334
    .end local v0           #a:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    :cond_0
    :goto_0
    return v4

    .line 299
    .restart local v0       #a:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    :cond_1
    iget-boolean v6, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->ordered:Z

    iget-boolean v7, v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->ordered:Z

    if-ne v6, v7, :cond_0

    .line 302
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    iget-object v7, v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 305
    iget-boolean v6, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->ordered:Z

    if-eqz v6, :cond_4

    .line 307
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 308
    .local v2, e1:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    iget-object v6, v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 310
    .local v3, e2:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    .line 317
    goto :goto_0

    .line 311
    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->compareValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 323
    .end local v2           #e1:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v3           #e2:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_4
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 325
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 330
    goto :goto_0

    .line 326
    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "jndi.18"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getAttributeDefinition()Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    const-string v1, "jndi.19"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeSyntaxDefinition()Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    const-string v1, "jndi.19"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->attrID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 384
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->attrID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 385
    .local v1, i:I
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 387
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 394
    return v1

    .line 388
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 389
    .local v2, o:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 390
    invoke-direct {p0, v2}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->hashCodeOfValue(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public isOrdered()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->ordered:Z

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "val"

    .prologue
    .line 454
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 456
    .local v1, total:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 462
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 457
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->compareValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 459
    const/4 v2, 0x1

    goto :goto_1

    .line 456
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "val"

    .prologue
    .line 467
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->ordered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "jndi.16"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 488
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 489
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attribute ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->attrID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\nAttribute values: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "This Attribute does not have any values."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 495
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 496
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
