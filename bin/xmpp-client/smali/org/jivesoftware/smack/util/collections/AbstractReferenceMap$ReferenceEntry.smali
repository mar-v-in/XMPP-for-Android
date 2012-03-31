.class public Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;
.super Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReferenceEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected final parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected refKey:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<TK;>;"
        }
    .end annotation
.end field

.field protected refValue:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter "hashCode"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap",
            "<TK;TV;>;",
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;ITK;TV;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntry<TK;TV;>;"
    .local p1, parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>;"
    .local p2, next:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    .local p4, key:Ljava/lang/Object;,"TK;"
    .local p5, value:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p2, p3, v0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 124
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    .line 125
    iget v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    if-eqz v0, :cond_0

    .line 126
    iget v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    invoke-virtual {p0, v0, p4, p3}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/ref/Reference;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->refKey:Ljava/lang/ref/Reference;

    .line 130
    :goto_0
    iget v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    if-eqz v0, :cond_1

    .line 131
    iget v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    invoke-virtual {p0, v0, p5, p3}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/ref/Reference;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->refValue:Ljava/lang/ref/Reference;

    .line 141
    :goto_1
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, p4}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->setKey(Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0, p5}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntry<TK;TV;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 155
    if-ne p1, p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v3

    .line 158
    :cond_1
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-nez v5, :cond_2

    move v3, v4

    .line 159
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 162
    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 164
    .local v1, entryKey:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 166
    .local v2, entryValue:Ljava/lang/Object;
    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move v3, v4

    .line 167
    goto :goto_0

    .line 171
    :cond_4
    iget-object v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 172
    iget-object v5, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    .line 171
    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->refKey:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->refValue:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 195
    :cond_0
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 207
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected next()Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    check-cast v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method purge(Ljava/lang/ref/Reference;)Z
    .locals 4
    .parameter "ref"

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntry<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget v3, v3, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    if-lez v3, :cond_3

    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->refKey:Ljava/lang/ref/Reference;

    if-ne v3, p1, :cond_3

    move v0, v2

    .line 228
    .local v0, r:Z
    :goto_0
    if-nez v0, :cond_4

    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget v3, v3, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->refValue:Ljava/lang/ref/Reference;

    if-eq v3, p1, :cond_4

    :cond_0
    move v0, v1

    .line 229
    :goto_1
    if-eqz v0, :cond_2

    .line 230
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget v1, v1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    if-lez v1, :cond_1

    .line 231
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->refKey:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 233
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget v1, v1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    if-lez v1, :cond_5

    .line 234
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->refValue:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 239
    :cond_2
    :goto_2
    return v0

    .end local v0           #r:Z
    :cond_3
    move v0, v1

    .line 227
    goto :goto_0

    .restart local v0       #r:Z
    :cond_4
    move v0, v2

    .line 228
    goto :goto_1

    .line 235
    :cond_5
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget-boolean v1, v1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeValues:Z

    if-eqz v1, :cond_2

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntry<TK;TV;>;"
    .local p1, obj:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, old:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget v1, v1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    if-lez v1, :cond_0

    .line 253
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->refValue:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 254
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    iget v1, v1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    iget v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->hashCode:I

    invoke-virtual {p0, v1, p1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/ref/Reference;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->refValue:Ljava/lang/ref/Reference;

    .line 258
    :goto_0
    return-object v0

    .line 256
    :cond_0
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected toReference(ILjava/lang/Object;I)Ljava/lang/ref/Reference;
    .locals 2
    .parameter "type"
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;I)",
            "Ljava/lang/ref/Reference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap<TK;TV;>.ReferenceEntry<TK;TV;>;"
    .local p2, referent:Ljava/lang/Object;,"TT;"
    packed-switch p1, :pswitch_data_0

    .line 281
    new-instance v0, Ljava/lang/Error;

    .line 282
    const-string v1, "Attempt to create hard reference in ReferenceMap!"

    .line 281
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :pswitch_0
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$SoftRef;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    #getter for: Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->access$0(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, p2, v1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$SoftRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 279
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$WeakRef;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;

    #getter for: Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->access$0(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, p2, v1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$WeakRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
