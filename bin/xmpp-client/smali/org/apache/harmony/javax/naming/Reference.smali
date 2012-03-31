.class public Lorg/apache/harmony/javax/naming/Reference;
.super Ljava/lang/Object;
.source "Reference.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1739615d571672f7L


# instance fields
.field protected addrs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/javax/naming/RefAddr;",
            ">;"
        }
    .end annotation
.end field

.field protected classFactory:Ljava/lang/String;

.field protected classFactoryLocation:Ljava/lang/String;

.field protected className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "className"

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/javax/naming/Reference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "className"
    .parameter "classFactory"
    .parameter "classFactoryLocation"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/Reference;->className:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lorg/apache/harmony/javax/naming/Reference;->classFactory:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lorg/apache/harmony/javax/naming/Reference;->classFactoryLocation:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/RefAddr;)V
    .locals 1
    .parameter "className"
    .parameter "addr"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/harmony/javax/naming/Reference;-><init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/RefAddr;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/RefAddr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "className"
    .parameter "addr"
    .parameter "classFactory"
    .parameter "classFactoryLocation"

    .prologue
    .line 117
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/harmony/javax/naming/Reference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method


# virtual methods
.method public add(ILorg/apache/harmony/javax/naming/RefAddr;)V
    .locals 1
    .parameter "index"
    .parameter "addr"

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 158
    return-void
.end method

.method public add(Lorg/apache/harmony/javax/naming/RefAddr;)V
    .locals 1
    .parameter "addr"

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 175
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 186
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/Reference;

    .line 187
    .local v1, reference:Lorg/apache/harmony/javax/naming/Reference;
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    iput-object v2, v1, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    return-object v1

    .line 189
    .end local v1           #reference:Lorg/apache/harmony/javax/naming/Reference;
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "jndi.03"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    if-ne p1, p0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/javax/naming/Reference;

    if-nez v3, :cond_2

    move v1, v2

    .line 212
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 214
    check-cast v0, Lorg/apache/harmony/javax/naming/Reference;

    .line 215
    .local v0, ref:Lorg/apache/harmony/javax/naming/Reference;
    iget-object v3, v0, Lorg/apache/harmony/javax/naming/Reference;->className:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/javax/naming/Reference;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    iget-object v3, v0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 215
    goto :goto_0
.end method

.method public get(I)Lorg/apache/harmony/javax/naming/RefAddr;
    .locals 1
    .parameter "index"

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/RefAddr;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/RefAddr;
    .locals 3
    .parameter "type"

    .prologue
    .line 243
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 244
    .local v0, elements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/RefAddr;>;"
    const/4 v1, 0x0

    .line 246
    .local v1, refAddr:Lorg/apache/harmony/javax/naming/RefAddr;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 247
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #refAddr:Lorg/apache/harmony/javax/naming/RefAddr;
    check-cast v1, Lorg/apache/harmony/javax/naming/RefAddr;

    .line 248
    .restart local v1       #refAddr:Lorg/apache/harmony/javax/naming/RefAddr;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/RefAddr;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 249
    goto :goto_0
.end method

.method public getAll()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/RefAddr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFactoryClassLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->classFactoryLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getFactoryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->classFactory:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 303
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/Reference;->className:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 304
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 305
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/RefAddr;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    return v1

    .line 306
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/RefAddr;

    invoke-virtual {v2}, Lorg/apache/harmony/javax/naming/RefAddr;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reference Class Name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/Reference;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 345
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/Reference;->addrs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 346
    .local v0, elements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/RefAddr;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    .end local v0           #elements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/RefAddr;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 347
    .restart local v0       #elements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/RefAddr;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/RefAddr;

    invoke-virtual {v2}, Lorg/apache/harmony/javax/naming/RefAddr;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
