.class public Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.super Ljava/util/AbstractMap;
.source "AbstractHashedMap.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/collections/IterableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySetIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySetIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$ValuesIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Lorg/jivesoftware/smack/util/collections/IterableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPACITY:I = 0x10

.field protected static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field protected static final DEFAULT_THRESHOLD:I = 0xc

.field protected static final GETKEY_INVALID:Ljava/lang/String; = "getKey() can only be called after next() and before remove()"

.field protected static final GETVALUE_INVALID:Ljava/lang/String; = "getValue() can only be called after next() and before remove()"

.field protected static final MAXIMUM_CAPACITY:I = 0x40000000

.field protected static final NO_NEXT_ENTRY:Ljava/lang/String; = "No next() entry in the iteration"

.field protected static final NO_PREVIOUS_ENTRY:Ljava/lang/String; = "No previous() entry in the iteration"

.field protected static final NULL:Ljava/lang/Object; = null

.field protected static final REMOVE_INVALID:Ljava/lang/String; = "remove() can only be called once after next()"

.field protected static final SETVALUE_INVALID:Ljava/lang/String; = "setValue() can only be called after next() and before remove()"


# instance fields
.field protected transient data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected transient entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected transient keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected transient loadFactor:F

.field protected transient modCount:I

.field protected transient size:I

.field protected transient threshold:I

.field protected transient values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 484
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 530
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 531
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 543
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;-><init>(IF)V

    .line 544
    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 2
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 560
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 561
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 563
    const-string v1, "Initial capacity must be greater than 0"

    .line 562
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 567
    const-string v1, "Load factor must be greater than 0"

    .line 566
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_2
    iput p2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    .line 570
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    .line 571
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result p1

    .line 572
    new-array v0, p1, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 573
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->init()V

    .line 574
    return-void
.end method

.method protected constructor <init>(IFI)V
    .locals 1
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "threshold"

    .prologue
    .line 588
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 589
    iput p2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    .line 590
    new-array v0, p1, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 591
    iput p3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    .line 592
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->init()V

    .line 593
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;-><init>(IF)V

    .line 605
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    .line 606
    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;I)V
    .locals 1
    .parameter
    .parameter "hashIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aput-object p1, v0, p2

    .line 621
    return-void
.end method

.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "hashIndex"
    .parameter "hashCode"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p3, key:Ljava/lang/Object;,"TK;"
    .local p4, value:Ljava/lang/Object;,"TV;"
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    .line 643
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->createEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 645
    .local v0, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->addEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;I)V

    .line 646
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    .line 647
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->checkCapacity()V

    .line 648
    return-void
.end method

.method protected calculateNewCapacity(I)I
    .locals 2
    .parameter "proposedCapacity"

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    const/high16 v1, 0x4000

    .line 659
    const/4 v0, 0x1

    .line 660
    .local v0, newCapacity:I
    if-le p1, v1, :cond_2

    .line 661
    const/high16 v0, 0x4000

    .line 670
    :cond_0
    :goto_0
    return v0

    .line 664
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 663
    :cond_2
    if-lt v0, p1, :cond_1

    .line 666
    if-le v0, v1, :cond_0

    .line 667
    const/high16 v0, 0x4000

    goto :goto_0
.end method

.method protected calculateThreshold(IF)I
    .locals 1
    .parameter "newCapacity"
    .parameter "factor"

    .prologue
    .line 684
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method protected checkCapacity()V
    .locals 3

    .prologue
    .line 695
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    iget v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    if-lt v1, v2, :cond_0

    .line 696
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v1, v1

    mul-int/lit8 v0, v1, 0x2

    .line 697
    .local v0, newCapacity:I
    const/high16 v1, 0x4000

    if-gt v0, v1, :cond_0

    .line 698
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->ensureCapacity(I)V

    .line 701
    .end local v0           #newCapacity:I
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 709
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    iget v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    .line 710
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 711
    .local v0, data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 714
    const/4 v2, 0x0

    iput v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    .line 715
    return-void

    .line 712
    :cond_0
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 711
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 729
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    .line 730
    .local v0, cloned:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v3, v3

    new-array v3, v3, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v3, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 731
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    .line 732
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    .line 733
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    .line 734
    const/4 v3, 0x0

    iput v3, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    .line 735
    const/4 v3, 0x0

    iput v3, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    .line 736
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->init()V

    .line 737
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v0           #cloned:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
    :goto_0
    return-object v0

    .line 740
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    move-object v0, v2

    .line 741
    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 755
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    if-nez p1, :cond_0

    sget-object v2, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 756
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {p0, v1, v3}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    .line 759
    .local v0, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    :goto_1
    if-nez v0, :cond_1

    .line 765
    const/4 v2, 0x0

    :goto_2
    return v2

    .end local v0           #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .end local v1           #hashCode:I
    :cond_0
    move-object v2, p1

    .line 755
    goto :goto_0

    .line 760
    .restart local v0       #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .restart local v1       #hashCode:I
    :cond_1
    iget v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 761
    const/4 v2, 0x1

    goto :goto_2

    .line 763
    :cond_2
    iget-object v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8
    .parameter "value"

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 777
    if-nez p1, :cond_4

    .line 778
    iget-object v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_2

    :cond_0
    move v2, v3

    .line 798
    :cond_1
    return v2

    .line 778
    :cond_2
    aget-object v0, v5, v4

    .line 779
    .local v0, element:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    move-object v1, v0

    .line 780
    .local v1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    :goto_1
    if-nez v1, :cond_3

    .line 778
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 781
    :cond_3
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 784
    iget-object v1, v1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1

    .line 788
    .end local v0           #element:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .end local v1           #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    :cond_4
    iget-object v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v6, v5

    move v4, v3

    :goto_2
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 789
    .restart local v0       #element:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    move-object v1, v0

    .line 790
    .restart local v1       #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    :goto_3
    if-nez v1, :cond_5

    .line 788
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 791
    :cond_5
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 794
    iget-object v1, v1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_3
.end method

.method protected createEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 1
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
    .line 819
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .local p3, key:Ljava/lang/Object;,"TK;"
    .local p4, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

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
    .line 829
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 830
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 832
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySetIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySetIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    goto :goto_0
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
    .line 842
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 843
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 845
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySetIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySetIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    goto :goto_0
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
    .line 855
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 856
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 858
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$ValuesIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$ValuesIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    goto :goto_0
.end method

.method protected destroyEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 872
    iput-object v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 873
    #setter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$0(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 874
    #setter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;
    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$1(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 875
    return-void
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 899
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v5

    iput v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    .line 900
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 901
    .local v0, capacity:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 902
    .local v3, size:I
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->init()V

    .line 903
    new-array v5, v0, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 904
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 909
    iget-object v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v5, v5

    iget v6, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, v5, v6}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v5

    iput v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    .line 910
    return-void

    .line 905
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 906
    .local v2, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 907
    .local v4, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, v2, v4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    add-int/lit8 v1, v1, 0x1

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
    .line 934
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 935
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 936
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 937
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;

    move-result-object v0

    .local v0, it:Lorg/jivesoftware/smack/util/collections/MapIterator;
    :goto_0
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    return-void

    .line 938
    :cond_0
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 939
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected ensureCapacity(I)V
    .locals 8
    .parameter "newCapacity"

    .prologue
    .line 951
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    iget-object v7, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v5, v7

    .line 952
    .local v5, oldCapacity:I
    if-gt p1, v5, :cond_0

    .line 979
    :goto_0
    return-void

    .line 955
    :cond_0
    iget v7, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    if-nez v7, :cond_1

    .line 956
    iget v7, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v7}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v7

    iput v7, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    .line 957
    new-array v7, p1, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v7, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 959
    :cond_1
    iget-object v6, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 960
    .local v6, oldEntries:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    new-array v3, p1, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 962
    .local v3, newEntries:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    iget v7, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    .line 963
    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_1
    if-gez v1, :cond_2

    .line 976
    iget v7, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v7}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v7

    iput v7, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    .line 977
    iput-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 964
    :cond_2
    aget-object v0, v6, v1

    .line 965
    .local v0, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    if-eqz v0, :cond_4

    .line 966
    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 968
    :cond_3
    iget-object v4, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 969
    .local v4, next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    iget v7, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    invoke-virtual {p0, v7, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 970
    .local v2, index:I
    aget-object v7, v3, v2

    iput-object v7, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 971
    aput-object v0, v3, v2

    .line 972
    move-object v0, v4

    .line 973
    if-nez v0, :cond_3

    .line 963
    .end local v2           #index:I
    .end local v4           #next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method protected entryHashCode(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 993
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    iget v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    return v0
.end method

.method protected entryKey(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 1008
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    #getter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$2(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected entryNext(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1024
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    iget-object v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    return-object v0
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
    .line 1036
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    .line 1039
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method protected entryValue(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    #getter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;
    invoke-static {p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$3(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "obj"

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1066
    if-ne p1, p0, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return v5

    .line 1069
    :cond_1
    instance-of v7, p1, Ljava/util/Map;

    if-nez v7, :cond_2

    move v5, v6

    .line 1070
    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 1072
    check-cast v3, Ljava/util/Map;

    .line 1073
    .local v3, map:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    move v5, v6

    .line 1074
    goto :goto_0

    .line 1076
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;

    move-result-object v1

    .line 1078
    .local v1, it:Lorg/jivesoftware/smack/util/collections/MapIterator;
    :cond_4
    :try_start_0
    invoke-interface {v1}, Lorg/jivesoftware/smack/util/collections/MapIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1079
    invoke-interface {v1}, Lorg/jivesoftware/smack/util/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1080
    .local v2, key:Ljava/lang/Object;
    invoke-interface {v1}, Lorg/jivesoftware/smack/util/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1081
    .local v4, value:Ljava/lang/Object;
    if-nez v4, :cond_6

    .line 1082
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_5
    move v5, v6

    .line 1083
    goto :goto_0

    .line 1086
    :cond_6
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_4

    move v5, v6

    .line 1087
    goto :goto_0

    .line 1091
    .end local v2           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, ignored:Ljava/lang/ClassCastException;
    move v5, v6

    .line 1092
    goto :goto_0

    .line 1093
    .end local v0           #ignored:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .local v0, ignored:Ljava/lang/NullPointerException;
    move v5, v6

    .line 1094
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1109
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    if-nez p1, :cond_0

    sget-object v2, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 1110
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {p0, v1, v3}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    .line 1115
    .local v0, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_1
    if-nez v0, :cond_1

    .line 1121
    const/4 v2, 0x0

    :goto_2
    return-object v2

    .end local v0           #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .end local v1           #hashCode:I
    :cond_0
    move-object v2, p1

    .line 1109
    goto :goto_0

    .line 1116
    .restart local v0       #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .restart local v1       #hashCode:I
    :cond_1
    iget v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_2

    #getter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$2(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1117
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1119
    :cond_2
    iget-object v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 4
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
    .line 1137
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    if-nez p1, :cond_1

    sget-object v2, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 1138
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {p0, v1, v3}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    .line 1143
    .local v0, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_1
    if-nez v0, :cond_2

    .line 1149
    const/4 v0, 0x0

    .end local v0           #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :cond_0
    return-object v0

    .end local v1           #hashCode:I
    :cond_1
    move-object v2, p1

    .line 1137
    goto :goto_0

    .line 1144
    .restart local v0       #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .restart local v1       #hashCode:I
    :cond_2
    iget v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_3

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1147
    :cond_3
    iget-object v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1
.end method

.method protected hash(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 1163
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1164
    .local v0, h:I
    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 1165
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 1166
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 1167
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1168
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1178
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1179
    .local v1, total:I
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1180
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1183
    return v1

    .line 1181
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected hashIndex(II)I
    .locals 1
    .parameter "hashCode"
    .parameter "dataSize"

    .prologue
    .line 1198
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 1205
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1214
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 1230
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 1246
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
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
    .line 1258
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    .line 1259
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    .line 1261
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

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
    .line 1278
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    .line 1279
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyMapIterator;->INSTANCE:Lorg/jivesoftware/smack/util/collections/MapIterator;

    .line 1281
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1296
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    sget-object v4, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 1297
    .local v1, hashCode:I
    iget-object v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v4, v4

    invoke-virtual {p0, v1, v4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 1298
    .local v2, index:I
    iget-object v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v0, v4, v2

    .line 1299
    .local v0, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_1
    if-nez v0, :cond_1

    .line 1307
    invoke-virtual {p0, v2, v1, p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 1308
    const/4 v3, 0x0

    :goto_2
    return-object v3

    .end local v0           #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .end local v1           #hashCode:I
    .end local v2           #index:I
    :cond_0
    move-object v4, p1

    .line 1296
    goto :goto_0

    .line 1300
    .restart local v0       #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .restart local v1       #hashCode:I
    .restart local v2       #index:I
    :cond_1
    iget v4, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v1, :cond_2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1301
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1302
    .local v3, oldValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, v0, p2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->updateEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    goto :goto_2

    .line 1305
    .end local v3           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_2
    iget-object v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1324
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    .line 1325
    .local v2, mapSize:I
    if-nez v2, :cond_1

    .line 1335
    :cond_0
    return-void

    .line 1328
    :cond_1
    iget v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    iget v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 1329
    .local v3, newSize:I
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->ensureCapacity(I)V

    .line 1331
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, element:Ljava/lang/Object;
    move-object v1, v0

    .line 1332
    check-cast v1, Ljava/util/Map$Entry;

    .line 1333
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1346
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    if-nez p1, :cond_0

    sget-object v5, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v5}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 1347
    .local v1, hashCode:I
    iget-object v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v5, v5

    invoke-virtual {p0, v1, v5}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 1348
    .local v2, index:I
    iget-object v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v0, v5, v2

    .line 1349
    .local v0, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    const/4 v4, 0x0

    .line 1350
    .local v4, previous:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_1
    if-nez v0, :cond_1

    .line 1359
    const/4 v3, 0x0

    :goto_2
    return-object v3

    .end local v0           #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .end local v1           #hashCode:I
    .end local v2           #index:I
    .end local v4           #previous:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :cond_0
    move-object v5, p1

    .line 1346
    goto :goto_0

    .line 1351
    .restart local v0       #entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .restart local v1       #hashCode:I
    .restart local v2       #index:I
    .restart local v4       #previous:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    :cond_1
    iget v5, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v1, :cond_2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1352
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1353
    .local v3, oldValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, v0, v2, v4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->removeMapping(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V

    goto :goto_2

    .line 1356
    .end local v3           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_2
    move-object v4, v0

    .line 1357
    iget-object v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1
.end method

.method protected removeEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V
    .locals 2
    .parameter
    .parameter "hashIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;I",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1378
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .local p3, previous:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    if-nez p3, :cond_0

    .line 1379
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iget-object v1, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aput-object v1, v0, p2

    .line 1383
    :goto_0
    return-void

    .line 1381
    :cond_0
    iget-object v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v0, p3, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected removeMapping(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V
    .locals 1
    .parameter
    .parameter "hashIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;I",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1403
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .local p3, previous:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    .line 1404
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->removeEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V

    .line 1405
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    .line 1406
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->destroyEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V

    .line 1407
    return-void
.end method

.method protected reuseEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "hashIndex"
    .parameter "hashCode"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;IITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1428
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .local p4, key:Ljava/lang/Object;,"TK;"
    .local p5, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 1429
    iput p3, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    .line 1430
    #setter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {p1, p4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$0(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 1431
    #setter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;
    invoke-static {p1, p5}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$1(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 1432
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1441
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1451
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1452
    const-string v5, "{}"

    .line 1472
    :goto_0
    return-object v5

    .line 1454
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x20

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1455
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;

    move-result-object v2

    .line 1458
    .local v2, it:Lorg/jivesoftware/smack/util/collections/MapIterator;
    invoke-interface {v2}, Lorg/jivesoftware/smack/util/collections/MapIterator;->hasNext()Z

    move-result v1

    .line 1459
    .local v1, hasNext:Z
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1471
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1460
    :cond_2
    invoke-interface {v2}, Lorg/jivesoftware/smack/util/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1461
    .local v3, key:Ljava/lang/Object;
    invoke-interface {v2}, Lorg/jivesoftware/smack/util/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1462
    .local v4, value:Ljava/lang/Object;
    if-ne v3, p0, :cond_3

    const-string v3, "(this Map)"

    .end local v3           #key:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1463
    if-ne v4, p0, :cond_4

    const-string v4, "(this Map)"

    .end local v4           #value:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-interface {v2}, Lorg/jivesoftware/smack/util/collections/MapIterator;->hasNext()Z

    move-result v1

    .line 1466
    if-eqz v1, :cond_1

    .line 1467
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected updateEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 1488
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    .local p1, entry:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .local p2, newValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    return-void
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
    .line 1500
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    .line 1501
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    .line 1503
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    return-object v0
.end method
