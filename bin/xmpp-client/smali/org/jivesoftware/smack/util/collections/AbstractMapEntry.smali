.class public abstract Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;
.super Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;
.source "AbstractMapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractKeyValue",
        "<TK;TV;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractMapEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractMapEntry<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_2

    move v1, v2

    .line 63
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 65
    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    .local v0, other:Ljava/util/Map$Entry;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 68
    :goto_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 66
    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 68
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 83
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 82
    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractMapEntry<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->value:Ljava/lang/Object;

    .line 101
    .local v0, answer:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->value:Ljava/lang/Object;

    .line 102
    return-object v0
.end method
