.class public Lorg/apache/harmony/jndi/provider/dns/DNSName;
.super Ljava/lang/Object;
.source "DNSName.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/Name;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x5250417f2d140da5L


# instance fields
.field private final components:Ljava/util/Vector;
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, compVect:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    .line 75
    return-void
.end method

.method static componentIsOk(Ljava/lang/String;)Z
    .locals 2
    .parameter "comp"

    .prologue
    .line 50
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 2
    .parameter "posn"
    .parameter "comp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p2}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->componentIsOk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v1, "jndi.30"

    invoke-static {v1, p2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 99
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 2
    .parameter "comp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->componentIsOk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v1, "jndi.30"

    invoke-static {v1, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 119
    return-object p0
.end method

.method public addAll(ILorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "posn"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 140
    instance-of v1, p2, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.31"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    check-cast p2, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .end local p2
    iget-object v0, p2, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    .line 145
    .local v0, newComps:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z

    .line 146
    return-object p0
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
    .line 164
    instance-of v1, p1, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v2, "jndi.31"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    check-cast p1, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .end local p1
    iget-object v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    .line 169
    .local v0, newComps:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 170
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 181
    .local v0, compClone:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 183
    .local v1, compEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    new-instance v2, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-direct {v2, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>(Ljava/util/Vector;)V

    return-object v2

    .line 184
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 8
    .parameter "name"

    .prologue
    .line 210
    const/4 v5, 0x0

    .line 214
    .local v5, nameToCompareWith:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    if-nez p1, :cond_0

    .line 216
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "jndi.2E"

    invoke-static {v7}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 218
    :cond_0
    instance-of v6, p1, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    if-nez v6, :cond_1

    .line 220
    new-instance v6, Ljava/lang/ClassCastException;

    const-string v7, "jndi.2F"

    invoke-static {v7}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v5, p1

    .line 222
    check-cast v5, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 223
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->getAll()Ljava/util/Enumeration;

    move-result-object v2

    .line 224
    .local v2, enum1:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-virtual {v5}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->getAll()Ljava/util/Enumeration;

    move-result-object v3

    .line 225
    .local v3, enum2:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_3

    .line 239
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 240
    const/4 v4, -0x1

    .line 242
    :goto_0
    return v4

    .line 226
    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    .local v0, comp1:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_4

    .line 231
    const/4 v4, 0x1

    goto :goto_0

    .line 233
    :cond_4
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, comp2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    .line 235
    .local v4, k:I
    if-eqz v4, :cond_2

    goto :goto_0

    .line 242
    .end local v0           #comp1:Ljava/lang/String;
    .end local v1           #comp2:Ljava/lang/String;
    .end local v4           #k:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public endsWith(Lorg/apache/harmony/javax/naming/Name;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 257
    const/4 v0, -0x1

    .line 261
    .local v0, k:I
    if-nez p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v4

    .line 264
    :cond_1
    instance-of v5, p1, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    if-eqz v5, :cond_0

    .line 267
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->size()I

    move-result v1

    .line 268
    .local v1, len1:I
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    .line 269
    .local v2, len2:I
    if-ne v1, v2, :cond_3

    .line 271
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->compareTo(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 281
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 276
    :cond_3
    if-le v1, v2, :cond_2

    .line 277
    sub-int v5, v1, v2

    invoke-virtual {p0, v5}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    .line 279
    .local v3, suffix:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v3, p1}, Lorg/apache/harmony/javax/naming/Name;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 272
    .end local v3           #suffix:Lorg/apache/harmony/javax/naming/Name;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .parameter "posn"

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

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
    .line 305
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(I)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "posn"

    .prologue
    .line 320
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 322
    .local v1, prefix:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 325
    new-instance v2, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-direct {v2, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>(Ljava/util/Vector;)V

    return-object v2

    .line 323
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSuffix(I)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "posn"

    .prologue
    .line 340
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 342
    .local v1, prefix:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    move v0, p1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 345
    new-instance v2, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-direct {v2, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>(Ljava/util/Vector;)V

    return-object v2

    .line 343
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 353
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 354
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    .local v0, el0:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 357
    const/4 v1, 0x1

    .line 360
    .end local v0           #el0:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "posn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/harmony/javax/naming/Name;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 407
    const/4 v0, -0x1

    .line 411
    .local v0, k:I
    if-nez p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v4

    .line 414
    :cond_1
    instance-of v5, p1, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    if-eqz v5, :cond_0

    .line 417
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->size()I

    move-result v1

    .line 418
    .local v1, len1:I
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    .line 419
    .local v2, len2:I
    if-ne v1, v2, :cond_3

    .line 421
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->compareTo(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 431
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 426
    :cond_3
    if-le v1, v2, :cond_2

    .line 427
    invoke-virtual {p0, v2}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    .line 429
    .local v3, prefix:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v3, p1}, Lorg/apache/harmony/javax/naming/Name;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 422
    .end local v3           #prefix:Lorg/apache/harmony/javax/naming/Name;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 452
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 444
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/DNSName;->components:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    .local v0, comp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_1

    if-nez v1, :cond_2

    .line 446
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 449
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
