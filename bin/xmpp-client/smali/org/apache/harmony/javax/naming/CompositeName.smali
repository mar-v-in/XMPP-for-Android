.class public Lorg/apache/harmony/javax/naming/CompositeName;
.super Ljava/lang/Object;
.source "CompositeName.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/Name;


# static fields
.field private static final IN_DOUBLE_QUOTE:I = 0x2

.field private static final IN_SINGLE_QUOTE:I = 0x1

.field private static final OUT_OF_QUOTE:I = 0x0

.field private static final QUOTE_ENDED:I = 0x3

.field private static final serialVersionUID:J = 0x17251a4b93d67afeL


# instance fields
.field private transient elems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    .line 314
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-static {p1}, Lorg/apache/harmony/javax/naming/CompositeName;->parseName(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    .line 353
    return-void
.end method

.method protected constructor <init>(Ljava/util/Enumeration;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, elements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    .line 325
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, elements:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    .line 339
    return-void
.end method

.method private static formatName(Ljava/util/Vector;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, elems:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/16 v7, 0x22

    const/16 v6, 0x2f

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 158
    .local v1, elemSize:I
    invoke-static {p0}, Lorg/apache/harmony/javax/naming/CompositeName;->isAllEmptyElements(Ljava/util/Vector;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    :goto_1
    return-object v4

    .line 161
    :cond_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v2           #index:I
    :cond_1
    const/4 v0, 0x0

    .line 168
    .local v0, elem:Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #index:I
    :goto_2
    if-lt v2, v1, :cond_2

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elem:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 170
    .restart local v0       #elem:Ljava/lang/String;
    if-lez v2, :cond_3

    .line 171
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 175
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 179
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static isAllEmptyElements(Ljava/util/Vector;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, elems:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 187
    .local v0, elemSize:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 192
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 188
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 189
    const/4 v2, 0x0

    goto :goto_1

    .line 187
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static isAllSlash(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 197
    .local v1, nameChars:[C
    array-length v4, v1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_1

    .line 202
    const/4 v2, 0x1

    :cond_0
    return v2

    .line 197
    :cond_1
    aget-char v0, v1, v3

    .line 198
    .local v0, nameChar:C
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_0

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static parseName(Ljava/lang/String;)Ljava/util/Vector;
    .locals 13
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 213
    .local v9, result:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/harmony/javax/naming/CompositeName;->isAllSlash(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 215
    .local v7, length:I
    const/4 v5, 0x0

    .local v5, index:I
    :goto_0
    if-lt v5, v7, :cond_1

    .line 302
    .end local v5           #index:I
    .end local v7           #length:I
    :cond_0
    :goto_1
    return-object v9

    .line 216
    .restart local v5       #index:I
    .restart local v7       #length:I
    :cond_1
    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 222
    .end local v5           #index:I
    .end local v7           #length:I
    :cond_2
    const/16 v11, 0x22

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_4

    const/16 v11, 0x27

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_4

    .line 223
    const/16 v11, 0x5c

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_4

    .line 224
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v6, 0x0

    .line 225
    .local v6, j:I
    :goto_2
    const/16 v11, 0x2f

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-gez v6, :cond_3

    .line 229
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_3
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v4, v6, 0x1

    goto :goto_2

    .line 235
    .end local v4           #i:I
    .end local v6           #j:I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 236
    .local v1, chars:[C
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 238
    .local v10, status:I
    const/4 v5, 0x0

    .restart local v5       #index:I
    :goto_3
    array-length v11, v1

    if-lt v5, v11, :cond_5

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 298
    if-eqz v10, :cond_0

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    .line 300
    new-instance v11, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v12, "jndi.0E"

    invoke-static {v12}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 239
    :cond_5
    aget-char v2, v1, v5

    .line 242
    .local v2, curC:C
    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 243
    const/16 v11, 0x2f

    if-ne v2, v11, :cond_6

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 245
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 246
    const/4 v10, 0x0

    .line 238
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 250
    :cond_6
    new-instance v11, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v12, "jndi.0C"

    invoke-static {v12}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 253
    :cond_7
    const/16 v11, 0x5c

    if-ne v2, v11, :cond_a

    .line 256
    add-int/lit8 v5, v5, 0x1

    :try_start_0
    aget-char v8, v1, v5

    .line 257
    .local v8, nextC:C
    const/16 v11, 0x5c

    if-eq v8, v11, :cond_8

    const/16 v11, 0x27

    if-eq v8, v11, :cond_8

    const/16 v11, 0x22

    if-eq v8, v11, :cond_8

    .line 258
    const/16 v11, 0x2f

    if-ne v8, v11, :cond_9

    .line 259
    :cond_8
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 264
    .end local v8           #nextC:C
    :catch_0
    move-exception v3

    .line 266
    .local v3, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v11, Lorg/apache/harmony/javax/naming/InvalidNameException;

    .line 267
    const-string v12, "jndi.0D"

    invoke-static {v12}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 266
    invoke-direct {v11, v12}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 261
    .end local v3           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v8       #nextC:C
    :cond_9
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 271
    .end local v8           #nextC:C
    :cond_a
    const/16 v11, 0x2f

    if-eq v2, v11, :cond_b

    const/16 v11, 0x22

    if-eq v2, v11, :cond_b

    const/16 v11, 0x27

    if-eq v2, v11, :cond_b

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 278
    :cond_b
    if-nez v10, :cond_c

    const/16 v11, 0x2f

    if-ne v2, v11, :cond_c

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 280
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4

    .line 281
    :cond_c
    if-nez v10, :cond_d

    const/16 v11, 0x27

    if-ne v2, v11, :cond_d

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_d

    .line 283
    const/4 v10, 0x1

    goto :goto_4

    .line 284
    :cond_d
    if-nez v10, :cond_e

    const/16 v11, 0x22

    if-ne v2, v11, :cond_e

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_e

    .line 286
    const/4 v10, 0x2

    goto :goto_4

    .line 287
    :cond_e
    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    const/16 v11, 0x27

    if-ne v2, v11, :cond_f

    .line 288
    const/4 v10, 0x3

    goto/16 :goto_4

    .line 289
    :cond_f
    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    const/16 v11, 0x22

    if-ne v2, v11, :cond_10

    .line 290
    const/4 v10, 0x3

    goto/16 :goto_4

    .line 292
    :cond_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 570
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 571
    .local v1, size:I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    .line 572
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 575
    return-void

    .line 573
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 572
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
    .line 634
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 636
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 637
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    return-void

    .line 637
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 638
    .local v0, element:Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "index"
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 357
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 360
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 361
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 367
    return-object p0
.end method

.method public addAll(ILorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 4
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 372
    if-nez p2, :cond_0

    .line 373
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 375
    :cond_0
    instance-of v2, p2, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v2, :cond_1

    .line 377
    new-instance v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v3, "jndi.0F"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 380
    :cond_1
    if-ltz p1, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le p1, v2, :cond_3

    .line 381
    :cond_2
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 383
    :cond_3
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->getAll()Ljava/util/Enumeration;

    move-result-object v0

    .line 384
    .local v0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_4

    .line 387
    return-object p0

    .line 385
    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    move p1, v1

    .end local v1           #index:I
    .restart local p1
    goto :goto_0
.end method

.method public addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 395
    :cond_0
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v1, :cond_1

    .line 397
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.0F"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_1
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->getAll()Ljava/util/Enumeration;

    move-result-object v0

    .line 401
    .local v0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    .line 404
    return-object p0

    .line 402
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 436
    if-ne p1, p0, :cond_0

    move v0, v5

    .line 458
    .end local p1
    :goto_0
    return v0

    .line 439
    .restart local p1
    :cond_0
    instance-of v3, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v3, :cond_1

    .line 440
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-direct {v3}, Ljava/lang/ClassCastException;-><init>()V

    throw v3

    .line 443
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 444
    .local v2, thisIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    check-cast p1, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local p1
    iget-object v3, p1, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 446
    .local v1, thatIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 452
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 453
    const/4 v0, 0x1

    goto :goto_0

    .line 447
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 448
    .local v0, compareResult:I
    if-eqz v0, :cond_2

    goto :goto_0

    .line 455
    .end local v0           #compareResult:I
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 456
    const/4 v0, -0x1

    goto :goto_0

    :cond_6
    move v0, v5

    .line 458
    goto :goto_0
.end method

.method public endsWith(Lorg/apache/harmony/javax/naming/Name;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 463
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v2, :cond_0

    move v2, v3

    .line 479
    :goto_0
    return v2

    .line 467
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    iget-object v4, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v2, v4, :cond_1

    move v2, v3

    .line 468
    goto :goto_0

    .line 472
    :cond_1
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->getAll()Ljava/util/Enumeration;

    move-result-object v0

    .line 473
    .local v0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v4

    sub-int v1, v2, v4

    .line 474
    .local v1, index:I
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    .line 473
    if-nez v2, :cond_2

    .line 479
    const/4 v2, 0x1

    goto :goto_0

    .line 475
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 476
    goto :goto_0

    .line 474
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 494
    instance-of v3, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v3, :cond_0

    move v3, v4

    .line 509
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 497
    check-cast v0, Lorg/apache/harmony/javax/naming/CompositeName;

    .line 498
    .local v0, that:Lorg/apache/harmony/javax/naming/CompositeName;
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CompositeName;->size()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/CompositeName;->size()I

    move-result v5

    if-eq v3, v5, :cond_1

    move v3, v4

    .line 499
    goto :goto_0

    .line 502
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 503
    .local v2, thisIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v3, v0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 504
    .local v1, thatIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 509
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 505
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 506
    goto :goto_0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 514
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAll()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(I)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "index"

    .prologue
    .line 524
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 525
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 527
    :cond_1
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getSuffix(I)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "index"

    .prologue
    .line 532
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 535
    :cond_1
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, hashCode:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 550
    return v0

    .line 548
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 579
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 582
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/harmony/javax/naming/Name;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 592
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v2, :cond_0

    move v2, v3

    .line 606
    :goto_0
    return v2

    .line 596
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    iget-object v4, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v2, v4, :cond_1

    move v2, v3

    .line 597
    goto :goto_0

    .line 600
    :cond_1
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->getAll()Ljava/util/Enumeration;

    move-result-object v0

    .line 601
    .local v0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    .line 606
    const/4 v2, 0x1

    goto :goto_0

    .line 602
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 603
    goto :goto_0

    .line 601
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompositeName;->elems:Ljava/util/Vector;

    invoke-static {v0}, Lorg/apache/harmony/javax/naming/CompositeName;->formatName(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
