.class public abstract Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
.super Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySet;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySet;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySetIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceMapIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValuesIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$SoftRef;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$WeakRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final HARD:I = 0x0

.field public static final SOFT:I = 0x1

.field public static final WEAK:I = 0x2


# instance fields
.field protected keyType:I

.field protected purgeValues:Z

.field private transient queue:Ljava/lang/ref/ReferenceQueue;

.field protected valueType:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 671
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;-><init>()V

    .line 672
    return-void
.end method

.method protected constructor <init>(IIIFZ)V
    .locals 1
    .parameter "keyType"
    .parameter "valueType"
    .parameter "capacity"
    .parameter "loadFactor"
    .parameter "purgeValues"

    .prologue
    .line 694
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-direct {p0, p3, p4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;-><init>(IF)V

    .line 695
    const-string v0, "keyType"

    invoke-static {v0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->verify(Ljava/lang/String;I)V

    .line 696
    const-string v0, "valueType"

    invoke-static {v0, p2}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->verify(Ljava/lang/String;I)V

    .line 697
    iput p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    .line 698
    iput p2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    .line 699
    iput-boolean p5, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeValues:Z

    .line 700
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static verify(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "type"

    .prologue
    .line 635
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 636
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    const-string v2, " must be HARD, SOFT, WEAK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 707
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->clear()V

    .line 708
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 710
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 721
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeRead()V

    .line 722
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 723
    .local v0, entry:Ljava/util/Map$Entry;
    if-nez v0, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 738
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeRead()V

    .line 739
    if-nez p1, :cond_0

    .line 740
    const/4 v0, 0x0

    .line 742
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public createEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 6
    .parameter
    .parameter "hashCode"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;ITK;TV;)",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    .local p1, next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .local p3, key:Ljava/lang/Object;,"TK;"
    .local p4, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-object v2, p1

    check-cast v2, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 772
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySetIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySetIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValuesIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValuesIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 817
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    .line 818
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    .line 819
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeValues:Z

    .line 820
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->loadFactor:F

    .line 821
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 822
    .local v0, capacity:I
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->init()V

    .line 823
    new-array v3, v0, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 825
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 826
    .local v1, key:Ljava/lang/Object;,"TK;"
    if-nez v1, :cond_0

    .line 832
    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v3, v3

    iget v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p0, v3, v4}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->calculateThreshold(IF)I

    move-result v3

    iput v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->threshold:I

    .line 835
    return-void

    .line 829
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 830
    .local v2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 860
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 861
    iget-boolean v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeValues:Z

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 862
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 863
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 864
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;

    move-result-object v0

    .local v0, it:Lorg/jivesoftware/smack/util/collections/MapIterator;
    :goto_0
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 868
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 871
    return-void

    .line 865
    :cond_0
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 866
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 883
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    .line 884
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySet;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySet;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    .line 886
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 898
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeRead()V

    .line 899
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 900
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 901
    const/4 v1, 0x0

    .line 903
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 916
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 917
    const/4 v0, 0x0

    .line 919
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    goto :goto_0
.end method

.method protected hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 934
    if-nez p1, :cond_0

    move v1, v0

    .line 935
    :goto_0
    if-nez p2, :cond_1

    .line 934
    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 935
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 943
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 944
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 953
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeRead()V

    .line 954
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 979
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 989
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    .line 990
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySet;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySet;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    .line 992
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/MapIterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1004
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceMapIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceMapIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected purge()V
    .locals 2

    .prologue
    .line 1015
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 1016
    .local v0, ref:Ljava/lang/ref/Reference;
    :goto_0
    if-nez v0, :cond_0

    .line 1020
    return-void

    .line 1017
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purge(Ljava/lang/ref/Reference;)V

    .line 1018
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method protected purge(Ljava/lang/ref/Reference;)V
    .locals 6
    .parameter "ref"

    .prologue
    .line 1032
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1033
    .local v1, hash:I
    iget-object v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v4, v4

    invoke-virtual {p0, v1, v4}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->hashIndex(II)I

    move-result v2

    .line 1034
    .local v2, index:I
    const/4 v3, 0x0

    .line 1035
    .local v3, previous:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    iget-object v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v0, v4, v2

    .line 1036
    .local v0, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 1050
    :goto_1
    return-void

    :cond_0
    move-object v4, v0

    .line 1037
    check-cast v4, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v4, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->purge(Ljava/lang/ref/Reference;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1038
    if-nez v3, :cond_1

    .line 1039
    iget-object v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iget-object v5, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aput-object v5, v4, v2

    .line 1043
    :goto_2
    iget v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->size:I

    goto :goto_1

    .line 1041
    :cond_1
    iget-object v4, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v4, v3, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_2

    .line 1046
    :cond_2
    move-object v3, v0

    .line 1047
    iget-object v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected purgeBeforeRead()V
    .locals 0

    .prologue
    .line 1060
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purge()V

    .line 1061
    return-void
.end method

.method protected purgeBeforeWrite()V
    .locals 0

    .prologue
    .line 1070
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purge()V

    .line 1071
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1092
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 1093
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null keys not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1095
    :cond_0
    if-nez p2, :cond_1

    .line 1096
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null values not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeWrite()V

    .line 1100
    invoke-super {p0, p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1112
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 1113
    const/4 v0, 0x0

    .line 1116
    :goto_0
    return-object v0

    .line 1115
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeWrite()V

    .line 1116
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1127
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeRead()V

    .line 1128
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1138
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    .line 1139
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    .line 1141
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    return-object v0
.end method
