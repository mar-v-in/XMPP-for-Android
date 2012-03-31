.class public Lorg/apache/harmony/javax/naming/directory/BasicAttributes;
.super Ljava/lang/Object;
.source "BasicAttributes.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/directory/Attributes;


# static fields
.field private static final serialVersionUID:J = 0x451d18d6a95539d8L


# instance fields
.field private transient attrMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreCase:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "attrId"
    .parameter "attrObj"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "attrId"
    .parameter "attrObj"
    .parameter "flag"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    .line 115
    iput-boolean p3, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->ignoreCase:Z

    .line 116
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->convertId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    invoke-direct {v2, p1, p2}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    .line 87
    iput-boolean p1, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->ignoreCase:Z

    .line 88
    return-void
.end method

.method private convertId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->ignoreCase:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 253
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 254
    .local v2, size:I
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    .line 255
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 259
    return-void

    .line 256
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    .line 257
    .local v0, attr:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->convertId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 312
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 313
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 314
    .local v0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    .line 313
    if-nez v1, :cond_0

    .line 317
    return-void

    .line 315
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 130
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    .line 131
    .local v0, c:Lorg/apache/harmony/javax/naming/directory/BasicAttributes;
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    iput-object v2, v0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-object v0

    .line 133
    .end local v0           #c:Lorg/apache/harmony/javax/naming/directory/BasicAttributes;
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "jndi.15"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 160
    instance-of v3, p1, Lorg/apache/harmony/javax/naming/directory/Attributes;

    if-nez v3, :cond_0

    move v3, v5

    .line 180
    :goto_0
    return v3

    :cond_0
    move-object v2, p1

    .line 165
    check-cast v2, Lorg/apache/harmony/javax/naming/directory/Attributes;

    .line 166
    .local v2, o:Lorg/apache/harmony/javax/naming/directory/Attributes;
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->isCaseIgnored()Z

    move-result v3

    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->isCaseIgnored()Z

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->size()I

    move-result v3

    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_1
    move v3, v5

    .line 167
    goto :goto_0

    .line 171
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 172
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 173
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attribute;>;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 180
    const/4 v3, 0x1

    goto :goto_0

    .line 174
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    .line 176
    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;
    .locals 2
    .parameter "id"

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->convertId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/Attribute;

    return-object v0
.end method

.method public getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getIDs()Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-boolean v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->ignoreCase:Z

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 197
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 199
    .local v1, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;-><init>(Ljava/util/Enumeration;)V

    .line 205
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    .end local v1           #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .line 200
    .restart local v0       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    .restart local v1       #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    .end local v1           #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;

    iget-object v3, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;-><init>(Ljava/util/Enumeration;)V

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 217
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 218
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    iget-boolean v2, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->ignoreCase:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 220
    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    return v1

    .line 218
    .end local v1           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 221
    .restart local v1       #i:I
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public isCaseIgnored()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->ignoreCase:Z

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/javax/naming/directory/Attribute;
    .locals 1
    .parameter "id"
    .parameter "obj"

    .prologue
    .line 240
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;
    .locals 2
    .parameter "attribute"

    .prologue
    .line 234
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->convertId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/directory/Attribute;

    return-object v1
.end method

.method public remove(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;
    .locals 2
    .parameter "id"

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->convertId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/Attribute;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->attrMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 282
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 283
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attribute;>;>;"
    const/4 v0, 0x0

    .line 285
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    const-string v2, "{\n"

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "}\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    :goto_1
    return-object v2

    .line 292
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 293
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 300
    :cond_1
    const-string v2, "This Attributes does not have any attributes.\n"

    goto :goto_1
.end method
